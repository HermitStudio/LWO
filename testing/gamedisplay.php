<?php

/***************************************************************************
 *                                gamedisplay.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To display data gathered by the setupgame/process turn events
 *			  This will get used by automated testing later on but used to make sure data/logic correct
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(1)
 *
 ***************************************************************************/
 
 /////////// Setup Variables //////////////////////////////////////////////////////////////////////////////////////// 

 // Check required GET Variables are present: GameID, TurnID
IF ($gameid=="") { exit(); }

$bNeedEngineClasses = False;
$strURLPrefix = "../";

// Set up required variables and class files (done inside the file called)
@include($strURLPrefix . "config/lwo_init.php"); 

// Setup the DB Interfacing Script 
$objDataSource = new DSM_Extend($db_host, $db_user, $db_pass, $db_database);

// Handle DS Constructor Fatal Errors - Exit, the calling program will timeout and handle output to user
if ($objDataSource->CONS_RETURN == false)
{
	exit();
}

?>

<html>
	<head><title>LWO (Alpha) Testing > Game Display Script...</title></head>
	<body>
				
<?php	

////////// Gather Drop Down Data from DB //////////////////////////////////////////////////////////////////////////

echo "<form action='./gamedisplay.php' method='GET'>";
	echo "<table border=1 width=50% align=center cellpadding=2 cellspacing=0>";	
		echo "<tr>";
		echo "<td align=center><select name=gameid>";	
				
				// Get Archetype ID/Name from the DB
				$strSQL = "SELECT ID, Name FROM Games;";
				$arrSQLResults = $objDataSource->Query($strSQL);
				
				// Check to see if query returned
				if ($objDataSource->ValidateQuery($arrSQLResults))
				{
					while($arrSQLData = mysql_fetch_row($arrSQLResults))
					{
						// Check to see if this value is has been pre-selected and mark it if so
						$nTempGameID = $arrSQLData[0];
						 
						if ($nTempGameID == $gameid)
						{
							// Setup the drop down box
							echo "<option value=" .$nTempGameID . " selected>" . $arrSQLData[1] . " (ID: " . ltrim($nTempGameID, "0") . ") </option>";
						}
						else
						{
							// Setup the drop down box
							echo "<option value=" .$nTempGameID . ">" . $arrSQLData[1] . " (ID: " . ltrim($nTempGameID, "0") . ") </option>";
						}
					}
				}
				
			echo "</select></td>";
		echo "</tr>";
		echo "<tr align=center>";
			echo "<td colspan=2><input type=submit value='Go'></td>";
		echo "</tr>";
	echo "</table>";
echo "</form>";	

////////// Gather Game Data from DB ///////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT * FROM Games WHERE ID = " . $gameid . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	// Pull the DB Data into script variables for later use
	$arrSQLData = mysql_fetch_row($arrSQLResults);
	
	echo "<table border=1 width=50% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=2 align=center><b>GAME DATA:</b></td>";
		echo "</tr>";
			echo "<tr><td align=right width=50%>(Games) ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[0] . "</td></tr>";
			echo "<tr><td align=right width=50%>Name:</td><td align=left width=50%>&nbsp; " . $arrSQLData[1] . "</td></tr>";
			echo "<tr><td align=right width=50%>Zone_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[2] . "</td></tr>";
			echo "<tr><td align=right width=50%>RestrictedKey:</td><td align=left width=50%>&nbsp; " . $arrSQLData[3] . "</td></tr>";
			echo "<tr><td align=right width=50%>1stGameTurn_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[4] . "</td></tr>";
			echo "<tr><td align=right width=50%>P1_User_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[5] . "</td></tr>";
			echo "<tr><td align=right width=50%>P1_Character_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[6] . "</td></tr>";
			echo "<tr><td align=right width=50%>P1_Final_HP:</td><td align=left width=50%>&nbsp; " . $arrSQLData[7] . "</td></tr>";
			echo "<tr><td align=right width=50%>P1_ExpAwarded:</td><td align=left width=50%>&nbsp; " . $arrSQLData[8] . "</td></tr>";
			echo "<tr><td align=right width=50%>P2_User_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[9] . "</td></tr>";
			echo "<tr><td align=right width=50%>P2_Character_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[10] . "</td></tr>";
			echo "<tr><td align=right width=50%>P2_Final_HP:</td><td align=left width=50%>&nbsp; " . $arrSQLData[11] . "</td></tr>";
			echo "<tr><td align=right width=50%>P2_ExpAwarded:</td><td align=left width=50%>&nbsp; " . $arrSQLData[12] . "</td></tr>";
			echo "<tr><td align=right width=50%>Status:</td><td align=left width=50%>&nbsp; " . $arrSQLData[13] . "</td></tr>";
	echo "</table>";
	echo "<br>";
}
else
{ 
	// Exit script as query failed 
	exit();
}

////////// Gather Turn Data from DB ///////////////////////////////////////////////////////////////////////////////

