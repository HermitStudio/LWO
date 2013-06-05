<?php

/***************************************************************************
 *                                cls_Redirects.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of redirects data from the DB for a new turn/game
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class Redirects{

	/* Variable Listing  
	$this-> */
	var $nNoRedirects = 0;
	var $nNoRedirectStates = 0;
	var $nLastResultChecked = 0;
	var $nResult_ID = 0;
	
	// KEY: nRedirect_ID, nRequired_Results_Odd_Page, nRequired_SpecialStates_ID, bOnScore, bOnDamage, nRedirect_SpecialStates_ID
	var $arrRedirects  = array();
	
	/* Object List */
	var $objDataSource;
	 
	/* Constructor */
	function Redirects($nResultID)
	{
		
		// Set up required variables and class files (done inside the file called)
		@include("config/lwo_init.php"); 
		
		$this->nNoRedirectStates = 0;
		$this->nResult_ID = $nResultID;
		$this->nLastResultChecked = 0;
		
		// Setup the DB Interfacing Script 
		$this->objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);
		
		// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
		if ($this->objDataSource->CONS_RETURN == false)
		{
			exit();
		}
		
		$this->GatherRedirects($nResultID);
	}
	
	/* Desctructor */
	//None
			  
	/* Methods */	  	
	
	function GatherRedirects($nResultID)
	{	
		$this->arrRedirects = null;
		
		// Get the Redirect Information (If Available) for PLAYER: ID, Required_Results_Odd_Page, Required_SpecialStates_ID, Redirect_Results_Odd_Page, OnScore, OnDamage, Redirect_SpecialStates_ID
		$strSQL = "SELECT ID, Required_Results_Odd_Page, Required_SpecialStates_ID, Redirect_Results_Odd_Page, OnScore, OnDamage, Redirect_SpecialStates_ID FROM Results_Redirects WHERE Results_ID = " . $nResultID . ";";
		$arrSQLResults = $this->objDataSource->Query($strSQL);
		
		// Check to see if query returned (unsure how many records maybe returned)
		if ($this->objDataSource->ValidateQuery($arrSQLResults))
		{
			$nElement = 0;
			
			// Pull the DB Data into script variables for later use
			while($arrSQLData = mysql_fetch_row($arrSQLResults))
			{	
				// Pull the DB Data into script variables for later use
				$this->arrRedirects[$nElement]["nRedirect_ID"] = $arrSQLData[0];
				$this->arrRedirects[$nElement]["nRequired_Results_Odd_Page"] = $arrSQLData[1];
				$this->arrRedirects[$nElement]["nRequired_SpecialStates_ID"] = $arrSQLData[2];
				$this->arrRedirects[$nElement]["nRedirect_Results_Odd_Page"] = $arrSQLData[3];
				$this->arrRedirects[$nElement]["bOnScore"] = $arrSQLData[4];
				$this->arrRedirects[$nElement]["bOnDamage"] = $arrSQLData[5];
				$this->arrRedirects[$nElement]["nRedirect_SpecialStates_ID"] = $arrSQLData[6];
				$nElement++;
			}
			$this->nNoRedirects = $nElement;
		}
		
	}
	
	function GetLastResultChecked()
	{
		return ($this->nLastResultChecked);
	}
	
	function GetNewResultPage()
	{
		// ASSUMPTION: All records will have same redirect ID
		// (may have to add code later for multiple redirects for the single result page)
		return ($this->arrRedirects[0]["nRedirect_Results_Odd_Page"]);
	}
	
	function GetNoRedirectStates()
	{
		return ($this->nNoRedirectStates);
	}
	
	function GetValidRedirectStatesArray()
	{
		$arrRedirectStates = null;
		$this->nNoRedirectStates = 0;
		
		for ( $nRedirectRow = 0; $nRedirectRow <= $this->nNoRedirects ; $nRedirectRow++ )
		{
			// check to see if the redirect had met all its conditions eariler and was therefore used
			// and also check to see if there were any special states invoked by the new redirection
			// So far only dwarf has this!
			if($this->arrRedirects[$nRedirectRow]["bIsValid"] == True && $this->arrRedirects[$nRedirectRow]["nRedirect_SpecialStates_ID"] != Null && $this->arrRedirects[$nRedirectRow]["nRedirect_SpecialStates_ID"] != 0)
			{	
				$arrRedirectStates[$this->nNoRedirectStates]["nSpecialStates_ID"] = $this->arrRedirects[$nRedirectRow]["nRedirect_SpecialStates_ID"];
				$arrRedirectStates[$this->nNoRedirectStates]["bOnScore"] = $this->arrRedirects[$nRedirectRow]["bOnScore"];
				$arrRedirectStates[$this->nNoRedirectStates]["bOnDamage"] = $this->arrRedirects[$nRedirectRow]["bOnDamage"];
				$arrRedirectStates[$this->nNoRedirectStates]["nDuration"] = $this->arrRedirects[$nRedirectRow]["nDuration"];
				$this->nNoRedirectStates++;
			}
				
		}
		return ($arrRedirectStates);
	}
	
	function IsRedirectValid($objOppStates, $nOppOddPage, $bPlayerOnScore, $bPlayerOnDamage, $nResultID, $nOppResultID)
	{	
		// Check that this result hasn't already been checked (last result checked)
		if($this->nLastResultChecked != $nResultID)
		{
			// If records returned then calculate if the redirect applies and its effects
			if ($this->nNoRedirects > 0)
			{
				$nNoRedirectConditionsTrue = 0;

				// Check if the pages landed on results in a redirect
				for ( $nRedirectRow = 0; $nRedirectRow < $this->nNoRedirects ; $nRedirectRow++ )
				{
					// Check to see if onScore/onDamamge flags are valid (if not dont bothered checking it)
					if( CheckOnScore($this->$arrRedirects[$nRedirectRow]["bOnScore"], $bPlayerOnScore) && CheckOnDamage($this->$arrRedirects[$nRedirectRow]["bOnDamage"], $bPlayerOnDamage))
					{
						// By default each redirect is considered invalid UNLESS all required conditions met
						$this->arrRedirects[$nRedirectRow]["bIsValid"] = False;
						
						// If the opponents message to this player includes the page he landed on then the redirect counts
						// REMEMBER P1 has a result based on P2's book, so the result page number to check against will be held by P2
						// AND VISA VERSA!
						if ($this->arrRedirects[$nRedirectRow]["nRequired_Results_Odd_Page"] == $nOppOddPage || $this->arrRedirects[$nRedirectRow]["nRequired_Results_Odd_Page"] == Null)
						{
							// Check to see if required states are present
							if ($this->arrRedirects[$nRedirectRow]["nRequired_SpecialStates_ID"]!= Null && $this->arrRedirects[$nRedirectRow]["nRequired_SpecialStates_ID"]!= 0)
							{
								if( $objOppStates->IsFutureStatePresent($this->arrRedirects[$nRedirectRow]["nRequired_SpecialStates_ID"], $nOppResultID))
								{
									// if a match was found then indicate the redirect condition was true and exit loop
									$this->arrRedirects[$nRedirectRow]["bIsValid"] = True;
									$nNoRedirectConditionsTrue++;
									break;
								}
							}
							else
							{
								// indicate the condition was found to be true, as no other conditions were required
								$this->arrRedirects[$nRedirectRow]["bIsValid"] = True;
								$nNoRedirectConditionsTrue++;
							}			
						}
					}
				}
				
				// Indicate this result has now been checked (reguardless of outcome)
				$this->nLastResultChecked = $nResultID;
				
				// See if all redirect conditions meet and special states
				if ($this->nNoRedirects == $nNoRedirectConditionsTrue)
				{	
					return (true);
				}
				else
				{
					return (false);
				}
			}
			else
			{
				// Indicate this result has now been checked (reguardless of outcome)
				$this->nLastResultChecked = $nResultID;
				
				// no redirects therefore we dont need to override the old result page
				return (false);
			}
		}
		else
		{
			// this result has already been checked so don't need to check again
			return (false);
		}
	}
}

?>