<?php

/***************************************************************************
 *                                cls_Move_Samurai.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of game turn/move data from the DB for a new turn
 *			  For the SAMURAI Archetype only.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(3)
 *
 ***************************************************************************/

class Move_Samurai extends Move{

	/* Variable Listing 
	$this-> */
	
	// None
	
	/* Constructor */
	function Move_Samurai($nMoveID, $nGameID, $nTurnID, $strPlayerNo, $nCharacterID)
	{
		parent::Move($nMoveID, $nGameID, $nTurnID, $strPlayerNo, $nCharacterID);
	}
	
	/* Desctructor */
	// None
			  
	/* Methods */	 
	
	function GatherResultData($nOppArchetypeID, $nOpponentPG, $nPlayerPG)
	{
		$this->objResult = new Results_Samurai($nOppArchetypeID, $nPlayerPG, $nOpponentPG);	
	} 
}

?>