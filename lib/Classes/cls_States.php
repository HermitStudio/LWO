<?php

/***************************************************************************
 *                                cls_States.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of special states data from the DB for a new turn/game
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class States{

	/* Variable Listing 
	$this-> */
	var $strPlayerType = "";
	var $nNoStates = 0;
	var $nNoResultStates = 0;
	var $nNoCounteractors = 0;
	var $nGame_ID = 0;
	
	// KEY: nID, nSpecialStates_ID, nDuration
	var $arrGTSpecialStates = array();
	
	// KEYS: nID, nHeight_Mod, nP1_HP_Mod, nP2_HP_Mod, strName, nDuration
	var $arrSpecialStates = array();
	
	// KEYS: nID, nHeight_Mod, nP1_HP_Mod, nP2_HP_Mod, strName, nDuration
	var $arrResultStates = array(); 
	
	// KEYS: nID, nSpecialStates_ID, nRemoves_SpecialStates_ID, bOnScore, bOnDamage
	var $arrCounteractors = array();
	
	/* Object List */
	var $objDataSource;
	
	/* Constructor */
	function States($nGameID, $strPlayerNo)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate class variables */
		$this->strPlayerType = $strPlayerNo;
		$this->nNoStates = 0;
		$this->nNoResultStates = 0;
		$this->nNoCounteractors = 0;
		$this->nGame_ID = $nGameID;
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate DB Data Arrays */
		
		// Get all the General Special States Required
		$this->GatherGTStates();
		
		// Check there were score mods found and if so then collect the data from the DB
		if ($this->nNoStates > 0)
		{
			// Get all the Score Mods Data Required: Value, Description, Conditions_ID
			$strSQL = "SELECT ID, Height_Mod, P1_HP_Mod, P2_HP_Mod, Name WHERE ";
			
			// Loop through all the ID's and add them to the SQL string
			for ( $nStateRow=0 ;$nStateRow <= $this->nNoStates ; $nStateRow++ )
			{
				if ($nStateRow==0)
				{ 
					// If first row we dont need any OR at the beginning
					$strSQL = $strSQL . "ID = " . $this->arrGTSpecialStates[$nStateRow]["nSpecialStates_ID"] . " "; 
				}
				elseif ($nStateRow==$this->nNoStates)
				{
					// If last row then end the query with a ';'
					$strSQL = $strSQL . "OR ID = " . $this->arrGTSpecialStates[$nStateRow]["nSpecialStates_ID"] . ";"; 
				}
				else 
				{ 
					// Otherwise just use the OR and keep a space at the end of the line
					$strSQL = $strSQL . "OR ID = " . $this->arrGTSpecialStates[$nStateRow]["nSpecialStates_ID"] . " "; 
				}
			}
			
			// Query the DB for all the score mods
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		
			// Check to see if query returned (unsure how many records maybe returned)
			if ($this->objDataSource->ValidateQuery($arrSQLResults))
			{
				$nElement=0;
				
				while ($arrSQLData = mysql_fetch_row($arrSQLResults))
				{
					$this->arrSpecialStates[$nElement]["nID"] = $arrSQLData[0];
					$this->arrSpecialStates[$nElement]["nHeight_Mod"] = $arrSQLData[1];
					$this->arrSpecialStates[$nElement]["nP1_HP_Mod"] = $arrSQLData[2];
					$this->arrSpecialStates[$nElement]["nP2_HP_Mod"] = $arrSQLData[3];
					$this->arrSpecialStates[$nElement]["strName"] = $arrSQLData[4];
					$nElement++;
				}
			}
		}
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */
	
	function CheckEscape($nCurrentResultID, $nTurnID)
	{
		// Check to see if the current result is one where escaping is allowed
		$strSQL = "SELECT Results.Name FROM Results INNER JOIN Results_SpecialStates ON Results.ID = Results_SpecialStates.Results_ID WHERE Results.ID = " . $nCurrentResultID . " AND (Results.Odd_Page = 57 OR Results.Name LIKE '%Extended Range Dodging%' OR Results.Name LIKE '%Extended Range Jumping Away%');";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// if so then check to see if the last turn was one where escaping FROM is allowed
			if ($this->strPlayerType == "P1")
			{
				$strSQL = "SELECT Results.Odd_Page FROM GameTurns INNER JOIN Results ON GameTurns.P1_Result_ID = Results.ID WHERE GameID = " . $this->nGame_ID . " AND NextGameTurn_ID = " . $nTurnID . " AND (Results.Odd_Page = 21 OR Results.Odd_Page = 23 OR Results.Name LIKE '%Extended Range%');";
			}
			else
			{
				$strSQL = "SELECT Results.Odd_Page FROM GameTurns INNER JOIN Results ON GameTurns.P2_Result_ID = Results.ID WHERE GameID = " . $this->nGame_ID . " AND NextGameTurn_ID = " . $nTurnID . " AND (Results.Odd_Page = 21 OR Results.Odd_Page = 23 OR Results.Name LIKE '%Extended Range%');";
			}
			
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		
			// If both these conditions are meet then an ESCAPE STATE must be present for the frontend to handle
			if ($this->objDataSource->ValidateQuery($arrSQLResults))
			{
				// add the escape state to the states array for later extraction into the DB
				$this->nNoResultStates++;
				$this->arrResultStates[$this->nNoResultStates]["nID"] = Null;
				$this->arrResultStates[$this->nNoResultStates]["nSpecialStates_ID"] = '0000000015';
				$this->arrResultStates[$this->nNoResultStates]["bOnScore"] = 0;
				$this->arrResultStates[$this->nNoResultStates]["bOnDamage"] = 0;
				$this->arrResultStates[$this->nNoResultStates]["nDuration"] = 1;
				$this->arrResultStates[$this->nNoResultStates]["nCumulative"] = 0;
				$this->arrResultStates[$this->nNoResultStates]["bIsValid"] = True;
				
				//... check with how gather result states ends the number incremental process, and see if this is needed
				$this->nNoResultStates++;
			}
		}
		
	}
	
	function CheckHealthMod($bPlayerOnScore, $bPlayerOnDamage)
	{
		$nTotalHealthMod = 0;
	
		// loop through all special states present this turn to check for mod change
		for ( $nStateRow = 0; $nStateRow <= $this->nNoStates; $nStateRow++ )
		{
			// Check to see if onScore/onDamamge flags are valid
			if(CheckOnScore($this->arrGTSpecialStates[$nStateRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->arrGTSpecialStates[$nStateRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// if health was modifed then add it to the total (to be returned later)
				if ($this->arrGTSpecialStates[$nStateRow]["nHeight_Mod"] != 0)
				{
					// Check to see which player has a modification
					if ($this->strPlayerType == "P1")
					{
						$nTotalHealthMod = $nTotalHealthMod + $this->arrGTSpecialStates[$nStateRow]["nP1_HP_Mod"];
					}
					else
					{
						$nTotalHealthMod = $nTotalHealthMod + $this->arrGTSpecialStates[$nStateRow]["nP2_HP_Mod"];
					}
					//... add code to amend both players at once, because P1 state could modify P2 health (opponent damamge)
					// for now this isn't needed as the data doesn't use this yet - but may have to add it at some point
				}
			}
		}
		
		return ($nTotalHealthMod);
	}
	
	function CheckStateHeightMod($bPlayerOnScore, $bPlayerOnDamage)
	{
		$nTotalHeightMod = 0;
	
		// loop through all special states present this turn to check for a mod change
		for ( $nStateRow = 0; $nStateRow <= $this->nNoStates; $nStateRow++ )
		{
			// Check to see if onScore/onDamamge flags are valid
			if(CheckOnScore($this->arrGTSpecialStates[$nStateRow]["bOnScore"],$bPlayerOnScore) && CheckOnDamage($this->arrGTSpecialStates[$nStateRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// if height was modifed then add it to the total (to be returned later)
				if ($this->arrGTSpecialStates[$nStateRow]["nHeight_Mod"] != 0)
				{
					$nTotalHeightMod = $nTotalHeightMod + $this->arrGTSpecialStates[$nStateRow]["nHeight_Mod"];
				}
			}
		}
		
		return ($nTotalHeightMod);
	}	
	
	//...???
	function EnactGTStatesCode($bPlayerOnScore, $bPlayerOnDamage)
	{
		// Loop through all current turn's states to see if they are valid and enact code if so
		for ( $nGTSRow=0; $nGTSRow <= $this->nNoResultStates ; $nGTSRow++ )
		{
			// Check to see if onScore/onDamamge flags are valid - do we really need this?...
			if(CheckOnScore($this->arrGTSpecialStates[$nGTSRow]["bOnScore"],$bPlayerOnScore) && CheckOnDamage($this->arrGTSpecialStates[$nGTSRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// Go through each state and execute any special code attached to the state...
				switch($this->arrGTSpecialStates[$nGTSRow]["nSpecialStates_ID"])
				{
					case 1: // Weapon Dislodged:
						break;
						
					case 2: // Weapon Retrieved:
						break;
						
					case 3: // Shield Smashed:
						break;
						
					case 4: // Weapon Broken:
						break;
						
					case 5: // Adrenaline:
						break;
						
					case 6: // End Adrenaline:
						break;
						
					case 7: // No Helm:
						break;
						
					case 8: // Helm Split:
						break;
						
					case 9: // Restore 1 Body Point:
						
						break;
						
					case 10: // Pushed Off Balance:
						break;
						
					case 11: // Dodge:
						break;
						
					case 12: // Cumulative -2 to All:
						break;
						
					case 13: // Extended Range:
						break;
						
					case 14: // No Extended Range:
						break;
						
					case 15: // Escape... (add state to db inc join tbls)
						break;	
					
					// ADD NEW STATES HERE AS ENTER THEM IN DB	
					default:
					
						//exit script because this is an invalid state and there is data coruption
						exit();
						break;
				}
					
			}
		}
	}
	
	function ExtractValidResultStates($bPlayerOnScore, $bPlayerOnDamage, $strPlayerNo)
	{
		// Run state Counteractors and remove related states (only last turn's states)
		// (remove from next turns GT array before inserting into the DB)
		$this->RunResultCounteractors();
		
		// Loop through all result states to see if they are valid and insert them if they are
		for ( $nGTSRow=0; $nGTSRow <= $this->nNoResultStates ; $nGTSRow++ )
		{	
			// Check to see if array element valid (as may have been made invalid by counteractor)
			if ($this->arrResultStates[$nGTSRow]["bIsValid"] == True || $this->arrResultStates[$nGTSRow]["bIsValid"] == 1)
			{
				// Then check to see if these mods are valid before putting into the game turns table 
				// (on score/on damage)
				if( CheckOnScore($this->arrResultStates[$nGTSRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->arrResultStates[$nGTSRow]["bOnDamage"], $bPlayerOnDamage))
				{
					// Insert Results States (Remember opponent has your state data - swap)
					$strSQL = "INSERT INTO GameTurns_SpecialStates (Game_ID,Player,SpecialStates_ID,Duration) VALUES (" . $this->nGame_ID . ",'" . $strPlayerNo . "'," . $this->arrResultStates[$nGTSRow]["nSpecialStates_ID"] . "," . $this->arrResultStates[$nGTSRow]["nDuration"] . ");";
					$arrSQLResults = $this->objDataSource->Query($strSQL);
				}
			}
		}
	}
	
	function GatherGTStates()
	{
		// Get all the General Special States Required: Player, ID, SpecialStates_ID, Duration
		$strSQL = "SELECT ID, SpecialStates_ID, Duration FROM GameTurns_SpecialStates WHERE Game_ID = " . $this->nGame_ID . " AND Player = '" . $this->strPlayerType . "' ORDER BY ID ASC;";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned (unsure how many records maybe returned)
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement = 0;
			// Pull the DB Data into script variables for later use
			while($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				$this->arrGTSpecialStates[$nElement]["nID"] = $arrSQLData[0];
				$this->arrGTSpecialStates[$nElement]["nSpecialStates_ID"] = $arrSQLData[1];
				$this->arrGTSpecialStates[$nElement]["nDuration"] = $arrSQLData[2];
				$nElement++;
			}
			$this->nNoStates = $nElement;
		}
	}
	
	function GatherResultStates($nOppResultID, $arrRedirectStates, $nNoRedirectStates)
	{	
		// Get the CUMALITIVE result states for the next turn, now we have the correct results
		$strSQL = "SELECT ID, SpecialStates_ID, OnScore, OnDamage, Duration, Cumulative FROM Results_SpecialStates WHERE Cumulative = 1 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrResultStates[$nElement]["nID"] = $arrSQLData[0];
				$this->arrResultStates[$nElement]["nSpecialStates_ID"] = $arrSQLData[1];
				$this->arrResultStates[$nElement]["bOnScore"] = $arrSQLData[2];
				$this->arrResultStates[$nElement]["bOnDamage"] = $arrSQLData[3];
				$this->arrResultStates[$nElement]["nDuration"] = $arrSQLData[4];
				$this->arrResultStates[$nElement]["nCumulative"] = $arrSQLData[5];
				$this->arrResultStates[$nElement]["bIsValid"] = True;
				$nElement++;
				
			}
			$this->nNoResultStates = $nElement;
		}
		
		// Get the NON-CUMALITIVE result states for the next turn, now we have the correct results
		$strSQL = "SELECT DISTINCT ID, SpecialStates_ID, OnScore, OnDamage, Duration, Cumulative FROM Results_SpecialStates WHERE Cumulative = 0 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrResultStates[$this->nNoResultStates]["nID"] = $arrSQLData[0];
				$this->arrResultStates[$this->nNoResultStates]["nSpecialStates_ID"] = $arrSQLData[1];
				$this->arrResultStates[$this->nNoResultStates]["bOnScore"] = $arrSQLData[2];
				$this->arrResultStates[$this->nNoResultStates]["bOnDamage"] = $arrSQLData[3];
				$this->arrResultStates[$this->nNoResultStates]["nDuration"] = $arrSQLData[4];
				$this->arrResultStates[$this->nNoResultStates]["nCumulative"] = $arrSQLData[5];
				$this->arrResultStates[$this->nNoResultStates]["bIsValid"] = True;
				$this->nNoResultStates++;
			}
		}
		
		// Check to see if a new special state has been triggered by redirect and add it to list
		if($nNoRedirectStates > 0)
		{	
			for ( $nStateRow = 0; $nStateRow < $nNoRedirectStates; $nStateRow++ )
			{
				$nElement = $nStateRow + $this->nNoResultStates;
				$this->arrResultStates[$nElement]["nSpecialStates_ID"] = $arrRedirectStates[$nStateRow]["nSpecialStates_ID"];
				$this->arrResultStates[$nElement]["bOnScore"] = $arrRedirectStates[$nStateRow]["bOnScore"];
				$this->arrResultStates[$nElement]["bOnDamage"] = $arrRedirectStates[$nStateRow]["bOnDamage"];
				$this->arrResultStates[$nElement]["nDuration"] = $arrRedirectStates[$nStateRow]["nDuration"];
				$this->arrResultStates[$nElement]["bIsValid"] = True;
			}
			$this->nNoResultStates = $nElement;
		}
		
		return (true);	
	}
		
	function IsStatePresent($nStateID)
	{
		// loop through all special states present this turn to check for a match
		for ( $nStateRow = 0; $nStateRow < $this->nNoStates; $nStateRow++ )
		{
			if ($this->arrGTSpecialStates[$nStateRow]["nSpecialStates_ID"] == $nStateID)
			{
				// if a match was found then indicate the redirect condition was true and exit loop
				return (true);
			}
		}	
		return (false);
	}
	
	// Checks for a state in next turns result before the nest turns list is complied properly
	// Used for redirects so we need the opponents result is to check against the states present
	function IsFutureStatePresent($nStateID, $nOppResultID)
	{
		// gather future states
		$strSQL = "SELECT SpecialStates_ID FROM Results_SpecialStates WHERE Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// loop through all special states present this turn to check for a match
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				if ($arrSQLData[0] == $nStateID)
				{
					// if a match was found then indicate the redirect condition was true and exit loop
					return (true);
				}
			}
			
			// if make it this far then no match was found, even though states were present
			return (false);
		}	
		else
		{
			// no states found so automatically no state is found
			return (false);
		}
	}
	
	function RunCounteractors($bPlayerOnScore, $bPlayerOnDamage)
	{
		// Re-gather the Game Turn States as they have been updated
		$this->GatherGTStates();
	
		// check to see if any states are present
		if($this->nNoStates > 0)
		{
			// Get all the Score Mods Data Required: Value, Description, Conditions_ID
			$strSQL = "SELECT SpecialStates_ID, Removes_SpecialStates_ID, OnScore, OnDamage FROM SpecialStates_Counteractors WHERE ";
			
			// Loop through all the ID's and add them to the SQL string
			for ( $nGTSRow=0; $nGTSRow < $this->nNoStates ; $nGTSRow++ )
			{
				if ($nGTSRow==0)
				{ 
					// If first row we dont need any OR at the beginning
					$strSQL = $strSQL . "SpecialStates_ID = " . $this->arrGTSpecialStates[$nGTSRow]["nSpecialStates_ID"] . " "; 
				}
				elseif ($nGTSRow==$this->nNoStates)
				{
					// If last row then end the query with a ';'
					$strSQL = $strSQL . "OR SpecialStates_ID = " . $this->arrGTSpecialStates[$nGTSRow]["nSpecialStates_ID"] . ";"; 
				}
				else 
				{
					// Otherwise just use the OR and keep a space at the end of the line
					$strSQL = $strSQL . "OR SpecialStates_ID = " . $this->arrGTSpecialStates[$nGTSRow]["nSpecialStates_ID"] . " "; 
				}
			}
			
			// Query the DB for all the score mods
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		
			// Check to see if query returned (unsure how many records maybe returned)
			if ($this->objDataSource->ValidateQuery($arrSQLResults))
			{
				$nElement=0;
				
				while ($arrSQLData = mysql_fetch_row($arrSQLResults))
				{
					$this->arrCounteractors[$nElement]["nSpecialStates_ID"] = $arrSQLData[0];
					$this->arrCounteractors[$nElement]["nRemoves_SpecialStates_ID"] = $arrSQLData[1];
					$this->arrCounteractors[$nElement]["bOnScore"] = $arrSQLData[2];
					$this->arrCounteractors[$nElement]["bOnDamage"] = $arrSQLData[3];
					$nElement++;
				}
				
				$this->nNoCounteractors = $nElement;
			}
		}
		
		// Check to see if any counteractors found
		if ($this->nNoCounteractors > 0)
		{
			// Now we have all the counteractors we can see if any are actually valid in this instance
			for ( $nCountRow=0; $nCountRow < $this->nNoCounteractors ; $nCountRow++ )
			{
				for ( $nGTSRow=0; $nGTSRow < $this->nNoStates ; $nGTSRow++ )
				{
					// check to see if current counteractor matches the current state
					if($this->arrCounteractors[$nCountRow]["nSpecialStates_ID"] == $this->arrGTSpecialStates[$nGTSRow]["nSpecialStates_ID"])
					{
						// Then check to see if these mods are valid before putting into the game turns table 
						// (on score/on damage)
						if( CheckOnScore($this->arrCounteractors[$nCountRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->arrCounteractors[$nCountRow]["bOnDamage"], $bPlayerOnDamage))
						{
							// if so then remove this record from the db
							$strSQL = "DELETE FROM GameTurns_SpecialStates WHERE Player = '" . $this->strPlayerType . "' AND Game_ID = " . $this->nGame_ID . " AND SpecialStates_ID = " . $this->arrCounteractors[$nCountRow]["nRemoves_SpecialStates_ID"] . ";";
							$arrSQLResults = $this->objDataSource->Query($strSQL);
							
							// DELETE ALL PERMINANT CONDITIONS ATTACHED TO STATE (OTHERWISE THESE WILL STILL HAVE AN EFFECT ON THE GAME!)
							$strSQL = "SELECT Conditions_ID FROM SpecialStates_Conditions WHERE SpecialStates_ID = " . $this->arrCounteractors[$nCountRow]["nRemoves_SpecialStates_ID"] . ";";
							$arrSQLResults = $this->objDataSource->Query($strSQL);
							
							// Check to see if query returned (only delete if conditions found)
							if ($this->objDataSource->ValidateQuery($arrSQLResults))
							{
								$strSQL = "DELETE FROM GameTurns_Conditions WHERE Player = '" . $this->strPlayerType . "' AND Game_ID = " . $this->nGame_ID . " AND (";
								
								while ($arrSQLData = mysql_fetch_row($arrSQLResults))
								{
									$strSQL = $strSQL . "Conditions_ID = " . $arrSQLData[0] . " OR ";
								}
								
								$strSQL = rtrim($strSQL, " OR ") . ");";
								$arrSQLResults = $this->objDataSource->Query($strSQL);
							}
							
							// DELETE ALL PERMINANT SCORE MODS ATTACHED TO STATE (OTHERWISE THESE WILL STILL HAVE AN EFFECT ON THE GAME!) 
							$strSQL = "SELECT Score_Mods_ID FROM SpecialStates_Score_Mods WHERE SpecialStates_ID = " . $this->arrCounteractors[$nCountRow]["nRemoves_SpecialStates_ID"] . ";";
							$arrSQLResults = $this->objDataSource->Query($strSQL);
							
							// Check to see if query returned (only delete if mods found)
							if ($this->objDataSource->ValidateQuery($arrSQLResults))
							{
								$strSQL = "DELETE FROM GameTurns_ScoreMods WHERE Player = '" . $this->strPlayerType . "' AND Game_ID = " . $this->nGame_ID . " AND (";
								
								while ($arrSQLData = mysql_fetch_row($arrSQLResults))
								{
									$strSQL = $strSQL . "Score_Mods_ID = " . $arrSQLData[0] . " OR ";
								}
								
								$strSQL = rtrim($strSQL, " OR ") . ");";
								$arrSQLResults = $this->objDataSource->Query($strSQL);
							}
						}
					}		
				}
			}
		}
	}

	function RunResultCounteractors()
	{
		// Check there were result states found and if so then collect the counteractor data from the DB
		if ($this->nNoResultStates > 0)
		{
			// Get all the Score Mods Data Required: Value, Description, Conditions_ID
			$strSQL = "SELECT SpecialStates_ID, Removes_SpecialStates_ID, OnScore, OnDamage FROM SpecialStates_Counteractors WHERE ";
			
			// Loop through all the ID's and add them to the SQL string
			for ( $nGTSRow=0; $nGTSRow <= $this->nNoResultStates ; $nGTSRow++ )
			{
				if ($nGTSRow==0)
				{ 
					// If first row we dont need any OR at the beginning
					$strSQL = $strSQL . "SpecialStates_ID = " . $this->arrResultStates[$nGTSRow]["nSpecialStates_ID"] . " "; 
				}
				elseif ($nGTSRow==$this->nNoResultStates)
				{
					// If last row then end the query with a ';'
					$strSQL = $strSQL . "OR SpecialStates_ID = " . $this->arrResultStates[$nGTSRow]["nSpecialStates_ID"] . ";"; 
				}
				else 
				{ 
					// Otherwise just use the OR and keep a space at the end of the line
					$strSQL = $strSQL . "OR SpecialStates_ID = " . $this->arrResultStates[$nGTSRow]["nSpecialStates_ID"] . " "; 
				}
			}
			
			// Query the DB for all the score mods
			$arrSQLResults = $this->objDataSource->Query($strSQL);
		
			// Check to see if query returned (unsure how many records maybe returned)
			if ($this->objDataSource->ValidateQuery($arrSQLResults))
			{
				$nElement=0;
				
				while ($arrSQLData = mysql_fetch_row($arrSQLResults))
				{
					$this->arrCounteractors[$nElement]["nSpecialStates_ID"] = $arrSQLData[0];
					$this->arrCounteractors[$nElement]["nRemoves_SpecialStates_ID"] = $arrSQLData[1];
					$this->arrCounteractors[$nElement]["bOnScore"] = $arrSQLData[2];
					$this->arrCounteractors[$nElement]["bOnDamage"] = $arrSQLData[3];
					$nElement++;
				}
				
				$this->nNoCounteractors = $nElement;
			}
		}
		
		// Check to see if any counteractors found
		if ($this->nNoCounteractors > 0)
		{
			// Now we have all the counteractors we can see
			for ( $nCountRow=0; $nCountRow <= $this->nNoCounteractors ; $nCountRow++ )
			{
				for ( $nGTSRow=0; $nGTSRow <= $this->nNoResultStates ; $nGTSRow++ )
				{
					// check to see if current counteractor matches the current state
					// (Removes_SpecialStates_ID)
					if($this->arrCounteractors[$nCountRow]["nRemoves_SpecialStates_ID"] == $this->arrResultStates[$nGTSRow]["nSpecialStates_ID"])
					{
						// if so then indicate it is invalid (so not added to db)
						$this->arrResultStates[$nGTSRow]["bIsValid"] = False;
					}		
					else
					{
						$this->arrResultStates[$nGTSRow]["bIsValid"] = True;
					}
				}
			}
		}
	}
}
?>