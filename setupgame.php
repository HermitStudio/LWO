<?php

/***************************************************************************
 *                                setupgame.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To set up a LWO combat game ready for users to play with
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(1)
 *
 ***************************************************************************/
 
/////////// Setup Variables ////////////////////////////////////////////////////////////////////////////////////////

// Check required GET Variables are present: GameID
IF ($gameid=="") { exit(); }

$strURLPrefix = "./";

// Set up required variables and class files (done inside the file called)
@include($strURLPrefix . "config/lwo_init.php"); 

// Setup the DB Interfacing Script 
$objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);

// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
if ($objDataSource->CONS_RETURN == false)
{
	exit();
}

////////// Gather Game Data from DB ////////////////////////////////////////////////////////////////////////////////

// Initialise the the player objects with details: $nGameID, $nTurnID, $strPlayerNo = [P1|P2] (turn=null = setup init)
$objPlayer1 = new Player_Setup($gameid, "P1");
$objPlayer2 = new Player_Setup($gameid, "P2");

////////// Gather Starting Positions Data - P.57 ///////////////////////////////////////////////////////////////////

// No moves were made so the opposition PG paramaters are null to ensure the code understands its the first turn
$objPlayer1->GatherResultData($objPlayer2->GetArchetypeID());
$objPlayer2->GatherResultData($objPlayer1->GetArchetypeID());

$objPlayer1->SetupRedirect();
$objPlayer2->SetupRedirect();

// Recursively check to see if any more redirects have been found and keep redirecting until run out
while ($objPlayer1->GetLastResultChecked() != $objPlayer1->GetResultID() && $objPlayer2->GetLastResultChecked() != $objPlayer2->GetResultID())
{
	$objPlayer1->GatherRedirectData($objPlayer2->GetResults(), $objPlayer2->GetArchetypeID());
	$objPlayer2->GatherRedirectData($objPlayer1->GetResults(), $objPlayer1->GetArchetypeID());
}

///////// Setup the First Turn ////////////////////////////////////////////////////////////////////////////////////

// Sort out the Height modifications for Red/Orange Moves
$objPlayer1->CalculateHeightMod($objPlayer2->GetHeight());
$objPlayer2->CalculateHeightMod($objPlayer1->GetHeight());

// Setup First Turn Data
$strSQL = "INSERT INTO GameTurns (Game_ID,P1_GfxLocation,P1_HP,P1_Height,P2_GfxLocation,P2_HP,P2_Height) Values (" . $gameid . ",'" . $objPlayer1->GetGfxLocation() . "'," . $objPlayer1->GetHealth() . "," . $objPlayer1->GetHeight() . ",'" . $objPlayer2->GetGfxLocation() . "'," . $objPlayer2->GetHealth() . "," . $objPlayer2->GetHeight() . ");";
$arrSQLResults = $objDataSource->Query($strSQL);

// Get the first Turn ID for the Game Record (use later when update status at end of script)
$nGameTurnID = $objDataSource->InsertID();

///////// Setup Gaming Data for First Turn ////////////////////////////////////////////////////////////////////////

$objPlayer1->GatherNextTurnsList($objPlayer2->GetResultID(), True);
$objPlayer2->GatherNextTurnsList($objPlayer1->GetResultID(), True);

///////// Set Game to Ready to Play ///////////////////////////////////////////////////////////////////////////////

// Set Game Data and Status (Waiting for Turn information to be selected)
$strSQL = "UPDATE Games SET 1stGameTurn_ID = " . Zerofill($nGameTurnID, 10) . ", Status = 'Turn' WHERE ID = " . $gameid . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

///////// Test Data Gathering (Uncomment) /////////////////////////////////////////////////////////////////////////

// $strURL = "testing/turndisplay.php?nP1ResultPage=57&nP1ArchetypeID=" . $objPlayer1->GetArchetypeID() . "&nP2ResultPage=57&nP2ArchetypeID=" . $objPlayer2->GetArchetypeID();
// echo "<meta http-equiv=\"Refresh\" content=\"0; URL=$strURL\">"; 

// echo "SETUP GAME SCRIPT COMPLETE!";

?>