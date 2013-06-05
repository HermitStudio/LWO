<?php

/***************************************************************************
 *                                cls_Player.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of player data from the DB for a new turn/game 
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class Player{

	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Variable Listing 
	$this-> */
	var $nHP = 0;	
	var $nStartingHP = 0;
	var $nStartingHeight = 0;	
	var $nHeight = 0;		
	var $nCharacter_ID = 0;	
	var $nArchetype_ID = 0;
	var $strPlayerType = "";		// P1 = Game Owner/Creater - P2 = Game Challenger (Joins Open Game)
	var $nHeightMod = 0;
	var $bOnDamage = false;
	var $bOnScore = false;
	var $nExperianceEarned = 0;
	var $nMoveID = Null;
	
	/* Object List */
	var $objDataSource;
	var $objCurrentMove;  		// <--- will need to update this each turn!
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Constructor */
	function Player($nGameID, $nTurnID, $strPlayerNo)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		//echo "plc: 1, ";
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		
		// Indicate what kind of player the user is (p1 = owner, p2 = challenger)
		$this->strPlayerType = $strPlayerNo;
		$this->nScoreTotal = 0;
		$this->bOnDamage = False;
		$this->bOnScore = False;
		$this->nExperianceEarned = 0;
	
		$this->nMoveID = Null;

		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		//echo "plc: 2, ";
		///////////////////////////////////////////////////////////////////////////////////////////////////////////
		/* Pull Data from the DB */		
			
		// Amend the Query based on if we need to pull Player 1 or 2 data:
		if ($this->strPlayerType == "P1")
		{
			//echo "plc: 3, ";
			// Get the Game and Turn Information Required: P1_HP, P1_Manuever_ID, P1_Character_ID, P1_Height
			$strSQL = "SELECT Games.P1_Character_ID, GameTurns.P1_HP, GameTurns.P1_Manuever_ID, GameTurns.P1_Height FROM GameTurns INNER JOIN Games ON GameTurns.Game_ID = Games.ID WHERE GameTurns.ID = " . $nTurnID . " AND GameTurns.Game_ID = " . $nGameID . ";";
		}
		elseif ($this->strPlayerType == "P2")
		{
			//echo "plc: 4, ";
			// Get the Game and Turn Information Required: P2_HP, P2_Manuever_ID, P2_Character_ID, P2_Height
			$strSQL = "SELECT Games.P2_Character_ID, GameTurns.P2_HP, GameTurns.P2_Manuever_ID, GameTurns.P2_Height FROM GameTurns INNER JOIN Games ON GameTurns.Game_ID = Games.ID WHERE GameTurns.ID = " . $nTurnID . " AND GameTurns.Game_ID = " . $nGameID . ";";
		}
		else
		{
			//echo "plc: 5, ";
			// Invalid player type so must exit script
			exit();
		}
		
		// Otherwise it's a valid query and can execute it
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			//echo "plc: 6, ";
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);	
			$this->nCharacter_ID = $arrSQLData[0];
			$this->nHP = $arrSQLData[1];
			$this->nMoveID = $arrSQLData[2];
			$this->nHeight = $arrSQLData[3];	
		}
		else
		{ 
			//echo "plc: 7, ";
			// Exit script as query failed 
			exit();
		}
		
		// Get the Character Information Required for PLAYER: ModHP
		$strSQL = "SELECT Characters.Archetype_ID, Characters.ModHP, Archetypes.Health, Archetypes.Height FROM Characters INNER JOIN Archetypes ON Characters.Archetype_ID = Archetypes.ID WHERE Characters.ID = " . $this->nCharacter_ID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			//echo "plc: 8, ";
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nArchetype_ID = $arrSQLData[0];
			$this->nStartingHP =  $arrSQLData[1] + $arrSQLData[2];
			$this->nStartingHeight =  $arrSQLData[3];
		}
		else
		{
			//echo "plc: 9, ";
			// Exit script as query failed
			exit();
		}
		
		switch(StripZeroFill($this->nArchetype_ID))
		{
			// LIZARD MAN
			case 3:
				//echo "plc: 10, ";
				 // Move Object Creation - now we have the Move ID 
				$this->objCurrentMove = new Move_LizardMan($this->nMoveID, $nGameID, $nTurnID, $this->strPlayerType, $this->nCharacter_ID); 
				 break;
			
			// SAMURAI
			case 5:
				//echo "plc: 11, ";
				// Move Object Creation - now we have the Move ID 
				$this->objCurrentMove = new Move_Samurai($this->nMoveID, $nGameID, $nTurnID, $this->strPlayerType, $this->nCharacter_ID); 
				break;
				
			// EVERYTHING ELSE
			default:
				//echo "plc: 12, ";
				// Move Object Creation - now we have the Move ID 
				$this->objCurrentMove = new Move($this->nMoveID, $nGameID, $nTurnID, $this->strPlayerType, $this->nCharacter_ID); 
				break;
		}
		//echo "plc: 13, ";
		// Set up the other objects contained in the move (polymorphic, dependant on which object was created)	
		$this->objCurrentMove->GatherMoveData();
		//echo "plc: 14, ";
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Destructor */
	//None
			  
	///////////////////////////////////////////////////////////////////////////////////////////////////////////			  
	/* Methods */
	
	function Aborted()
	{
			
	}
	
	// Calculate a players score against an opponent (ie their opponent's damamge)
	function CalculateScore()
	{
		// Check a score was found on this result page
		if ($this->GetPageScore() > 0)
		{			
			// Since a score as found then add the Move and Score modifers to get the total
			if ($this->objCurrentMove->CalculateScore() > 0)
			{
				// If a score was found then indicate the player has scored
				$this->bOnScore = true;
			}
			else
			{
				// otherwise no score was acheived this turn so indiacte that
				$this->bOnScore = false;
			}
				
		}
		else
		{
			// Indicate thre was no score found on this result page
			return (null);
		}
	}
	
	function EnactStates()
	{
		// Check to see if the character height was modifed and if the score for red/orange moves new.
		// and modify the height of character. (0 returned if no mods)
		$this->nHeightMod = $this->nHeightMod + $this->objCurrentMove->CheckStateHeightMod($this->bOnScore, $this->bOnDamage);
		
		// Adjust characters height, since it has been altered by the states
		$this->nHeight = $this->nHeight + $this->nHeightMod;
		
		// Check for health modification and if so, amend the players current health (0 return if no mods)
		$this->nHP = $this->nHP + $this->objCurrentMove->CheckHealthMod($this->bOnScore, $this->bOnDamage);
		
		//... ADD SPECIAL STATES UNIQUE ENACTMENT CODE (would this be in states class?)
		
		//$this->$objCurrentMove.EnactGTStatesCode($this->$bOnScore, $this->$bOnDamage);
	}
	
	function GatherNextTurnsList($nOpponentResultID, $bIsFirstTurn)
	{
		$this->objCurrentMove->GatherNextTurnsList($this->bOnScore, $this->bOnDamage, $nOpponentResultID, $bIsFirstTurn);
	}

	function GatherResultData($nOppArchetypeID, $nOpponentPG)
	{
		$this->objCurrentMove->GatherResultData($nOppArchetypeID, $nOpponentPG, $this->objCurrentMove->GetPG());
		//$this->objCurrentMove->GatherResultData($this->nArchetype_ID, $nOpponentPG, $this->objCurrentMove->GetPG());
	}

	function GatherRedirectData($objOppResults, $nOppArchetypeID)
	{
		// NOTE: MUST BE CALLED AFTER GATHER RESULT DATA, OTHERWISE RESULT OBJECT NOT SET!
		$this->objCurrentMove->GatherRedirectData($objOppResults, $nOppArchetypeID, $this->bOnScore, $this->bOnDamage);
	}

	function GetArchetypeID()
	{
		return ($this->objCurrentMove->GetArchetypeID());
	}
	
	function GetCharacterID()
	{
		return ($this->nCharacter_ID);
	}
	
	function GetExperianceEarned()
	{
		return ($this->nExperianceEarned);
	}

	function GetGameOverStatus()
	{
		// If you didn't die of become unconscious then you are the winner by default!
		$strGameResult = "WINNER";
		
		// Check to see limits of the health of player when game finished
		if ($this->nHP <= 0 && $this->nHP > -5)
		{
			// Not dead if between 0 and -4 but just unconscious and can start new game afresh
			$strGameResult = "UNCONSCIOUS";
		}
		
		if ($this->nHP <= -5)
		{
			// if however you were hit worse than that then your character died and this may mean
			// you lose items and experiance etc (depending on how we want to set it up)
			$strGameResult = "DEAD";
		}
		
		return ($strGameResult);
	}

	function GetHealth()
	{
		return ($this->nHP);
	}
	
	function GetHeight()
	{
		return ($this->nHeight);
	}
	
	function GetHeightMod()
	{
		return ($this->nHeightMod);
	}

	function GetLastResultChecked()
	{
		return ($this->objCurrentMove->GetLastResultChecked());
	}

	function GetMoveID()
	{
		return ($this->nMoveID);
	}

	function GetNewGfx()
	{
		return ($this->objCurrentMove->GetNewGfx());
	}

	function GetOddPage()
	{
		return ($this->objCurrentMove->GetOddPage());
	}

	function GetPageScore()
	{
		return ($this->objCurrentMove->GetPageScore());
	}
	
	//... ???
	function GetPG()
	{
		return ($this->objCurrentMove->GetPG());
	}

	function GetResults()
	{
		return ($this->objCurrentMove->GetResults());
	}

	function GetResultID()
	{
		return ($this->objCurrentMove->GetResultID());
	}

	function GetScoreTotal()
	{
		// return the total score of the player on the current turn (ONLY CALL AFTER CALULATED RESULT!)
		return ($this->objCurrentMove->GetScoreTotal());
	}

	function GetStartingHP()
	{
		return ($this->nStartingHP);
	}
	
	function GetStates()
	{
		return ($this->objCurrentMove->GetStates());
	}
	
	function InflictDamage($nOpponentScore)
	{
		// If you opponents score was above 0 then you are HIT/DAMAGED! + modify your health accordingly	
		if ($nOpponentScore > 0)
		{
			$this->nHP = $this->nHP - $nOpponentScore;
			$this->bOnDamage = true;
		}
		else
		{
			$this->bOnDamage = false;
		}
			
	}
	
	function LostGame()
	{
			
	}
	
	function SetExperianceEarned($nEXPoints)
	{
		$this->nExperianceEarned = $nEXPoints;
	}
	
	function SetupRedirect()
	{
		$this->objCurrentMove->SetupRedirect();
	}
	
	function WonGame()
	{
			
	}	
}

?>