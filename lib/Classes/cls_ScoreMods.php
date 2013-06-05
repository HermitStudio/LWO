<?php

/***************************************************************************
 *                                cls_ScoreMods.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of score mods data from the DB for a new turn/game
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class ScoreMods{

	/* Variable Listing 
	$this-> */
	var $nNoMods = 0;
	var $nNoResultMods = 0;
	var $nNoStateMods = 0;
	var $nScoreModTotal = 0;
	var $nGame_ID = 0;
	
	// KEYS: nID, nScore_Mod_ID, nDuration (MASTER LIST) 
	var $arrGTScoreMods = array();
	
	// KEYS: nValue, strDescription, nConditions_ID, strJoinType, nDuration (MASTER LIST DETAILS)
	// Uses ScoreMods to modify the turn's damage ONLY if the conditions were met in the move used
	var $arrScoreMods = array();
	
	// KEY: nID, nScore_Mods_ID, bOnScore, bOnDamage, nDuration
	var $arrResultMods = array();
	
	// KEYS: nValue, strDescription, nConditions_ID, strJoinType, nDuration
	// Uses ScoreMods to modify the turn's damage ONLY if the conditions were met in the move used
	var $arrStateMods = array();
	
	/* Object List */
	var $objDataSource;
	 
	/* Constructor */
	function ScoreMods($nGameID, $strPlayerNo)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate class variables */
		$this->nNoMods = 0;
		$this->nNoResultMods = 0;
		$this->nNoStateMods = 0;
		$this->nScoreModTotal = null;
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
		
		// Get all the GAME TURN Score Mods Required: Player, ID, Score_Mod_ID, Duration
		$strSQL = "SELECT ID, Score_Mods_ID, Duration FROM GameTurns_ScoreMods WHERE Game_ID = " . $this->nGame_ID . " AND Player = '" . $strPlayerNo . "' ORDER BY ID ASC;";	
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned (unsure how many records maybe returned)
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// OR TEST THIS AS WELL: 
			// $arrScoreMods = $arrSQLData; 
		
			$nElement = 0;
			
			// Pull the DB Data into script variables for later use
			while($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				$this->arrGTScoreMods[$nElement]["nID"] = $arrSQLData[0];
				$this->arrGTScoreMods[$nElement]["nScore_Mod_ID"] = $arrSQLData[1];
				$this->arrGTScoreMods[$nElement]["nDuration"] = $arrSQLData[2];
				$nElement++;
			}	
			
			// Record the number of records in the array
			$this->nNoMods = $nElement;
		}
		
		// Check there were score mods found and if so then collect the data from the DB
		if ($this->nNoMods > 0)
		{
			// Get all the Score Mods Data Required: Value, Description, Conditions_ID
			$strSQL = "SELECT Value, Description, Conditions_ID, JoinType FROM Score_Mods WHERE ";
			
			// Loop through all the ID's and add them to the SQL string
			for ( $nScoreRow=0 ;$nScoreRow < $this->nNoMods ; $nScoreRow++ )
			{
				if ($nScoreRow==0)
				{ 
					// If first row we dont need any OR at the beginning
					$strSQL = $strSQL . "ID = " . $this->arrGTScoreMods[$nScoreRow]["nScore_Mod_ID"] . " "; 
				}
				elseif ($nScoreRow==$this->nNoMods)
				{
					// If last row then end the query with a ';'
					$strSQL = $strSQL . "OR ID = " . $this->arrGTScoreMods[$nScoreRow]["nScore_Mod_ID"] . ";"; 
				}
				else 
				{ 
					// Otherwise just use the OR and keep a space at the end of the line
					$strSQL = $strSQL . "OR ID = " . $this->arrGTScoreMods[$nScoreRow]["nScore_Mod_ID"] . " "; 
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
					$this->arrScoreMods[$nElement]["nValue"] = $arrSQLData[0];
					$this->arrScoreMods[$nElement]["strDescription"] = $arrSQLData[1];
					$this->arrScoreMods[$nElement]["nConditions_ID"] = $arrSQLData[2];
					$this->arrScoreMods[$nElement]["strJoinType"] = $arrSQLData[3];
					$nElement++;
				}
			}
		}
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */
	
	function CalculateModTotal($objMove)
	{
		$this->nScoreModTotal = null;
		$nNoTrueConds=0;

		// Check for any relevent game score modifers (in pre-generated list)
		// (these were generated last turn which include: items, special states and general result modifers - eg all of them)	 
		
		for ( $nScoreRow=0; $nScoreRow < $this->nNoMods; $nScoreRow++ )
		{	
			// check to see if any conditions on the score mod for this turn
			if ($this->arrScoreMods[$nScoreRow]["nConditions_ID"] != NULL && $this->arrScoreMods[$nScoreRow]["nConditions_ID"] != 0)
			{ 
				if ($objMove->objGTConds->IsModConditionMet($this->arrScoreMods[$nScoreRow]["nConditions_ID"], $objMove) == True) // - conditions for score mods array passed (arrScoreMods)
				{
					// Check join type to see if 'OR' or 'AND' or 'EACH' (add mod each time) to be used in cases of multiple conditions in score mod records  
					// (So don't add the same score mod twice when shouldn't etc)
					switch($this->arrScoreMods[$nScoreRow]["JoinType"])
					{	
						// IF ONE CONDITION TRUE THEN MOD WON ONCE TOTAL
						case "AND": 
							// indicate a true condition was found
							$nNoTrueConds++;
							
							// check to see if all conditions are true, as this is an 'AND' statement all are required to be true
							if ($nNoTrueConds == $objMove->objGTConds->GetNoConds())
							{
								// since all conds valid, then add the score mod value to the total
								$this->nScoreModTotal = $this->nScoreModTotal + $this->arrScoreMods[$nScoreRow]["nValue"];					
							}
							
							// otherwise carry on
							break;
						
						// IF ALL CONDITIONS TRUE THEN MOD WON ONCE TOTAL
						case "EACH": 
								
							// Since this condition was true add it immediately to damage total
							$this->nScoreModTotal = $this->nScoreModTotal + $this->arrScoreMods[$nScoreRow]["nValue"];				
							break;
						
						// MOD AWARDED ONCE PER TRUE CONDITION		
						// Default to OR so anything not set assume 'OR'
						default: 	
									
							// check this is the first time the mod was added (as OR statement could have been added before by another condition on the same score mod)
							if ( $nNoTrueConds == 0 )
							{
								// Since only one true statement is required, you may add the mod
								$this->nScoreModTotal = $this->nScoreModTotal + $this->arrScoreMods[$nScoreRow]["nValue"];				
							
								// Indicate not to add mod again
								$nNoTrueConds++;
							}	

							// otherwise carry on as don't add mod
							break;					
					}
				}
			}	
			else
			{
				// REMEMBER: if any possiblity of multiple records then need to add code here to check for it
				// otherwise the score mod applys to any scoring move, so add it 
				// No condition = it applys universally if present!
				$this->nScoreModTotal = $this->nScoreModTotal + $this->arrScoreMods[$nScoreRow]["nValue"];
			}
		}
		
		return ($this->nScoreModTotal);
	}
	
	function ExtractValidResultMods($bPlayerOnScore, $bPlayerOnDamage, $strPlayerNo)
	{ 		
		// Loop through all result score mods to see if they are valid and insert them if they are
		for ( $nGTMRow=0; $nGTMRow < $this->nNoResultMods ; $nGTMRow++ )
		{
			// Then check to see if these mods are valid before putting into the game turns table 
			// (on damage) - all score mods are set to onscore 1 so no need to check this!
			if( CheckOnDamage($this->arrResultMods[$nGTMRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// Insert Results Score Mods (Remember opponent has your mods data - swap)
				$strSQL = "INSERT INTO GameTurns_ScoreMods (Game_ID, Player, Score_Mods_ID, Duration) VALUES (" . $this->nGame_ID . ", '" . $strPlayerNo . "', " . $this->arrResultMods[$nGTMRow]["nScore_Mods_ID"] . ", " . $this->arrResultMods[$nGTMRow]["nDuration"] . ");";
				$arrSQLResults = $this->objDataSource->Query($strSQL);
			}
		}
	}
	
	function ExtractValidStateMods($bPlayerOnScore, $bPlayerOnDamage, $strPlayerNo)
	{		
		// Loop through all result score mods to see if they are valid and insert them if they are
		for ( $nGTMRow=0; $nGTMRow < $this->nNoStateMods ; $nGTMRow++ )
		{
			// Then check to see if these mods are valid before putting into the game turns table 
			// (on damage) - all score mods are set to onscore 1 so no need to check this!
			if( CheckOnDamage($this->arrStateMods[$nGTMRow]["bOnDamage"], $bPlayerOnDamage))
			{	
				// Insert Results Score Mods (Remember opponent has your mods data - swap)
				$strSQL = "INSERT INTO GameTurns_ScoreMods (Game_ID, Player, Score_Mods_ID, Duration) VALUES (" . $this->nGame_ID . ", '" . $strPlayerNo . "', " . $this->arrStateMods[$nGTMRow]["nScore_Mods_ID"] . ", " . $this->arrStateMods[$nGTMRow]["nDuration"] . ");";
				$arrSQLResults = $this->objDataSource->Query($strSQL);
			}
		}
	}
	
	function GatherResultMods($nOppResultID)
	{
		// Get the results score mods for the next turn, now we have the correct results
		$strSQL = "SELECT ID, Score_Mods_ID, OnScore, OnDamage, Duration FROM Results_Score_Mods WHERE Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{				
				// Pull the DB Data into script variables for later use
				$this->arrResultMods[$nElement]["nID"] = $arrSQLData[0];
				$this->arrResultMods[$nElement]["nScore_Mods_ID"] = $arrSQLData[1];
				$this->arrResultMods[$nElement]["bOnScore"] = $arrSQLData[2];
				$this->arrResultMods[$nElement]["bOnDamage"] = $arrSQLData[3];
				$this->arrResultMods[$nElement]["nDuration"] = $arrSQLData[4];
				$nElement++;
			}
			$this->nNoResultMods = $nElement;
		}		
		
		return (true);	
	}
	
	function GatherStateMods($nOppResultID)
	{	
		// Get the CUMALITIVE state score mods for the next turn, now we have the correct results
		$strSQL = "SELECT SpecialStates_Score_Mods.ID, SpecialStates_Score_Mods.Score_Mods_ID, SpecialStates_Score_Mods.OnScore, SpecialStates_Score_Mods.OnDamage, Results_SpecialStates.Duration, Results_SpecialStates.Cumulative FROM Results_SpecialStates INNER JOIN SpecialStates_Score_Mods ON Results_SpecialStates.SpecialStates_ID = SpecialStates_Score_Mods.SpecialStates_ID WHERE Results_SpecialStates.Cumulative = 1 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{	
				// Pull the DB Data into script variables for later use
				$this->arrStateMods[$nElement]["nID"] = $arrSQLData[0];
				$this->arrStateMods[$nElement]["nScore_Mods_ID"] = $arrSQLData[1];
				$this->arrStateMods[$nElement]["bOnScore"] = $arrSQLData[2];
				$this->arrStateMods[$nElement]["bOnDamage"] = $arrSQLData[3];
				$this->arrStateMods[$nElement]["nDuration"] = $arrSQLData[4];
				$this->arrStateMods[$nElement]["nCumulative"] = $arrSQLData[5];
				$nElement++;
			}
			$this->nNoStateMods = $nElement;
		}
		
		// Get the NON-CUMALITIVE state score mods for the next turn, now we have the correct results
		$strSQL = "SELECT DISTINCT SpecialStates_Score_Mods.ID, SpecialStates_Score_Mods.Score_Mods_ID, SpecialStates_Score_Mods.OnScore, SpecialStates_Score_Mods.OnDamage, Results_SpecialStates.Duration, Results_SpecialStates.Cumulative FROM Results_SpecialStates INNER JOIN SpecialStates_Score_Mods ON Results_SpecialStates.SpecialStates_ID = SpecialStates_Score_Mods.SpecialStates_ID WHERE Results_SpecialStates.Cumulative = 0 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrStateMods[$this->nNoStateMods]["nID"] = $arrSQLData[0];
				$this->arrStateMods[$this->nNoStateMods]["nScore_Mods_ID"] = $arrSQLData[1];
				$this->arrStateMods[$this->nNoStateMods]["bOnScore"] = $arrSQLData[2];
				$this->arrStateMods[$this->nNoStateMods]["bOnDamage"] = $arrSQLData[3];
				$this->arrStateMods[$this->nNoStateMods]["nDuration"] = $arrSQLData[4];
				$this->arrStateMods[$this->nNoStateMods]["nCumulative"] = $arrSQLData[5];
				$this->$nNoStateMods++;
			}
		}
		return (true);
	}	
		
	function GetNoMods()
	{
		return ($this->nNoMods);
	}

	function GetScoreModArray()
	{
		return ($this->arrScoreMods);
	}	  	
}

?>

