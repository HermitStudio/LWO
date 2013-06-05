<?php

/***************************************************************************
 *                                cls_Results_Samurai.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of results data from the DB for a new turn/game
 *			  For the SAMURAI Archetype only.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/ 

Class Results_Samurai extends Results{

	/* Variable Listing 
	$this-> */
	
	// None
	
	/* Constructor */
	function Results_Samurai($nOppArchetypeID, $nPlayerPG, $nOpponentPG)
	{
		parent::Results($nOppArchetypeID, $nPlayerPG, $nOpponentPG);
	}
	
	/* Desctructor */
	// None
			  
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
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		// CHECK TO SEE IF WE HAVE SPLIT THE HELM AND REDIRECT IF NECESSARY:
		if(StripZeroFill($this->nOdd_Page) == 55)
		{
			// Check to see if the opponent was also a samurai
			if (StripZeroFill($nOppArchetypeID) == 5)
			{
				// Check to see if helm already split
				if ($objPlayerStates->IsStatePresent('0000000008'))
				{
					// Redirect Manually to Page 53:
					
					// Gather the new results data and overwrite the old data as we are now on a new results page (Redirect Sucessful!)
					$objOppResult->SetNewResult(53, $nOppArchetypeID); 
					
					// Now gather the redircts for the new result page
					$objOppResult->objRedirect->GatherRedirects($objOppResult->nResult_ID);
					
					// NOTE: this will be checked for further redirects by calling script!	
				}
			}
			else
			{
				// ASSUMPTION: IF NOT SAMURAI THEN NO HELM WORN (Redirect to P.53 by Default):
				
				// Gather the new results data and overwrite the old data as we are now on a new results page (Redirect Sucessful!)
				$objOppResult->SetNewResult(53, $nOppArchetypeID); 
				
				// Now gather the redircts for the new result page
				$objOppResult->objRedirect->GatherRedirects($objOppResult->nResult_ID);
				
				// NOTE: this will be checked for further redirects by calling script!	
			}
				
		}
		
	}
	
	function SetupRedirect()
	{
		/* Object Creation */
		$this->objRedirect = new Redirects($this->nResult_ID);	
	}
}
?>