<?php

/***************************************************************************
 *                                cls_Results_SetupGame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of results data from the DB for the first turn (setup game)
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Results_Setup extends Results{

	/* Variable Listing 
	$this-> */

	// None
	
	/* Constructor */
	function Results_Setup($nOppArchetypeID)
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
		
		// REMEMBER: Player One looks up in Players Two's Archetype Result Data for P.57 (starting)
		// OR VISA VERSA!
		$strSQL = "SELECT ID, Odd_Page, Name, Message, GfxLocation, Score, ScoreSpecial, ScoreSpecialState_ID FROM Results WHERE Archetype_ID = " . $nOppArchetypeID . " AND Odd_Page = 57;";	
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
			// Exit script as query failed 
			exit();
		}
		
		
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
	
	function SetupRedirect()
	{
		/* Object Creation */
		$this->objRedirect = new Redirects_Setup($this->nResult_ID);
	}
}

?>