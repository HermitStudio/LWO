<?php

/***************************************************************************
 *                                processturn.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To compile all the results and compute all the addtional effects to work out the effect of a turn
 *			(such as special states, redirects, conditions, score modifications, damamge and item effects)	
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(1)
 *
 ***************************************************************************/


////////// Setup Variables ////////////////////////////////////////////////////////////////////////////////////////

// Check required GET Variables are present: GameID, TurnID
IF ($gameid=="") { exit(); }
IF ($turnid=="") { exit(); }

$strURLPrefix = "./";

$IsEnd = False;

// Set up required variables and class files (done inside the file called)
@include($strURLPrefix ."config/lwo_init.php"); 
//echo "pt: 1, ";
// Setup the DB Interfacing Script 
$objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);

// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
if ($objDataSource->CONS_RETURN == false)
{
	exit();
}
//echo "pt: 2, ";
//////////  Declare Base Variables/Objects ////////////////////////////////////////////////////////////////////////

// Setup Both Players - this includes setting up moves, results/redirects and items etc (held inside the classes)
// Required Parameters: $nGameID, $nTurnID, $strPlayerNo = ['P1'|'P2']
$objPlayer1 = new Player($gameid, $turnid, "P1");
$objPlayer2 = new Player($gameid, $turnid, "P2");
//echo "pt: 3, ";
////////// Gather Selected Move Results ///////////////////////////////////////////////////////////////////////////

$objPlayer1->GatherResultData($objPlayer2->GetArchetypeID(), $objPlayer2->GetPG());
$objPlayer2->GatherResultData($objPlayer1->GetArchetypeID(), $objPlayer1->GetPG());
//echo "pt: 4, ";

// Get the Redirects on the first run
$objPlayer1->SetupRedirect();
$objPlayer2->SetupRedirect();

// Now recursively check to see if any more redirects have been found and keep redirecting until run out
while ($objPlayer1->GetLastResultChecked() != $objPlayer1->GetResultID() && $objPlayer2->GetLastResultChecked() != $objPlayer2->GetResultID())
{
	$objPlayer1->GatherRedirectData($objPlayer2->GetResults(), $objPlayer2->GetArchetypeID());
	$objPlayer2->GatherRedirectData($objPlayer1->GetResults(), $objPlayer1->GetArchetypeID());
}

//echo "pt: 5, ";
////////// Pre-enact States ///////////////////////////////////////////////////////////////////////////////////////

// Check to see if the height (and therefore their height modiferes) have changed or the players health
// Also this includes executing any specialised code for the special states invoked (eg spliting helm/adrenalin etc)
$objPlayer1->EnactStates();
$objPlayer2->EnactStates();
//echo "pt: 6, ";
////////// Calulate Combat Damage (Including All GT Score Mods) ///////////////////////////////////////////////////

$objPlayer1->CalculateScore();
$objPlayer2->CalculateScore();
//echo "pt: 7, ";
////////// Inflict Total Damage ///////////////////////////////////////////////////////////////////////////////////

$objPlayer1->InflictDamage($objPlayer2->GetScoreTotal());
$objPlayer2->InflictDamage($objPlayer1->GetScoreTotal());
//echo "pt: 8, ";
////////// Did someone Escape this Turn? //////////////////////////////////////////////////////////////////////////

