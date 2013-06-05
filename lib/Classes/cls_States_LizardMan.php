<?php

/***************************************************************************
 *                                cls_States_LizardMan.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of special states data from the DB for a new turn/game
 *			  For the LIZARD MAN Archetype only.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class States_LizardMan extends States{

	/* Variable Listing 
	$this-> */
	
	var $nNoAdrenalineBonus = 0;
	
	/* Constructor */
	function States_LizardMan($nGameID, $strPlayerNo)
	{
		parent::States($nGameID, $strPlayerNo);
	}
	
	/* Desctructor */
	// None
			  
	/* Methods */

	function CalculateAdrenalineBonus()
	{
		$nAdrenalineStateID = '0000000005';
		$this->nNoAdrenalineBonus = 0;
		
		// loop through all special states present this turn to check for a match
		for ( $nStateRow = 0; $nStateRow <= $this->nNoStates; $nStateRow++ )
		{
			if ($this->arrGTSpecialStates[$nStateRow]["nSpecialStates_ID"] == $nAdrenalineStateID)
			{
				// if a match was found then add the bonus to the running total
				$this->nNoAdrenalineBonus++;
			}
		}	
		
		return ($this->nNoAdrenalineBonus);
	}
	
}
?>