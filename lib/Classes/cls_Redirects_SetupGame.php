<?php

/***************************************************************************
 *                                cls_Redirects_SetupGame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of redirects data from the DB for the first turn (setup game)
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Redirects_Setup extends Redirects{

	/* Variable Listing  
	$this-> */
	
	// None
	
	/* Constructor */
	function Redirects_Setup($nResultID)
	{			
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		$this->nNoRedirectStates = 0;
		$this->nLastResultChecked = 0;
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		// Get all the redirects (if any) for this result page
		$this->GatherRedirects($nResultID);
	}
	
	/* Desctructor */
	// None
			  
	/* Methods */
	// None
}

?>
