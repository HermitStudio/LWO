<?php

/***************************************************************************
 *                                cls_States_SetupGame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of special states data from the DB for the first turn (setup game)
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class States_Setup extends States{

	/* Variable Listing 
	$this-> */
	
	// None
	
	/* Constructor */
	function States_Setup($nGameID, $strPlayerNo)
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
	}
	
	/* Destrutor */
	// None
	
	/* Methods */
	// None
}
?>