if ($objPlayer1->GetMoveID() == -1 || $objPlayer2->GetMoveID() == -1)
{
	//echo "pt: 9, ";
	// Update Game Status to 'Compile' - to indicate comping results outcome (client still has to wait tho!)
	$strSQL = "UPDATE Games Set Status='Compile' WHERE ID = " . $gameid . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	// Update CURRENT Turn Data (but not the NextTurn_ID as there is no next turn) with Details: P1_DamageDone, P1_HeightMod, P2_DamageDone, P2_HeightMod
	$strSQL = "UPDATE GameTurns SET P1_DamageDone = " . $objPlayer1->GetScoreTotal() . ", P1_HeightMod = " . $objPlayer1->GetHeightMod() . ", P1_Result_ID = " . ZeroFill($objPlayer1->GetResultID(),10) . ", P2_DamageDone = " . $objPlayer2->GetScoreTotal() . ", P2_HeightMod = " . $objPlayer2->GetHeightMod() . ", P2_Result_ID = " . ZeroFill($objPlayer2->GetResultID(),10) . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	if ($objPlayer1->GetMoveID() == -1)
	{
		// If it was player one that escaped then award player two experiance equal to damamge done
		$nTempExP = $objPlayer1->GetStartingHP() - $objPlayer1->GetHealth();
		$objPlayer2->SetExperianceEarned($nTempExP);
	}
	elseif ($objPlayer1->GetMoveID() == -1)
	{
		// If it was player two that escaped then award player one experiance equal to damamge done
		$nTempExP = $objPlayer2->GetStartingHP() - $objPlayer2->GetHealth();
		$objPlayer1->SetExperianceEarned($nTempExP);
	}
	
	// Archiving of Game (move archive db table/zip/text file)
	//... (only fill in when this becomes necessary)
	
	// Remove Temporary Gaming Data
	$strSQL = "DELETE FROM GameTurns_SpecialStates WHERE Game_ID = " . $gameid . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);

	$strSQL = "DELETE FROM GameTurns_ScoreMods WHERE Game_ID = " . $gameid . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	$strSQL = "DELETE FROM GameTurns_Conditions WHERE Game_ID = " . $gameid . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);

	// Update Game Record with final outcome data of the game result: P1_ExpAwarded, P2_ExpAwarded, P1_Final_HP, P2_Final_HP, Status
	$strSQL = "UPDATE Games Set P1_ExpAwarded " . $objPlayer1->GetExperianceEarned() . ", P2_ExpAwarded = " . $objPlayer2->GetExperianceEarned() . ", P1_Final_HP = " . $objPlayer1->GetHealth() . ", P2_Final_HP = " . $objPlayer2->GetHealth() . ", Status='Closed' WHERE ID = " . $gameid . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	$IsEnd = True;
	// THE END!
}

////////// Did someone Win this Turn? /////////////////////////////////////////////////////////////////////////////

