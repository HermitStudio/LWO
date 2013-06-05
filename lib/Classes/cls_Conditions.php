<?php

/***************************************************************************
 *                                cls_Conditions.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of conditions data from the DB for a new turn/game
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class Conditions{

	/* Variable Listing 
	$this-> */
	var $nNoConds = 0;
	var $nNoResultConds = 0;
	var $nNoStateConds = 0;
	var $nGame_ID = 0;
	
	/* Array List*/
	
	// KEYS: nID, nCondition_ID, nDuration (MASTER LIST) - SORTED BELOW
	var $arrGTConditions = array();
	
	// KEYS: nID, strCondition_sql, strFieldName nDuration
	var $arrModConds = array();
	
	// KEYS: nID, strCondition_sql, strFieldName nDuration
	var $arrResultConds = array();
	
	// KEYS: nID, strCondition_sql, strFieldName nDuration
	var $arrStateConds = array();
	 
	/* Object List */
	var $objDataSource; 
	 
	/* Constructor */
	function Conditions($nGameID)
	{	
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		$this->nNoConds = 0;
		$this->nNoResultConds = 0;
		$this->nNoStateConds = 0;
		$this->nGame_ID = $nGameID;
		$this->strPlayerType = $strPlayerNo;
	
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
	
		//... ADD the GT Array Population here if needed!
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */
	
	function ExtractValidResultConds($bPlayerOnScore, $bPlayerOnDamage, $strPlayerNo)
	{
		// Loop through all result conditions to see if they are valid and insert them if they are
		for ( $nGTCRow=0; $nGTCRow <= $this->nNoResultConds ; $nGTCRow++ )
		{
			// Then check to see if these conds are valid before putting into the game turns table 
			// (on score/on damage)
			if( CheckOnScore($this->arrResultConds[$nGTCRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->arrResultConds[$nGTCRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// Insert Results Conditions (Remember opponent has your conds data - swap)
				$strSQL = "INSERT INTO GameTurns_Conditions (Game_ID,Player,Conditions_ID,Duration) VALUES (" . $this->nGame_ID . ",'" . $strPlayerNo . "'," . $this->arrResultConds[$nGTCRow]["nConditions_ID"] . "," . $this->arrResultConds[$nGTCRow]["nDuration"] . ");";
				$arrSQLResults = $this->objDataSource->Query($strSQL);
			}
		}
	}
	
	function ExtractValidStateConds($bPlayerOnScore, $bPlayerOnDamage, $strPlayerNo)
	{	
		// Loop through all state conditions to see if they are valid and insert them if they are
		for ( $nGTCRow=0; $nGTCRow <= $this->nNoStateConds ; $nGTCRow++ )
		{
			// Then check to see if these conds are valid before putting into the game turns table 
			// (on score/on damage)
			if( CheckOnScore($this->arrStateConds[$nGTCRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->arrStateConds[$nGTCRow]["bOnDamage"], $bPlayerOnDamage))
			{
				// Insert State Condtions (Remember opponent has your conds data - swap)
				$strSQL = "INSERT INTO GameTurns_Conditions (Game_ID, Player, Conditions_ID, Duration) VALUES (" . $this->nGame_ID . ", '" . $strPlayerNo . "', " . $this->arrStateConds[$nGTCRow]["nConditions_ID"] . ", " . $this->arrStateConds[$nGTCRow]["nDuration"] . ");";
				$arrSQLResults = $this->objDataSource->Query($strSQL);
			}
		}
	}	

	function GatherModConds($arrScoreMods, $nNoMods)
	{
		// Check to see if any score mod records to get conditions for (just in case 0 returned by accident)
		if ($nNoMods > 0)
		{
			$nNoValidConds = 0;
			
			// Gather the conditions data from the DB, now we have the score mods 
			$strSQL = "SELECT ID, condition_sql, FieldName FROM Conditions WHERE ";
		
			// Loop through all the ID's and add them to the SQL string (same number of conds as score mods)
			for ( $nCondRow=0 ;$nCondRow <= $nNoMods ; $nCondRow++ )
			{
				// Check for nulls as not always a conditions attached (any move mod etc)
				if ($arrScoreMods[$nCondRow]["nConditions_ID"] != Null && $arrScoreMods[$nCondRow]["nConditions_ID"] != 0 )
				{
					if ($nCondRow==0)
					{ 
						// If first row we dont need any OR at the beginning
						$strSQL = $strSQL . "ID = " . $arrScoreMods[$nCondRow]["nConditions_ID"] . " "; 
					}
					elseif ($nScoreRow==$nNoMods)
					{
						// If last row then end the query with a ';'
						$strSQL = $strSQL . "OR ID = " . $arrScoreMods[$nCondRow]["nConditions_ID"] . ";"; 
					}
					else 
					{ 
						// Otherwise just use the OR and keep a space at the end of the line
						$strSQL = $strSQL . "OR ID = " . $arrScoreMods[$nCondRow]["nConditions_ID"] . " "; 
					}
					$nNoValidConds++;
				}
			}
			
			// Check there were some condition records found, if not don't query DB as query will be invalid!
			if ($nNoValidConds > 0)
			{
				// Query the DB for all the conditions
				$arrSQLResults = $this->objDataSource->Query($strSQL);
				
				// Check to see if query returned (unsure how many records maybe returned)
				if ($this->objDataSource->ValidateQuery($arrSQLResults))
				{
					$nElement=0;
					
					while ($arrSQLData = mysql_fetch_row($arrSQLResults))
					{
						$this->arrModConds[$nElement]["nID"] = $arrSQLData[0];
						$this->arrModConds[$nElement]["strCondition_sql"] = $arrSQLData[1];
						$this->arrModConds[$nElement]["strFieldName"] = $arrSQLData[2];
						$nElement++;
					}
					
					$this->nNoConds = $nElement;
				}
			}
		}
	}
	
	function GatherResultConds($nOppResultID)
	{	
		// Get the results conditions for the next turn, now we have the correct results
		$strSQL = "SELECT ID, Conditions_ID, OnScore, OnDamage, Duration FROM Results_Conditions WHERE Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrResultConds[$nElement]["nID"] = $arrSQLData[0];
				$this->arrResultConds[$nElement]["nConditions_ID"] = $arrSQLData[1];
				$this->arrResultConds[$nElement]["bOnScore"] = $arrSQLData[2];
				$this->arrResultConds[$nElement]["bOnDamage"] = $arrSQLData[3];
				$this->arrResultConds[$nElement]["nDuration"] = $arrSQLData[4];
				$nElement++;
			}
			$this->nNoResultConds = $nElement;
		}		
		
		return (true);	
	}
	
	function GatherStateConds($nOppResultID)
	{	
		// Get the CUMALATIVE state conditions for the next turn, now we have the correct results
		$strSQL = "SELECT SpecialStates_Conditions.ID, SpecialStates_Conditions.Conditions_ID, SpecialStates_Conditions.OnScore, SpecialStates_Conditions.OnDamage, Results_SpecialStates.Duration, Results_SpecialStates.Cumulative FROM Results_SpecialStates INNER JOIN SpecialStates_Conditions ON Results_SpecialStates.SpecialStates_ID = SpecialStates_Conditions.SpecialStates_ID WHERE Results_SpecialStates.Cumulative = 1 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrStateConds[$nElement]["nID"] = $arrSQLData[0];
				$this->arrStateConds[$nElement]["nConditions_ID"] = $arrSQLData[1];
				$this->arrStateConds[$nElement]["bOnScore"] = $arrSQLData[2];
				$this->arrStateConds[$nElement]["bOnDamage"] = $arrSQLData[3];
				$this->arrStateConds[$nElement]["nDuration"] = $arrSQLData[4];
				$this->arrStateConds[$nElement]["nCumulative"] = $arrSQLData[5];
				$nElement++;
			}
			$this->nNoStateConds = $nElement;
		}

		// Get the NON-CUMALATIVE state conditions for the next turn, now we have the correct results
		$strSQL = "SELECT DISTINCT SpecialStates_Conditions.ID, SpecialStates_Conditions.Conditions_ID, SpecialStates_Conditions.OnScore, SpecialStates_Conditions.OnDamage, Results_SpecialStates.Duration, Results_SpecialStates.Cumulative FROM Results_SpecialStates INNER JOIN SpecialStates_Conditions ON Results_SpecialStates.SpecialStates_ID = SpecialStates_Conditions.SpecialStates_ID WHERE Results_SpecialStates.Cumulative = 0 AND Results_ID = " . $nOppResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement=0;
			while ($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				// Pull the DB Data into script variables for later use
				$this->arrStateConds[$this->nNoStateConds]["nID"] = $arrSQLData[0];
				$this->arrStateConds[$this->nNoStateConds]["nConditions_ID"] = $arrSQLData[1];
				$this->arrStateConds[$this->nNoStateConds]["bOnScore"] = $arrSQLData[2];
				$this->arrStateConds[$this->nNoStateConds]["bOnDamage"] = $arrSQLData[3];
				$this->arrStateConds[$this->nNoStateConds]["nDuration"] = $arrSQLData[4];
				$this->arrStateConds[$this->nNoStateConds]["nCumulative"] = $arrSQLData[5];
				$this->nNoStateConds++;
			}
		}
		
		return (true);
	}
	
	function GetNoConds()
	{
		return ($this->nNoConds);
	}
	
	function IsModConditionMet($nCondID, $objMove)
	{
		// loop through all special states present this turn to check for a match
		for ( $nCondRow = 0; $nCondRow <= $this->nNoConds; $nCondRow++ )
		{
			if ($this->arrModConds[$nCondRow]["nID"] == $nCondID)
			{
				$strSQL = "SELECT ID FROM ";
				
				// when a match was found then check to see if the condition matches the move played
				switch ($this->arrModConds[$nCondRow]["strFieldName"])
				{
					case "Manuevers.Category":
						$strSQL = $strSQL . "Manuevers WHERE " . $this->arrModConds[$nCondRow]["strCondition_sql"] . " AND Manuevers.Category = '" . $objMove->GetCategory() . "';";
						break;
						
					case "Manuevers.Colour":
						$strSQL = $strSQL . "Manuevers WHERE " . $this->arrModConds[$nCondRow]["strCondition_sql"] . " AND Manuevers.Colour = '" . $objMove->GetColour() . "';";		
						break;
						
					case "Manuevers.Name":
						$strSQL = $strSQL . "Manuevers WHERE " . $this->arrModConds[$nCondRow]["strCondition_sql"] . " AND Manuevers.Name = '" . $objMove->GetName() . "';";
						break;
						
					case "Results.Odd_Page":
						$strSQL = $strSQL . "Results WHERE " . $this->arrModConds[$nCondRow]["strCondition_sql"] . " AND Results.Odd_Page = " . $objMove->GetOddPage() . ";";
						break;
					
					//... ADD MORE CASES IF NEEDED IN FUTURE
						
					default:
						// invalid data or condition used so must exit as we can't tell if
						// the score mod can be used
						exit();
				}
				
				// Query the DB for all the conditions
				$arrSQLResults = $this->objDataSource->Query($strSQL);
				
				// Check to see if query returned (unsure how many records maybe returned - 0/1)
				// If no result returned then the move and condition DO NOT MEET!
				if ($this->objDataSource->ValidateQuery($arrSQLResults))
				{
					return (true);
					break;
				}
				else
				{
					return (false);
					break;
				}
			}
		}
		
		// if no match was found the condition id was invalid so indicate an error	
		return (null);
	}		  	
}

?>