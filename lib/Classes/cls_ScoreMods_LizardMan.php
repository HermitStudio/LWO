<?php

/***************************************************************************
 *                                cls_ScoreMods_LizardMan.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of score mods data from the DB for a new turn/game
 *			  For the LIZARD MAN Archetype only.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

Class ScoreMods_LizardMan extends ScoreMods{
	
	/* Variable Listing 
	$this-> */
	
	// None
	
	/* Constructor */
	function ScoreMods($nGameID, $strPlayerNo)
	{
		parent::ScoreMods($nGameID, $strPlayerNo);
	}
	
	/* Desctructor */
	// None
			  
	/* Methods */	
	
	function CalculateModTotal($objMove)
	{
		$nTempTotal = 0;
		
		$nTempTotal = parent::CalculateModTotal($objMove);
		
		$nTempTotal = $nTempTotal + $objMove->objGTStates->CalculateAdrenalineBonus();
		
		return ($nTempTotal);
	}
}
?>