//$strSQL = "SELECT ID, P1_GfxLocation, P1_HP, P1_Height, P1_HeightMod, P1_Manuever_ID, P1_Result_ID, P1_DamageDone, P2_GfxLocation, P2_HP, P2_Height, P2_HeightMod, P2_Manuever_ID, P2_Result_ID, P2_DamageDone, NextGameTurn_ID FROM GameTurns WHERE Game_ID = " . $gameid . " ORDER BY NextGameTurn_ID ASC;";
$strSQL = "SELECT GameTurns.ID, GameTurns.P1_GfxLocation, GameTurns.P1_HP, GameTurns.P1_Height, GameTurns.P1_HeightMod, GameTurns.P1_Manuever_ID, T1.Category, T1.Name, GameTurns.P1_Result_ID, GameTurns.P1_DamageDone, GameTurns.P2_GfxLocation, GameTurns.P2_HP, GameTurns.P2_Height, GameTurns.P2_HeightMod, GameTurns.P2_Manuever_ID, T2.Category, T2.Name, GameTurns.P2_Result_ID, GameTurns.P2_DamageDone, GameTurns.NextGameTurn_ID FROM Manuevers T1 INNER JOIN GameTurns ON (T1.ID = GameTurns.P1_Manuever_ID) INNER JOIN Manuevers T2 ON (T2.ID = GameTurns.P2_Manuever_ID) WHERE Game_ID = " . $gameid . " ORDER BY GameTurns.ID ASC;";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=20 align=center><b>GAME TURN DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>TURN #</u></td><td align=center width=*><u>ID</u></td><td align=center width=*><u>P1_GfxLocation</u></td><td align=center width=*><u>P1_HP</u></td><td align=center width=*><u>P1_Height</u></td><td align=center width=*><u>P1_HeightMod</u></td><td align=center width=*><u>P1_Manuever_ID</u></td><td align=center width=*><u>P1_Manuever_Cat_>_Name</u></td><td align=center width=*><u>P1_Result_ID</u></td><td align=center width=*><u>P1_DamageDone</u></td><td align=center width=*><u>P2_GfxLocation</u></td><td align=center width=*><u>P2_HP</u></td><td align=center width=*><u>P2_Height</u></td><td align=center width=*><u>P2_HeightMod</u></td><td align=center width=*><u>P2_Manuever_ID</u></td><td align=center width=*><u>P2_Manuever_Cat_>_Name</u></td><td align=center width=*><u>P2_Result_ID</u></td><td align=center width=*><u>P2_DamageDone</u></td><td align=center width=*><u>NextGameTurn_ID</u></td><td align=center width=*><u>TURN #</u></td>";
		echo "</tr>";
	
		$nTempNoTurns = 1;
		
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			
			echo "<tr>";
				echo "<td valign=top align=center width=*><b>&nbsp; " . $nTempNoTurns . "</b></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[1] . "</font></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[6] . " > " . $arrSQLData[7] . "</font></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[8] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[9] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[10] . "</font></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[11] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[12] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[13] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[14] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[15] . " > " . $arrSQLData[16] . "</font></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[17] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[18] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[19] . "</td>";
				echo "<td valign=top align=center width=*><b>&nbsp; " . $nTempNoTurns . "</b></td>";
			echo "</tr>";
			
			$nTempNoTurns++;
		}
	
	echo "</table>";
	echo "<br>";
}

////////// Gather Conditions Data from DB /////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT GameTurns_Conditions.ID, GameTurns_Conditions.Player, GameTurns_Conditions.Conditions_ID, GameTurns_Conditions.Duration, Conditions.condition_sql FROM GameTurns_Conditions INNER JOIN Conditions ON GameTurns_Conditions.Conditions_ID = Conditions.ID WHERE Game_ID = " . $gameid . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=5 align=center><b>GAME TURN CONDITIONS DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Player</u></td><td align=center width=*><u>Conditions_ID</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>condition_sql</u></td>";
		echo "</tr>";
	
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[4] . "</font></td>";
			echo "</tr>";
			
		}
	
	echo "</table>";
	echo "<br>";
}

////////// Gather Score Mod Data from DB //////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT GameTurns_ScoreMods.ID, GameTurns_ScoreMods.Player, GameTurns_ScoreMods.Score_Mods_ID, GameTurns_ScoreMods.Duration, Score_Mods.Description, Conditions.condition_sql FROM GameTurns_ScoreMods INNER JOIN Score_Mods ON GameTurns_ScoreMods.Score_Mods_ID = Score_Mods.ID LEFT OUTER JOIN Conditions ON Score_Mods.Conditions_ID = Conditions.ID WHERE Game_ID = " . $gameid . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=6 align=center><b>GAME TURN SCORE MODS DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Player</u></td><td align=center width=*><u>Score_Mods_ID</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>Description</u></td><td align=center width=*><u>condition_sql</u></td>";
		echo "</tr>";
	
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[4] . "</font></td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[5] . "</font></td>";
			echo "</tr>";
		}

	echo "</table>";
	echo "<br>";
}

////////// Gather States Data from DB /////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT GameTurns_SpecialStates.ID, GameTurns_SpecialStates.Player, GameTurns_SpecialStates.SpecialStates_ID, GameTurns_SpecialStates.Duration, SpecialStates.Name FROM GameTurns_SpecialStates INNER JOIN SpecialStates ON GameTurns_SpecialStates.SpecialStates_ID = SpecialStates.ID WHERE Game_ID = " . $gameid . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=5 align=center><b>GAME TURN STATES DATA:</b></td>";
		echo "</tr>";
		echo "<tr>"; 
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Player</u></td><td align=center width=*><u>SpecialStates_ID</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>Name</u></td>";
		echo "</tr>";
		
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=left width=*>&nbsp;<font size=2> " . $arrSQLData[4] . "</font></td>";
			echo "</tr>";
		}
		
	echo "</table>";
	echo "<br>";
}

?>

	</body>
</html>