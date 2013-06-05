<?php

/***************************************************************************
 *                                cls_Player_SetupGame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of player data from the DB for the first turn (setup game)
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Player_Setup extends Player{

	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Variable Listing (See Player for Inherited Variables)
	$this-> */					
	var $strGfxLocation = "";
	var $nModHP = 0;

	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Constructor */
	function Player_Setup($nGameID, $strPlayerNo)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		
		// Indicate what kind of player the user is (p1 = owner, p2 = challenger)
		$this->strPlayerType = $strPlayerNo;
		$this->nScoreTotal = 0;
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		///////////////////////////////////////////////////////////////////////////////////////////////////////////
		/* Pull Data from the DB */
		
		// Amend the Query based on if we need to pull Player 1 or 2 data:
		if ($this->strPlayerType == "P1")
		{
			// Get the Game and Turn Information Required: (Zone_ID, P1_User_ID), P1_Character_ID
			$strSQL = "SELECT P1_Character_ID FROM Games WHERE ID = " . $nGameID . ";";
		}
		elseif ($this->strPlayerType == "P2")
		{
			// Get the Game and Turn Information Required: (Zone_ID, P2_User_ID), P2_Character_ID
			$strSQL = "SELECT P2_Character_ID FROM Games WHERE ID = " . $nGameID . ";";
		}
		else
		{
			// Invalid player type so must exit script
			exit();
		}
		
		$arrSQLResults = $this->objDataSource->Query($strSQL);
			
		// Check to see if valid query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nCharacter_ID = $arrSQLData[0];
		}
		else
		{
			// Exit script as query failed
			exit();
		}
		
		// Get the Character Information Required for PLAYER: ArchetypeID, ModHP
		$strSQL = "SELECT Archetype_ID, ModHP FROM Characters WHERE ID = " . $this->nCharacter_ID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nArchetype_ID = $arrSQLData[0];
			$this->nModHP = $arrSQLData[1];
		}
		else
		{
			// Exit script as query failed
			exit();
		}

		// Get the Results and Bio Information Required for PLAYER: GfxLocation, HP, Height
		$strSQL = "SELECT Results.GfxLocation, Archetypes.Health, Archetypes.Height FROM Results INNER JOIN Archetypes ON Results.Archetype_ID = Archetypes.ID WHERE Results.Odd_Page = 57 AND Results.Archetype_ID = " . $this->nArchetype_ID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->strGfxLocation = $arrSQLData[0];
			$this->nStartingHP = $arrSQLData[1];
			$this->nStartingHeight = $arrSQLData[2];
			
		}
		else
		{
			// Exit script as query failed
			exit();
		}
		
		// Get the Move Details for P.57 Extended Range (starting position)	
		// Move Object Creation - indicate we dont need to work out the move details, just the list generation
		$this->objCurrentMove = new Move_Setup($nGameID, $this->strPlayerType, $this->nCharacter_ID); 
		$this->objCurrentMove->GatherMoveData();
		
		// Total the Health Points for the Archetype Base HP and the Character modifications HP
		$this->nStartingHP = $this->nStartingHP + $this->nModHP;	
		$this->nHP = $this->nStartingHP;
		
		// Setup the starting height, as this can change over time in a game
		$this->nHeight = $this->nStartingHeight;
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Destructor */
	//None
			  
	///////////////////////////////////////////////////////////////////////////////////////////////////////////			  
	/* Methods */
	
	function CalculateHeightMod($nOpponentHeight)
	{
		$this->nHeightMod = $this->nHeight - $nOpponentHeight;
	}
	
	function GatherResultData($nOppArchetypeID)
	{
		$this->objCurrentMove->GatherResultData($nOppArchetypeID);	
	}
	
	function GetGfxLocation()
	{
		return ($this->strGfxLocation);
	}
}

?>