// (Only continue if the game hasn't already ended!)
if ($IsEnd == False)
{
	// If someone has won (YES): 
	if ($objPlayer1->GetHealth() <= 0 || $objPlayer2->GetHealth() <= 0 )
	{
		//echo "pt: 10, ";
		// NOT DOING FINALISE SCRIPT - NOT WORTH IT FOR SO LITTLE CODE
		// (so the code is what would have been in the finalise script)
		
		// Update Game Status to 'Compile' - to indicate comping results outcome (client still has to wait tho!)
		$strSQL = "UPDATE Games Set Status='Compile' WHERE ID = " . $gameid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "pt: 11, ";
		// Work out who won and if dead or unconscious (Game-Over Status)
		$strP1GameResult = $objPlayer1->GetGameOverStatus();
		$strP2GameResult = $objPlayer2->GetGameOverStatus();
		//echo "pt: 12, ";
		// Update CURRENT Turn Data (but not the NextTurn_ID as there is no next turn) with Details: P1_DamageDone, P1_HeightMod, P2_DamageDone, P2_HeightMod
		$strSQL = "UPDATE GameTurns SET P1_DamageDone = " . $objPlayer1->GetScoreTotal() . ", P1_HeightMod = " . $objPlayer1->GetHeightMod() . ", P1_Result_ID = " . $objPlayer1->GetResultID() . ", P2_DamageDone = " . $objPlayer2->GetScoreTotal() . ", P2_HeightMod = " . $objPlayer2->GetHeightMod() . ", P2_Result_ID = " . $objPlayer2->GetResultID() . " WHERE ID = " . $turnid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "pt: 13, ";
		// Calculate Experience Points won
		if($strP1GameResult == "WINNER")
		{
			//echo "pt: 14, ";
			// If player 1 WON then it gets experiance equal to player 2's starting Health Points
			$objPlayer1->SetExperianceEarned($objPlayer2->GetStartingHP());
			
			
			$strSQL = "UPDATE Characters SET ExperiencePool = (ExperiencePool + " . $objPlayer1->GetExperianceEarned() . ") WHERE ID = " . $objPlayer1->GetCharacterID() . ";";
			////echo "<BR>SQL: " . $strSQL;
			$arrSQLResults = $objDataSource->Query($strSQL);
			
		}
		else
		{
			//echo "pt: 15, ";
			// If player 2 WON then it gets experiance equal to player 1's starting Health Points
			$objPlayer2->SetExperianceEarned($objPlayer1->GetStartingHP());
			
			
			$strSQL = "UPDATE Characters SET ExperiencePool = (ExperiencePool + " . $objPlayer2->GetExperianceEarned() . ") WHERE ID = " . $objPlayer2->GetCharacterID() . ";";
			//echo "<BR>SQL: " . $strSQL;
			$arrSQLResults = $objDataSource->Query($strSQL);
			
		}
		
		// Calculate any other Awards/Punishments/Stats (e.g. Abort punishments etc)
		//... (only fill in if these are necessary)
		
		// Archiving of Game (move archive db table/zip/text file)
		//... (only fill in when this becomes necessary)
		
		// If a character is dead then mark it in the DB so this character cannot be picked for combat again
		if($strP1GameResult == "DEAD")
		{
			$strSQL = "UPDATE Characters SET Status = 'Dead' WHERE ID = " . $objPlayer1->GetCharacterID() . ";";
			$arrSQLResults = $objDataSource->Query($strSQL);
		}
		
		if($strP2GameResult == "DEAD")
		{
			$strSQL = "UPDATE Characters SET Status = 'Dead' WHERE ID = " . $objPlayer2->GetCharacterID() . ";";
			$arrSQLResults = $objDataSource->Query($strSQL);
		}
		//echo "pt: 16, ";
		// Remove Temporary Gaming Data
		$strSQL = "DELETE FROM GameTurns_SpecialStates WHERE Game_ID = " . $gameid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
	
		$strSQL = "DELETE FROM GameTurns_ScoreMods WHERE Game_ID = " . $gameid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		$strSQL = "DELETE FROM GameTurns_Conditions WHERE Game_ID = " . $gameid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		// Update Game Record with final outcome data of the game result: P1_ExpAwarded, P2_ExpAwarded, P1_Final_HP, P2_Final_HP, Status
		$strSQL = "UPDATE Games SET P1_ExpAwarded = " . ZeroFill($objPlayer1->GetExperianceEarned(),6) . ", P2_ExpAwarded = " . ZeroFill($objPlayer2->GetExperianceEarned(),6) . ", P1_Final_HP = " . $objPlayer1->GetHealth() . ", P2_Final_HP = " . $objPlayer2->GetHealth() . ", Status = 'Closed' WHERE ID = " . $gameid . ";";
		
		//echo "<BR>SQL: " . $strSQL;
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "pt: 17, ";
		
		$IsEnd = True;
		// THE END!
	}
	// If game continues (NO):
	else
	{	
		////////// GATHER NEXT TURN'S LIST ////////////////////////////////////////////////////////////////////////////////
		//echo "pt: 18, ";
		// Sort out the list of NEXT TURN'S valid states, score mods and conditions - generated from THIS TURN'S RESULT
		// SEND THE OPPOENETS RESULT ID SO THE RESULTS CAN BE SWAPPED OVER (LIKE 'TELL OPPONENT')
		$objPlayer1->GatherNextTurnsList($objPlayer2->GetResultID(), False);
		$objPlayer2->GatherNextTurnsList($objPlayer1->GetResultID(), False);	
		//echo "pt: 19, ";
		
		////////// SETUP NEXT TURN ////////////////////////////////////////////////////////////////////////////////////////
		
		// Setup the NEXT Turn Record: Game_ID, P1_Height, P1_GfxLocation, P1_HP, P2_Height, P2_GfxLocation, P2_HP (graphics = new result images)
		$strSQL = "INSERT INTO GameTurns (Game_ID, P1_Height, P1_GfxLocation, P1_HP, P2_Height, P2_GfxLocation, P2_HP) Values (" . $gameid . "," . $objPlayer1->GetHeight() . ",'" . $objPlayer1->GetNewGfx() . "'," . $objPlayer1->GetHealth() . "," . $objPlayer2->GetHeight() . ",'" . $objPlayer2->GetNewGfx() . "'," . $objPlayer2->GetHealth() . ");";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		// Get the ID for new reocrd so it can be linked to the old record (turn link chain)
		$nTempNextID = $objDataSource->InsertID();
		
		// Update the CURRENT Game Turn Record with Details: P1_DamageDone, P1_HeightMod, P2_DamageDone, P2_HeightMod, NextGameTurn_ID
		$strSQL = "UPDATE GameTurns SET P1_DamageDone = " . $objPlayer1->GetScoreTotal() . ", P1_HeightMod = " . $objPlayer1->GetHeightMod() . ", P1_Result_ID = " . $objPlayer1->GetResultID() . ", P2_DamageDone = " . $objPlayer2->GetScoreTotal() . ", P2_HeightMod = " . $objPlayer2->GetHeightMod() . ", P2_Result_ID = " . $objPlayer2->GetResultID() . ", NextGameTurn_ID = " . $nTempNextID . " WHERE ID = " . $turnid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		// Update Game Status (to indicate finsihed process turn so client can gather data)
		$strSQL = "UPDATE Games Set Status='Turn' WHERE ID = " . $gameid . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "pt: 20, ";
	}
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

?>