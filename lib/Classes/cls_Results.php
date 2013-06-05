<?php

/***************************************************************************
 *                                cls_Results.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of results data from the DB for a new turn/game
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/ 

Class Results{

	/* Variable Listing 
	$this-> */
	var $nResult_ID = 0;
	var $nOdd_Page = 0;
	var $strName = "";
	var $strMessage = "";
	var $strGfxLocation = "";
	var $nScore = 0;
	var $nScoreSpecial = 0;
	var $nScoreSpecialState_ID = 0;
	var $nMoveLogic_ID = 0;		// <-do we use this anywhere????
	
	/* Object List */
	var $objRedirect;
	var $objDataSource;
		
	/* Constructor */
	function Results($nOppArchetypeID, $nPlayerPG, $nOpponentPG)
	{	
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
	
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		// Get the Move Logic Result Required: ID, Results_ID
		// REMEMBER: Player One looks up in Players Two's Archetype Result/Move Data, the PG = P1#, the ManueverLookup = P2# (PG next to move selected) 
		// OR VISA VERSA!
		$strSQL = "SELECT ID, Results_ID FROM Move_Logic WHERE Archetype_ID = " . $nOppArchetypeID . " AND PageLookup = '" . StripZeroFill($nOpponentPG) . "' AND ManueverLookup = '" . StripZeroFill($nPlayerPG) . "';";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nMoveLogic_ID = $arrSQLData[0];
			$this->nResult_ID = $arrSQLData[1];
		}
		else
		{ 
			// Exit script as query failed 
			exit();
		}
		
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Get the Result Information from the DB now we have the Results ID */
	
		// Get the Result Details for PLAYER: Odd_Page, Name, Message, GfxLocation, Score, ScoreSpecial, ScoreSpecialState_ID
		$strSQL = "SELECT Odd_Page, Name, Message, GfxLocation, Score, ScoreSpecial, ScoreSpecialState_ID FROM Results WHERE ID = " . $this->nResult_ID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);

		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nOdd_Page = $arrSQLData[0];
			$this->strName = $arrSQLData[1];
			$this->strMessage = $arrSQLData[2];
			$this->strGfxLocation = $arrSQLData[3];
			$this->nScore = $arrSQLData[4];
			$this->nScoreSpecial = $arrSQLData[5];
			$this->nScoreSpecialState_ID = $arrSQLData[6];
		}
		else
		{ 
			// Exit script as query failed 
			exit();
		}
		
		//... this was where gather redirects was!	
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */
	
	// NOTE: MUST BE CALLED AFTER GATHER RESULT DATA, OTHERWISE RESULT OBJECT NOT SET!
	function GatherRedirectData($objPlayerStates, $objOppResult, $nOppArchetypeID, $bPlayerOnScore, $bPlayerOnDamage)
	{
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Check the Redirects and see if they are valid */

		// Check the redirects of the results page, and if redirected then this will be called again
		// by the calling script so they can check the new pages for redirects etc
		
		// NOTE: because of the nature of this process we have to loop outside the class because if player one gets redirected,
		// then player too need to check that they don't need to be redirects and so on (swapped round!)
		
		if ($objOppResult->objRedirect->IsRedirectValid($objPlayerStates, $this->nOdd_Page, $bPlayerOnScore, $bPlayerOnDamage, $objOppResult->nResult_ID, $this->nResult_ID))
		{
			// Gather the new results data and overwrite the old data as we are now on a new results page (Redirect Sucessful!)
			$this->SetNewResult($objOppResult->objRedirect->GetNewResultPage(), $nOppArchetypeID); 
			
			// Now gather the redircts for the new result page???
			$this->objRedirect->GatherRedirects($this->nResult_ID);		
		}
	}
	
	function GetLastResultChecked()
	{
		return ($this->objRedirect->GetLastResultChecked());
	}
	
	function GetNewGfx()
	{
		return ($this->strGfxLocation);
	}
	
	function GetNoRedirectStates()
	{
		return ($this->objRedirect->GetNoRedirectStates());
	}
	
	function GetOddPage()
	{
		return ($this->nOdd_Page);
	}
	
	function GetPageScore()
	{
		return ($this->nScore);
	}
	
	function GetResultID()
	{
		return ($this->nResult_ID);
	} 	
	
	function GetValidRedirectStatesArray()
	{
		return ($this->objRedirect->GetValidRedirectStatesArray());
	}
	
	// used only for when a redirect overrides the current result	
	function SetNewResult($nNewPage, $nOppArchetypeID)
	{
		$strSQL = "SELECT ID, Odd_Page, Name, Message, GfxLocation, Score, ScoreSpecial, ScoreSpecialState_ID FROM Results WHERE Archetype_ID = " . $nOppArchetypeID . " AND Odd_Page = " . $nNewPage . ";";	
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nResult_ID = $arrSQLData[0];
			$this->nOdd_Page = $arrSQLData[1];
			$this->strName = $arrSQLData[2];
			$this->strMessage = $arrSQLData[3];
			$this->strGfxLocation = $arrSQLData[4];
			$this->nScore = $arrSQLData[5];
			$this->nScoreSpecial = $arrSQLData[6];
			$this->nScoreSpecialState_ID = $arrSQLData[7];
		}
		else
		{
			exit();
		}
	}
	
	function SetupRedirect()
	{
		/* Object Creation */
		$this->objRedirect = new Redirects($this->nResult_ID);	
	}
}

?>