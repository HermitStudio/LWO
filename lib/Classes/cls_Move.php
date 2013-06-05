<?php

/***************************************************************************
 *                                cls_Move.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of game turn/move data from the DB for a new turn 
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class Move{

	/* Variable Listing 
	$this-> */
	var $nManuever_ID = 0;
	var $strCategory = "";
	var $strName = "";
	var $nArchetype_ID = 0;
	var $nBlock = 0;
	var $strColour = "";
	var $nPG = 0;
	var $nPG_X = 0;
	var $nMod = 0;
	var $nModSpecial = 0;
	var $nModSpecialState_ID = 0;
	var $bIsExtended = false;
	var $bIsNull = false;
	var $strPlayerType = ""; 	// is this move for the game owner? (P1 = owner, P2 = challenger)
	var $nScoreTotal = 0;
	var $nGame_ID = 0;
	var $nExperience = 0;
	var $nTurn_ID = 0;
	
	/* Object List 
	GT = Game Turn - e.g. generated at the end of the last turn (when this script was last called) */
	var $objDataSource;
	
	var $objGTScoreMods; 
	var $objGTStates;
	var $objGTConds;	// must be public when convereted to php5
	var $objResult; 
	
	/* Constructor 
	$objDataSource is a Data Source Manager Object for handling queries */
	function Move($nMoveID, $nGameID, $nTurnID, $strPlayerNo, $nCharacterID)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
 		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		
		// Set the Manouever ID given
		$this->nManuever_ID = $nMoveID;
		
		// Indicate what kind of player the user is (p1 = owner, p2 = challenger)
		$this->strPlayerType = $strPlayerNo;
		
		// Default is that no score is on a page, only if a score is found does it change to a digit
		$this->nScoreTotal = 0;
		
		$this->nGame_ID = $nGameID;
		
		$this->nTurn_ID = $nTurnID;
		
		$this->nExperience = 0;
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		///////////////////////////////////////////////////////////////////////////////////////////////////
		
		// Get the Manouever Information Required for the PLAYER: Category, Name, Archetype_ID, Block, Colour, PG, PG_X, Mod, ModSpecial, ModSpecialState_ID, IsExtended, IsNull
		$strSQL = "SELECT Category, Name, Archetype_ID, Block, Colour, PG, PG_X, Mod, ModSpecial, ModSpecialState_ID, IsExtended, IsNull FROM Manuevers WHERE ID = " . $this->nManuever_ID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->strCategory = $arrSQLData[0];
			$this->strName = $arrSQLData[1];
			$this->nArchetype_ID = $arrSQLData[2];
			$this->nBlock = $arrSQLData[3];
			$this->strColour = $arrSQLData[4];
			$this->nPG = $arrSQLData[5];
			$this->nPG_X = $arrSQLData[6];
			$this->nMod = $arrSQLData[7];
			$this->nModSpecial = $arrSQLData[8];
			$this->nModSpecialState_ID = $arrSQLData[9];
			$this->bIsExtended = $arrSQLData[10];
			$this->bIsNull = $arrSQLData[11];
			
			// Check Manoeuver is not NULL Block! - ie invalid move
			if ($this->bIsNull != '0')
			{
				exit();
			}
		}
		else
		{ 
			// Exit script as query failed 
			exit();
		}
		
		// Get the Manouever Experiance Modifers Required for PLAYER (For this move only!): Experience
		$strSQL = "SELECT Experience FROM CharacterExperience WHERE Block = " . $this->nBlock . " AND Colour = '" . $this->strColour . "' AND Characters_ID  = " . $this->nCharacterID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check first to see if there are any experiance modified records available for this move 
		// (as this isn't an exit offence!) ...check to see if any other of these need checks before them
		if ($arrSQLResults)
		{
			if (mysql_num_rows($arrSQLResults)!=0)
			{
				// Check to see if query returned
				if ($this->objDataSource->ValidateQuery($arrSQLResults))
				{
					// Pull the DB Data into script variables for later use
					$arrSQLData = mysql_fetch_row($arrSQLResults);
					$this->nExperience = $arrSQLData[0];
				}
				else
				{ 
					// Exit script as query failed 
					exit();
				}
			}
		}
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */	  	
	
	function CheckHealthMod($bPlayerOnScore, $bPlayerOnDamage)
	{
		// return any state health modification detected this turn
		return ($this->objGTStates->CheckHealthMod($bPlayerOnScore, $bPlayerOnDamage));
	}
	
	function CalculateScore()
	{
		// Get the result page score 	
		$this->nPageScore = $this->GetPageScore();
	
		// If no page score found then reguardless of any other mods, no damage was done
		if ($this->nPageScore == null)
		{
			return (0); 
		}
		
		// Otherwise we can add this page score to the players scoring total
		$this->nScoreTotal = $this->nScoreTotal + $this->nPageScore;	
		
		// Get the move's base score modifer since a result score was found
		//... what about PGX ???? - is it the move mod used if in ER?
		$this->nScoreTotal = $this->nScoreTotal + $this->nMod;
		
		// Add character move expriance to the total     
		$this->nScoreTotal = $this->nScoreTotal + $this->nExperience;
		
		// Get the grand total of all score modifers that apply to this turn
		$this->nScoreModTotal = $this->objGTScoreMods->CalculateModTotal($this);
		
		// Only add the score mod total if anything was returned
		if ($this->nScoreModTotal != null)
		{
			$this->nScoreTotal = $this->nScoreTotal + $this->nScoreModTotal;
		}
		
		return ($this->nScoreTotal);
	}
	
	// former CheckHeightMod (in case i didn't update it elsewhere)
	function CheckStateHeightMod($bPlayerOnScore, $bPlayerOnDamage)
	{
		$nModDiff = $this->objGTStates->CheckStateHeightMod($bPlayerOnScore, $bPlayerOnDamage);
		
		// Check to see if the height was modified in turn
		if ($nModDiff != 0)
		{
			// check to see if this move was red or orange
			if ($this->strColour == "Orange" || $this->strColour == "Red")
			{		
				// if so adjust score difference and return new height mod
				$this->nScoreTotal = $this->nScoreTotal + $nModDiff;
			}
		}
		
		return ($nModDiff);
	}
	
	//...???
	function EnactGTStatesCode($bPlayerOnScore, $bPlayerOnDamage)
	{
		$this->objGTStates->EnactGTStatesCode($bPlayerOnScore, $bPlayerOnDamage);
	}
	
	function GatherMoveData()
	{
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Object Creation 
		GT = Game Turn - e.g. generated at the end of the last turn (when this script was last called) */
		$this->objGTStates = new States($this->nGame_ID, $this->strPlayerType);
		
		$this->objGTScoreMods = new ScoreMods($this->nGame_ID, $this->strPlayerType); 
		
		$this->objGTConds = new Conditions($this->nGame_ID); 
		
		// Gather the conditions for the score mods so we can check to see if they are valid later
		$this->objGTConds->GatherModConds($this->objGTScoreMods->GetScoreModArray(),$this->objGTScoreMods->GetNoMods());
		
	}
	
	function GatherNextTurnsList($bPlayerOnScore, $bPlayerOnDamage, $nOpponentResultID, $bIsFirstTurn)
	{
		////////// DO STATES PROCESSING ////////////////////////////////////////////////////////////////////////
		
		// If its the first rurn we don't need to amend duration and remove expired states
		if ($bIsFirstTurn == False)
		{
			// Update the duration of current states in master Game Turn states list (except perminant!)
			$strSQL = "UPDATE GameTurns_SpecialStates SET Duration = (Duration - 1) WHERE Game_ID = " . $this->nGame_ID . " AND Duration != -1 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
			
			// Remove all states for current turn (n) with duration of 0 
			// (-1 = perminate and stays, 1 or above still valid for next turn)
			$strSQL = "DELETE FROM GameTurns_SpecialStates WHERE Game_ID = " . $this->nGame_ID . " AND Duration = 0 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		}
		
		// Get the RESULT STATES from the DB (REMEMBER OPPONENT HAS YOUR STATES DATA)
		// SWAP by using your opponets result ID instead of the players result id
		$this->objGTStates->GatherResultStates($nOpponentResultID, $this->objResult->GetValidRedirectStatesArray(), $this->objResult->GetNoRedirectStates());
		
		// Check to see if conditions are avilable for an ESCAPE and add the state if necessary
		$this->objGTStates->CheckEscape($this->GetResultID(), $this->nTurn_ID);
		
		// Then check to see if these states are valid before putting into the game turns table 
		// (on score/on damage)
		$this->objGTStates->ExtractValidResultStates($bPlayerOnScore, $bPlayerOnDamage, $this->strPlayerType);
		
		// Now all the states in the GT table are gathered, check entire record set for counteractors
		$this->objGTStates->RunCounteractors($bPlayerOnScore, $bPlayerOnDamage);
		
		// ADD ITEMS STATES HERE WHEN IMPLEMENT ITEMS...
		
		////////// DO CONDITIONS PROCESSING ////////////////////////////////////////////////////////////////////
		
		// If its the first rurn we don't need to amend duration and remove expired conditions
		if ($bIsFirstTurn == False)
		{
			// Update the duration of current conditions in master Game Turn conds list (except perminant!)
			$strSQL = "UPDATE GameTurns_Conditions SET Duration = (Duration - 1) WHERE Game_ID = " . $this->nGame_ID . " AND Duration != -1 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
			
			// Remove all conds for current turn (n) with duration of 0 
			// (-1 = perminate and stays, 1 or above still valid for next turn)
			$strSQL = "DELETE FROM GameTurns_Conditions WHERE Game_ID = " . $this->nGame_ID . " AND Duration = 0 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		}

		// Get the RESULT CONDITIONS from the DB (REMEMBER OPPONENT HAS YOUR CONDS DATA)
		// SWAP by using your opponets result ID instead of the players result id
		$this->objGTConds->GatherResultConds($nOpponentResultID);
		
		// Then check to see if these conds are valid before putting into the game turns table 
		// (on score/on damage)
		$this->objGTConds->ExtractValidResultConds($bPlayerOnScore, $bPlayerOnDamage, $this->strPlayerType);
		

		// Get the STATE CONDITIONS from the DB (REMEMBER OPPONENT HAS YOUR CONDS DATA)
		// SWAP by using your opponets result ID instead of the players result id
		$this->objGTConds->GatherStateConds($nOpponentResultID);
		
		// Then check to see if these mods are valid before putting into the game turns table 
		// (on score/on damage)
		$this->objGTConds->ExtractValidStateConds($bPlayerOnScore, $bPlayerOnDamage, $this->strPlayerType);	

		// ADD ITEMS CONDITIONS HERE WHEN IMPLEMENT ITEMS...
		
		/////////// DO SCORE MODS PROCESSING ////////////////////////////////////////////////////////////////////

		// If its the first rurn we don't need to amend duration and remove expired score mods
		if ($bIsFirstTurn == False)
		{
			// Update the duration of current score mods in master Game Turn mod list (except perminant!)
			$strSQL = "UPDATE GameTurns_ScoreMods SET Duration = (Duration - 1) WHERE Game_ID = " . $this->nGame_ID . " AND Duration != -1 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
			
			// Remove all mods for current turn (n) with duration of 0 
			// (-1 = perminate and stays, 1 or above still valid for next turn)
			$strSQL = "DELETE FROM GameTurns_ScoreMods WHERE Game_ID = " . $this->nGame_ID . " AND Duration = 0 AND Player ='" . $this->strPlayerType . "';";
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		}

		// Get the RESULT SCORE MODS from the DB (REMEMBER OPPONENT HAS YOUR MODS DATA)
		// SWAP by using your opponets result ID instead of the players result id
		$this->objGTScoreMods->GatherResultMods($nOpponentResultID);
		
		// Then check to see if these mods are valid before putting into the game turns table 
		// (on score/on damage)
		$this->objGTScoreMods->ExtractValidResultMods($bPlayerOnScore, $bPlayerOnDamage, $this->strPlayerType);
		
		
		// Get the STATE SCORE MODS from the DB (REMEMBER OPPONENT HAS YOUR MODS DATA)
		// SWAP by using your opponets result ID instead of the players result id
		$this->objGTScoreMods->GatherStateMods($nOpponentResultID);
		
		// Then check to see if these mods are valid before putting into the game turns table 
		// (on score/on damage)
		$this->objGTScoreMods->ExtractValidStateMods($bPlayerOnScore, $bPlayerOnDamage, $this->strPlayerType);	
		
		// ADD ITEMS SCORE MODS HERE WHEN IMPLEMENT ITEMS...
	}

	function GatherResultData($nOppArchetypeID, $nOpponentPG, $nPlayerPG)
	{
		$this->objResult = new Results($nOppArchetypeID, $nPlayerPG, $nOpponentPG);	
	}

	function GatherRedirectData($objOppResults, $nOppArchetypeID, $bPlayerOnScore, $bPlayerOnDamage)
	{
		// NOTE: MUST BE CALLED AFTER GATHER RESULT DATA, OTHERWISE RESULT OBJECT NOT SET!
		$this->objResult->GatherRedirectData($this->objGTStates, $objOppResults, $nOppArchetypeID, $bPlayerOnScore, $bPlayerOnDamage);
	}

	function GetArchetypeID()
	{
		return ($this->nArchetype_ID);
	}
	
	function GetCategory()
	{
		return ($this->strCategory);
	}
	
	function GetColour()
	{
		return ($this->strColour);
	}
	
	function GetLastResultChecked()
	{
		return ($this->objResult->GetLastResultChecked());
	}
	
	function GetName()
	{
		return ($this->strName);
	}
	
	function GetNewGfx()
	{
		return ($this->objResult->GetNewGfx());
	}
	
	function GetOddPage()
	{
		return ($this->objResult->GetOddPage());
	}
	
	function GetPageScore()
	{
		return ($this->objResult->GetPageScore());
	}
	
	function GetPG()
	{
		return ($this->nPG);
	}
	
	function GetResults()
	{
		return ($this->objResult);
	}
	
	function GetResultID()
	{
		return ($this->objResult->GetResultID());
	}
	
	function GetScoreTotal()
	{
		return ($this->nScoreTotal);
	}
	
	function GetStates()
	{
		return ($this->objGTStates);
	}
	
	function SetupRedirect()
	{
		$this->objResult->SetupRedirect();
	}
}

?>
