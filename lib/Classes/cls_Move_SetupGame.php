<?php

/***************************************************************************
 *                                cls_Move_SetupGame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of turn/move data from the DB for the first turn (setup game)
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Move_Setup extends Move{

	/* Variable Listing 
	$this-> */
	
	//None
	
	/* Constructor */ // 
	function Move_Setup($nGameID, $strPlayerNo, $nCharacterID)
	{
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
 		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Populate the class variables */
		
		// Indicate what kind of player the user is (p1 = owner, p2 = challenger)
		$this->strPlayerType = $strPlayerNo;
		
		$this->nGame_ID = $nGameID;
	
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}

		// Get the Archetype Information Required for the PLAYER: Archetype_ID
		$strSQL = "SELECT Archetype_ID FROM Characters WHERE ID = " . $nCharacterID . ";";
		
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			// Pull the DB Data into script variables for later use
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$this->nArchetype_ID = $arrSQLData[0];
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

	function GatherMoveData()
	{
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Object Creation 
		GT = Game Turn - e.g. generated at the end of the last turn (when this script was last called) */
		$this->objGTStates = new States_Setup($this->nGame_ID, $this->strPlayerType);
		
		$this->objGTScoreMods = new ScoreMods_Setup($this->nGame_ID); 
		
		$this->objGTConds = new Conditions_Setup($this->nGame_ID); 
	}

	function GatherResultData($nOppArchetypeID)
	{
		$this->objResult = new Results_Setup($nOppArchetypeID);	
	}
}
?>