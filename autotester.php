<?php

/***************************************************************************
 *                                autotester.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To handle the processing of games in an automated way for logic and load testing of the system.
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.8(4)
 *
 ***************************************************************************/
 
/////////// Setup Variables //////////////////////////////////////////////////////////////////////////////////////// 
 
 // Check required GET Variables are present
IF ($_GET[nogames]=="") 
{ 
	$nNoGamesPlayed = 1; 
}
else
{ 
	$nNoGamesPlayed = $_GET[nogames];
}

// SCRIPT CONSTANTS - CHANGE THESE TO TEST DIFFERENT ARCHETYPES/CHARACTERS/USERS etc
$nAUTO_P1_Archetype_ID = 7;
$nAUTO_P2_Archetype_ID = 4;
$nAUTO_P1_Character_ID = 20;
$nAUTO_P2_Character_ID = 16;
$nAUTO_P1_User_ID = 39;
$nAUTO_P2_User_ID = 38;

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

/*
// Setup the DB Interfacing Script 
$objMODDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);

// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
if ($objMODDataSource->CONS_RETURN == false)
{
	exit();
}
*/
/////////// Play Through Each Game (loop) //////////////////////////////////////////////////////////////////////////
for ( $nCount = 0; $nCount < $nNoGamesPlayed; $nCount++)
{
	echo "<BR><BR>PROCESSING GAME " . ($nCount + 1) . ":<BR>";
	
	////////// Create Basic Game Record ////////////////////////////////////////////////////////////////////////
	
	$bIsGameEndded = False;
	$nTurnNumber = 0;
	
	$nTempName = "AUTOTEST " . date("Y-m-d H:i:s") . " Game #" . ($nCount + 1);  
	
	$strSQL = "INSERT INTO Games (Name, Zone_ID, P1_User_ID, P1_Character_ID, P2_User_ID, P2_Character_ID, Status) VALUES ('" . $nTempName . "', 1, " . $nAUTO_P1_User_ID . ", " . $nAUTO_P1_Character_ID . ", " . $nAUTO_P2_User_ID . ", " . $nAUTO_P2_Character_ID . ", 'Setup');";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	$nCurrentGameID = $objDataSource->InsertID();
	
	////////// Setup the Game and First Turn ///////////////////////////////////////////////////////////////////
	
	$gameid = ZeroFill($nCurrentGameID,10);
	@include ('./setupgame.php');
	
	// Keep picking moves and playing turns until the game is ended
	while ($bIsGameEndded == False)
	{
		$nTurnNumber++;
		
		// Find out the Current Turn ID for later use (process turn script) 
		$strSQL = "SELECT MAX(ID) FROM GameTurns WHERE Game_ID = " . $nCurrentGameID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$nCurrentTurnID = $arrSQLData[0];
		}
		else
		{
			// There MUST be a new turn record, and if there isn't there's a bug somewhere!
			exit();
		}
		
		//echo "at 1, ";
		////////// Pick Legal Moves Randomly ///////////////////////////////////////////////////////////////////////
		
		// Check GT conditions and build up legal moves list before picking one at random:
// >>	
// echos in: proces turn, player, move, results (uncomment)
// BUILD TWO SEPERATE SQL STRING OR & AND (and then join them together!)

		// PLAYER ONE:
		
		// Get any score mod conditions available
		//$strSQL = "SELECT Score_Mods.Conditions_ID FROM GameTurns_ScoreMods INNER JOIN Score_Mods ON GameTurns_ScoreMods.Score_Mods_ID = Score_Mods.ID WHERE GameTurns_ScoreMods.Player = 'P1' AND GameTurns_ScoreMods.Game_ID = " . $nCurrentGameID . ";";
		//$arrSQLMODResults = $objMODDataSource->Query($strSQL);
		
		$strSQL = "SELECT Conditions.condition_sql, Conditions.ID FROM GameTurns_Conditions INNER JOIN Conditions ON GameTurns_Conditions.Conditions_ID = Conditions.ID WHERE GameTurns_Conditions.Player = 'P1' AND GameTurns_Conditions.Game_ID = " . $nCurrentGameID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		// If conditions were returned then they need to be added to the restriction of the legal move list
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			$nFirstORLoop = True;
			$bIsER = False;
			$strORSQL = "";
			$strANDSQL = "";
			
			while($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				$nTempCondSQL = $arrSQLData[0];
				
				// Check to see if the condition is Extened Range, and if so force the move to be ER (later)
				if ($nTempCondSQL == "Manuevers.Category='Extended Range'")
				{
					$bIsER = True;
				}
				
				// Only add 'OR' in SQL if the condition is a positive statememnt
				if( strstr($nTempCondSQL,'!') == FALSE && strstr($nTempCondSQL,'NOT LIKE') == FALSE) 
				{
					// We don't want an OR at the begining so the first one mustn't have
					if ($nFirstORLoop == True)
					{
						$nFirstORLoop = False;
						$strORSQL = $strORSQL . $nTempCondSQL;
					}
					else
					{
						$strORSQL = $strORSQL . " OR " . $nTempCondSQL;
					}
				}
				else
				{
					$strANDSQL = $strANDSQL . " AND " . $nTempCondSQL;
				}
			}
		}
		
		// Add Extended range condition if required (as if this state is present a ER move MUST be selected!)
		if ($bIsER == True)
		{
			$strANDSQL = $strANDSQL . " AND IsExtended = 1";
		}
		
		$strANDSQL = $strANDSQL . " AND Archetype_ID = " . $nAUTO_P1_Archetype_ID . " AND IsNull = 0;";
		
		// BUILD COMPLETE SQL STATEMENT OR FIRST IN BRACKETS AND LAST OUTSIDE BRACKETS
		$strSQL = "SELECT Manuevers.ID FROM Manuevers WHERE ";
		
		if($strORSQL != "")
		{
			$strSQL = $strSQL . "(" . $strORSQL . ")" . $strANDSQL;
		}
		else
		{
			$strSQL = $strSQL . ltrim($strANDSQL, " AND ");
		}
		
		//echo "<BR><BR>SQL (1): " . $strSQL;
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "at 2, ";
		
		// Select one move from Random...
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			//echo "at 1, ";
			/*
			if ($objMODDataSource->ValidateQuery($arrSQLMODResults))
			{
				echo "at: 0, ";
				$nP1_Move_ID = 0;
				
				while($arrSQLData = mysql_fetch_row($arrSQLResults) && $nP1_Move_ID == 0)
				{
					echo "at: 1, ";
					while($arrSQLMODData = mysql_fetch_row($arrSQLMODResults))
					{
						echo "at: 2, ";
						// if a score mod condition was found and a valid move was found that matches it
						// then select that move
						$nTempMODCondID = $arrSQLMODData[0];
						$nTempGTCondSQL = $arrSQLData[0];
						$nTempGTCondID = $arrSQLData[1];
						if ($nTempMODCondID == $nTempGTCondID)
						{
							echo "at: 3, ";
							$nP1_Move_ID = $nTempGTCondID;
						}
					}
					
					// if no matches were found then select the latest move and then break the while loops
					if ($nP1_Move_ID == 0)
					{
						echo "at: 4, ";
						$nP1_Move_ID = $nTempGTCondSQL;
					}
				}
				echo "at: 5, ";
			}
			else
			{*/
				mysql_data_seek($arrSQLResults, rand(0,(mysql_num_rows($arrSQLResults) -1)));
				$arrSQLData = mysql_fetch_row($arrSQLResults);
				$nP1_Move_ID = $arrSQLData[0];
				//echo "at 3, ";
			//}
		}
		else
		{
			// Data or Logic problem as there should always be at least one move available!
			//echo "at 4, ";
			exit();
		}
		
		// PLAYER TWO:
		// Get any score mod conditions available
		//$strSQL = "SELECT Score_Mods.Conditions_ID FROM GameTurns_ScoreMods INNER JOIN Score_Mods ON GameTurns_ScoreMods.Score_Mods_ID = Score_Mods.ID WHERE GameTurns_ScoreMods.Player = 'P2' AND GameTurns_ScoreMods.Game_ID = " . $nCurrentGameID . ";";
		//$arrSQLMODResults = $objDataSource->Query($strSQL);
		
		$strSQL = "SELECT Conditions.condition_sql FROM GameTurns_Conditions INNER JOIN Conditions ON GameTurns_Conditions.Conditions_ID = Conditions.ID WHERE GameTurns_Conditions.Player = 'P2' AND GameTurns_Conditions.Game_ID = " . $nCurrentGameID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);	

		// If conditions were returned then they need to be added to the restriction of the legal move list
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			$nFirstORLoop = True;
			$bIsER = False;
			$strORSQL = "";
			$strANDSQL = "";
			
			while($arrSQLData = mysql_fetch_row($arrSQLResults))
			{
				$nTempCondSQL = $arrSQLData[0];
				
				// Check to see if the condition is Extened Range, and if so force the move to be ER (later)
				if ($nTempCondSQL == "Manuevers.Category='Extended Range'")
				{
					$bIsER = True;
				}
				
				// Only add 'OR' in SQL if the condition is a positive statememnt
				if( strstr($nTempCondSQL,'!') == FALSE && strstr($nTempCondSQL,'NOT LIKE') == FALSE) 
				{
					// We don't want an OR at the begining so the first one mustn't have
					if ($nFirstORLoop == True)
					{
						$nFirstORLoop = False;
						$strORSQL = $strORSQL . $nTempCondSQL;
					}
					else
					{
						$strORSQL = $strORSQL . " OR " . $nTempCondSQL;
					}
				}
				else
				{
					$strANDSQL = $strANDSQL . " AND " . $nTempCondSQL;
				}
			}
		}
		
		// Add Extended range condition if required (as if this state is present a ER move MUST be selected!)
		if ($bIsER == True)
		{
			$strANDSQL = $strANDSQL . " AND IsExtended = 1";
		}
		
		$strANDSQL = $strANDSQL . " AND Archetype_ID = " . $nAUTO_P2_Archetype_ID . " AND IsNull = 0;";
		
		// BUILD COMPLETE SQL STATEMENT OR FIRST IN BRACKETS AND LAST OUTSIDE BRACKETS
		$strSQL = "SELECT Manuevers.ID FROM Manuevers WHERE ";
		
		if($strORSQL != "")
		{
			$strSQL = $strSQL . "(" . $strORSQL . ")" . $strANDSQL;
		}
		else
		{
			$strSQL = $strSQL . ltrim($strANDSQL, " AND ");
		}
		
		//echo "<BR><BR>SQL (2): " . $strSQL;
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "at 5.1, ";
		// Select one move from Random...
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			/*
			if ($objMODDataSource->ValidateQuery($arrSQLMODResults))
			{
				$nP2_Move_ID = 0;
				
				while($arrSQLData = mysql_fetch_row($arrSQLResults) && $nP2_Move_ID == 0)
				{
					while($arrSQLMODData = mysql_fetch_row($arrSQLMODResults))
					{
						// if a score mod condition was found and a valid move was found that matches it
						// then select that move
						if ($arrSQLMODData[0] == $arrSQLData[1])
						{
							$nP2_Move_ID = $arrSQLData[1];
							
						}
					}
					
					// if no matches were found then select the latest move and then break the while loops
					if ($nP2_Move_ID == 0)
					{
						$nP2_Move_ID = $arrSQLData[0];
					}
				}
			}
			else
			{*/
				mysql_data_seek($arrSQLResults, rand(0,(mysql_num_rows($arrSQLResults) -1)));
				$arrSQLData = mysql_fetch_row($arrSQLResults);
				$nP2_Move_ID = $arrSQLData[0];
				
			//}
			//echo "at 5.2, ";
		}
		else
		{
			// Data or Logic problem as there should always be at least one move available!
			//echo "at 6, ";
			exit();
		}
		
		// Update the DB Turn record with Move ID's (for later use)
		$strSQL = "UPDATE GameTurns SET P1_Manuever_ID = " . $nP1_Move_ID . ", P2_Manuever_ID = " . $nP2_Move_ID . " WHERE ID = " . $nCurrentTurnID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		//echo "at 7, ";
		////////// Process Turn ////////////////////////////////////////////////////////////////////////////////////
		
		$gameid = $nCurrentGameID; 
		$turnid = $nCurrentTurnID;
		@include('./processturn.php');
		//echo "at 8, ";
		////////// Display Results /////////////////////////////////////////////////////////////////////////////////
		
		// Find out the two Result Pages for each Player so they can be displayed:  
			
		//PLAYER ONE:
		$strSQL = "SELECT Results.Odd_Page FROM Results INNER JOIN GameTurns ON Results.ID = GameTurns.P1_Result_ID WHERE GameTurns.ID = " . $nCurrentTurnID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$nP1_Result_Page = StripZeroFill($arrSQLData[0]);
		}
		
		//PLAYER TWO:
		$strSQL = "SELECT Results.Odd_Page FROM Results INNER JOIN GameTurns ON Results.ID = GameTurns.P2_Result_ID WHERE GameTurns.ID = " . $nCurrentTurnID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			$arrSQLData = mysql_fetch_row($arrSQLResults);
			$nP2_Result_Page = StripZeroFill($arrSQLData[0]);
		}
		
		// Display Turn Results 
		echo "<BR><a href='./testing/turndisplay.php?nP1ResultPage=$nP2_Result_Page&nP1ArchetypeID=$nAUTO_P1_Archetype_ID&nP2ResultPage=$nP1_Result_Page&nP2ArchetypeID=$nAUTO_P2_Archetype_ID' target='javascript: new window();'>Click here to see turn " . $nTurnNumber . " results...</a>";
			
		////////// Did the game end? ///////////////////////////////////////////////////////////////////////////////
		//echo "at 10, ";
		$strSQL = "SELECT Status FROM Games WHERE Status = 'Closed' AND ID = " . $nCurrentGameID . ";";
		$arrSQLResults = $objDataSource->Query($strSQL);
		
		if ($objDataSource->ValidateQuery($arrSQLResults))
		{
			// Display Game Results to Tester
			echo "<BR><BR><a href='./testing/gamedisplay.php?gameid=$nCurrentGameID' target='javascript: new window();'>Click here to see the Complete Data Print out for Game " . ($nCount + 1) . "</a>";
			
			$bIsGameEndded = True;
		}
		else
		{
			$bIsGameEndded = False;
		}		
	}
}	

// Indicate the Auto Tester has finished
echo "<BR><BR>AUTO-TESTER: Finished Processing Game(s).";	

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////