<?php

/***************************************************************************
 *                                cls_Move_LizardMan.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of game turn/move data from the DB for a new turn
 *			  For the LIZARD MAN Archetype only.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Move_LizardMan extends Move{

	/* Variable Listing 
	$this-> */
	
	// None
	
	/* Constructor */
	function Move_LizardMan($nMoveID, $nGameID, $nTurnID, $strPlayerNo, $nCharacterID)
	{
		parent::Move($nMoveID, $nGameID, $nTurnID, $strPlayerNo, $nCharacterID);
	}
	
	/* Desctructor */
	// None
			  
	/* Methods */	  
	
	function GatherMoveData()
	{
		///////////////////////////////////////////////////////////////////////////////////////////////////
		/* Object Creation 
		GT = Game Turn - e.g. generated at the end of the last turn (when this script was last called) */
		$this->objGTStates = new States_LizardMan($this->nGame_ID, $this->strPlayerType);
		
		// REPLACE WITH LIZARD MAN CODE FOR SCORE MODS (inc ADRENALINE etc)
		$this->objGTScoreMods = new ScoreMods_LizardMan($this->nGame_ID, $this->strPlayerType); 
		
		$this->objGTConds = new Conditions($this->nGame_ID); 
		
		// Gather the conditions for the score mods so we can check to see if they are valid later
		$this->objGTConds->GatherModConds($this->objGTScoreMods->GetScoreModArray(),$this->objGTScoreMods->GetNoMods());
	}
}

?>