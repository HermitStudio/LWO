<?php

/***************************************************************************
 *                                resultdisplay.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To display data for a given archetype and result page and any other related records
 *			  This will get used by automated testing later on but used to make sure data/logic correct
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(1)
 *
 ***************************************************************************/

/////////// Setup Variables //////////////////////////////////////////////////////////////////////////////////////// 

IF ($_GET[nResultPage]=="") { echo "No Result Page found...Using Defaults...\n"; $nResultPage = 57; }
IF ($_GET[nArchetypeID]=="") { echo "No Archetype ID found...Using Defaults...\n"; $nArchetypeID = 1; }

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
	<head>
		<title>LWO (Alpha) Testing > Result Display Script...</title>
	
		<script language=javascript?
			/*function NextPage()
			{
				//$this.nResultPage = this.nResultPage + 2; alert('result page: ' & this.nResultPage); this.submit();
				var tempPage = document.forms[0].elements[0].text + 2;
				alert("next page is: " . tempPage);
			}*/
		</script>
	</head>
	<body>
		
			
<?php	

////////// Gather Drop Down Data from DB //////////////////////////////////////////////////////////////////////////////

echo "<form action='./resultdisplay.php' method='GET'>";
	echo "<table border=1 width=50% align=center cellpadding=2 cellspacing=0>";	
		echo "<tr>";
			echo "<td width=50% align=center><select name=nResultPage>";	
				
				$nElement = 1;
				
				// Results Page doesn't require DB as its every odd page beteen 1-63, so just output a list of those numbers	
				while($nElement < 64)
				{
					// Check to see if this value is has been pre-selected and mark it if so
					if ($nElement == $nResultPage)
					{
						// Setup the drop down box
						echo "<option value=" .$nElement . " selected>" . $nElement . "</option>";
					}
					else
					{
						echo "<option value=" .$nElement . ">" . $nElement . "</option>";
					}
					$nElement = $nElement + 2;
				}
				
			echo "</select></td>";
			echo "<td width=50% align=center><select name=nArchetypeID>";	
				
				// Get Archetype ID/Name from the DB
				$strSQL = "SELECT ID, Name FROM Archetypes;";
				$arrSQLResults = $objDataSource->Query($strSQL);
				
				// Check to see if query returned
				if ($objDataSource->ValidateQuery($arrSQLResults))
				{
					while($arrSQLData = mysql_fetch_row($arrSQLResults))
					{
						// Check to see if this value is has been pre-selected and mark it if so
						$nTempArchetypeID = $arrSQLData[0];
						 
						if (ltrim($nTempArchetypeID, "0") == $nArchetypeID)
						{
							// Setup the drop down box
							echo "<option value=" .$nTempArchetypeID . " selected>" . $arrSQLData[1] . "</option>";
						}
						else
						{
							// Setup the drop down box
							echo "<option value=" .$nTempArchetypeID . ">" . $arrSQLData[1] . "</option>";
						}
					}
				}
				else
				{
					exit();
				}
				
			echo "</select></td>";
		echo "</tr>";
		echo "<tr align=center>";
			echo "<td colspan=2><input type=submit value='Go'></td>";
		echo "</tr>";
		/*echo "<tr align=center>";
			echo "<td colspan=2><input type=button value='Next Page' onClick='javascript: alert('hi!'); NextPage();'></td>";
		echo "</tr>";*/
	echo "</table>";
echo "</form>";	

////////// Gather Results Data from DB //////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT * FROM Results WHERE Odd_Page = " . $nResultPage  . " AND Archetype_ID = " . $nArchetypeID . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	// Pull the DB Data into script variables for later use
	$arrSQLData = mysql_fetch_row($arrSQLResults);
	
	echo "<table border=1 width=75% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=2 align=center><b>RESULT DATA:</b></td>";
		echo "</tr>";
			$nTempResultID = $arrSQLData[0];
			echo "<tr><td align=right width=50%>(Result) ID:</td><td align=left width=50%>&nbsp; " . $nTempResultID . "</td></tr>";
			echo "<tr><td align=right width=50%>Archetype_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[1] . "</td></tr>";
			echo "<tr><td align=right width=50%>Odd_Page:</td><td align=left width=50%>&nbsp; " . $arrSQLData[2] . "</td></tr>";
			echo "<tr><td align=right width=50%>Name:</td><td align=left width=50%>&nbsp; " . $arrSQLData[3] . "</td></tr>";
			echo "<tr><td align=right width=50%>Message:</td><td align=left width=50%>&nbsp; " . $arrSQLData[4] . "</td></tr>";
			echo "<tr><td align=right width=50%>GfxLocation:</td><td align=left width=50%>&nbsp; " . $arrSQLData[5] . "</td></tr>";
			echo "<tr><td align=right width=50%>Score:</td><td align=left width=50%>&nbsp; " . $arrSQLData[6] . "</td></tr>";
			echo "<tr><td align=right width=50%>ScoreSpecial:</td><td align=left width=50%>&nbsp; " . $arrSQLData[7] . "</td></tr>";
			echo "<tr><td align=right width=50%>ScoreSpecialState_ID:</td><td align=left width=50%>&nbsp; " . $arrSQLData[8] . "</td></tr>";
	echo "</table>";
	echo "<br>";
}
else
{ 
	// Exit script as query failed 
	exit();
}

////////// Gather Results CONDITIONS Data from DB //////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT Results_Conditions.ID, Results_Conditions.Conditions_ID, Results_Conditions.OnScore, Results_Conditions.OnDamage, Results_Conditions.Duration, Conditions.condition_sql FROM Results_Conditions INNER JOIN Conditions ON Results_Conditions.Conditions_ID = Conditions.ID WHERE Results_ID = " . Zerofill($nTempResultID, 10) . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=6 align=center><b>RESULT CONDITIONS DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Conditions_ID</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>condition_sql</u></td>";
		echo "</tr>";
	
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[5] . "</font></td>";
			echo "</tr>";
			
		}
	
	echo "</table>";
	echo "<br>";
}

////////// Gather Results SCORE MODS Data from DB //////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT Results_Score_Mods.ID, Results_Score_Mods.Score_Mods_ID, Score_Mods.Conditions_ID, Results_Score_Mods.OnScore, Results_Score_Mods.OnDamage, Results_Score_Mods.Duration, Score_Mods.Description, Conditions.condition_sql FROM Results_Score_Mods INNER JOIN Score_Mods ON Results_Score_Mods.Score_Mods_ID = Score_Mods.ID LEFT OUTER JOIN Conditions ON Score_Mods.Conditions_ID = Conditions.ID WHERE Results_ID = " . Zerofill($nTempResultID, 10) . ";";

$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=8 align=center><b>RESULT SCORE MODS DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Score_Mod_ID</u></td><td align=center width=*><u>Conditions_ID</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>Description</u></td><td align=center width=*><u>condition_sql</u></td>";
		echo "</tr>";
	
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[6] . "</font></td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[7] . "</font></td>";
			echo "</tr>";
		}

	echo "</table>";
	echo "<br>";
}

////////// Gather Results REDIRECTS Data from DB //////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT Results_Redirects.ID, Results_Redirects.Required_Results_Odd_Page, Results_Redirects.Required_SpecialStates_ID, T1.Name, Results_Redirects.Redirect_Results_Odd_Page, Results_Redirects.OnScore, Results_Redirects.OnDamage, Results_Redirects.Redirect_SpecialStates_ID, T2.Name FROM SpecialStates T1 RIGHT OUTER JOIN Results_Redirects ON  (T1.ID = Results_Redirects.Required_SpecialStates_ID) LEFT OUTER JOIN SpecialStates T2 ON (Results_Redirects.Redirect_SpecialStates_ID = T2.ID) WHERE Results_ID = " . Zerofill($nTempResultID, 10) . ";";

$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=9 align=center><b>RESULT REDIRECT DATA:</b></td>";
		echo "</tr>";
		echo "<tr>";
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>Required_Results_Odd_Page</u></td><td align=center width=*><u>Required_SpecialStates_ID</u></td><td align=center width=*><u>Required_SpecialStates Name</u></td><td align=center width=*><u>Redirect_Results_Odd_Page</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>Redirect_SpecialStates_ID</u></td><td align=center width=*><u>Redirect_SpecialStates Name</u></td>";
		echo "</tr>";
	
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp;<font size=2> " . $arrSQLData[3] . "</font></td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[6] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[7] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp;<font size=2> " . $arrSQLData[8] . "</font></td>";
			echo "</tr>";
			
		}
	
	echo "</table>";
	echo "<br>";
}

////////// Gather Results STATES Data from DB //////////////////////////////////////////////////////////////////////////////

$strSQL = "SELECT Results_SpecialStates.ID, Results_SpecialStates.SpecialStates_ID, Results_SpecialStates.OnScore, Results_SpecialStates.OnDamage, Results_SpecialStates.Duration, Results_SpecialStates.Cumulative, SpecialStates.Name FROM Results_SpecialStates INNER JOIN SpecialStates ON Results_SpecialStates.SpecialStates_ID = SpecialStates.ID WHERE Results_ID = " . Zerofill($nTempResultID, 10) . ";";
$arrSQLResults = $objDataSource->Query($strSQL);

// Check to see if query returned
if ($objDataSource->ValidateQuery($arrSQLResults)) 
{
	echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
		echo "<tr>";
			echo "<td colspan=7 align=center><b>RESULT STATES DATA:</b></td>";
		echo "</tr>";
		echo "<tr>"; 
			echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>SpecialStates_ID</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>Duration</u></td><td align=center width=*><u>Cumulative</u></td><td align=center width=*><u>Name</u></td>";
		echo "</tr>";
		
		$nElement = 0;
		
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				$arrTempStatesIDs[$nElement] = $arrSQLData[1];
				echo "<td valign=top align=center width=*>&nbsp; " . $arrTempStatesIDs[$nElement] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp;<font size=2> " . $arrSQLData[6] . "</font></td>";
			echo "</tr>";
			$nElement++;
		}
		
		$nNoResultStates = $nElement;
	
	echo "</table>";
	echo "<br>";
}

////////// Gather States CONDITIONS Data from DB //////////////////////////////////////////////////////////////////////////////

$bRecordsFound = false;

for ($nElement = 0; $nElement <= $nNoResultStates; $nElement++)
{
	$strSQL = "SELECT SpecialStates_Conditions.ID, SpecialStates_Conditions.SpecialStates_ID, SpecialStates_Conditions.Conditions_ID , SpecialStates_Conditions.OnScore, SpecialStates_Conditions.OnDamage, Conditions.condition_sql FROM SpecialStates_Conditions INNER JOIN Conditions ON SpecialStates_Conditions.Conditions_ID = Conditions.ID WHERE SpecialStates_Conditions.SpecialStates_ID = " . Zerofill($arrTempStatesIDs[$nElement], 10) . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	// Check to see if query returned
	if ($objDataSource->ValidateQuery($arrSQLResults)) 
	{
		// only display tabkle details on first run
		if (!$bRecordsFound)
		{
			$bRecordsFound = true;
			echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
				echo "<tr>";
					echo "<td colspan=6 align=center><b>STATE CONDITIONS DATA:</b></td>";
				echo "</tr>";
				echo "<tr>";
					echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>SpecialStates_ID</u></td><td align=center width=*><u>Conditions_ID</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>condition_sql</u></td>";
				echo "</tr>";
		}
				// Pull the DB Data into script variables for later use
				while ($arrSQLData = mysql_fetch_row($arrSQLResults))
				{
					echo "<tr>";
						echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
						echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
						echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
						echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
						echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
						echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[5] . "</font></td>";
					echo "</tr>";
					
				}
	}
	
	// only end the table if we are on the last state		
	if ($nElement == $nNoResultStates && $bRecordsFound == true)
	{
		echo "</table>";
		echo "<br>";
	}
}

////////// Gather States SCORE MODS Data from DB //////////////////////////////////////////////////////////////////////////////

$bRecordsFound = false;

for ($nElement = 0; $nElement <= $nNoResultStates; $nElement++)
{
	$strSQL = "SELECT SpecialStates_Score_Mods.ID, SpecialStates_Score_Mods.SpecialStates_ID, SpecialStates_Score_Mods.Score_Mods_ID, Score_Mods.Conditions_ID, SpecialStates_Score_Mods.OnScore, SpecialStates_Score_Mods.OnDamage, Score_Mods.Description, Conditions.condition_sql FROM SpecialStates_Score_Mods INNER JOIN Score_Mods ON SpecialStates_Score_Mods.Score_Mods_ID = Score_Mods.ID LEFT OUTER JOIN Conditions ON Score_Mods.Conditions_ID = Conditions.ID WHERE SpecialStates_Score_Mods.SpecialStates_ID = " . Zerofill($arrTempStatesIDs[$nElement], 10) . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	// Check to see if query returned
	if ($objDataSource->ValidateQuery($arrSQLResults)) 
	{
		// only display table details on first run of a found record
		if (!$bRecordsFound)
		{
			$bRecordsFound = true;
			echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
				echo "<tr>";
					echo "<td colspan=8 align=center><b>STATE SCORE MODS DATA:</b></td>";
				echo "</tr>";
				echo "<tr>";
					echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>SpecialStates_ID</u></td><td align=center width=*><u>Score_Mods_ID</u></td><td align=center width=*><u>Conditions_ID</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td><td align=center width=*><u>Description</u></td><td align=center width=*><u>conditions_sql</u></td>";
				echo "</tr>";
		}
		
		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[6] . "</font></td>";
				echo "<td valign=top align=left width=*><font size=2>&nbsp; " . $arrSQLData[7] . "</font></td>";
			echo "</tr>";
		}	
	}
	
	// only end the table if we are on the last state		
	if ($nElement == $nNoResultStates && $bRecordsFound == True)
	{
		echo "</table>";
		echo "<br>";
	}
}
 
////////// Gather States COUNTERACTORS Data from DB //////////////////////////////////////////////////////////////////////////////

$bRecordsFound = false;

for ($nElement = 0; $nElement <= $nNoResultStates; $nElement++)
{
	$strSQL = "SELECT SpecialStates_Counteractors.ID, SpecialStates_Counteractors.SpecialStates_ID, T1.Name, SpecialStates_Counteractors.Removes_SpecialStates_ID, T2.Name, SpecialStates_Counteractors.OnScore, SpecialStates_Counteractors.OnDamage FROM SpecialStates T1 RIGHT OUTER JOIN SpecialStates_Counteractors ON (T1.ID = SpecialStates_Counteractors.SpecialStates_ID) LEFT OUTER JOIN SpecialStates T2 ON ( SpecialStates_Counteractors.Removes_SpecialStates_ID = T2.ID) WHERE SpecialStates_Counteractors.SpecialStates_ID = " . Zerofill($arrTempStatesIDs[$nElement], 10) . ";";
	$arrSQLResults = $objDataSource->Query($strSQL);
	
	// Check to see if query returned
	if ($objDataSource->ValidateQuery($arrSQLResults)) 
	{
		// only display table details on first run of a found record
		if (!$bRecordsFound)
		{
			$bRecordsFound = true;
			echo "<table border=1 width=100% align=center cellpadding=2 cellspacing=0>";
				echo "<tr>";
					echo "<td colspan=7 align=center><b>STATE COUNTERACTORS DATA:</b></td>";
				echo "</tr>";
				echo "<tr>";
					echo "<td align=center width=*><u>ID</u></td><td align=center width=*><u>SpecialStates_ID</u></td><td align=center width=*><u>SpecialStates Name</u></td><td align=center width=*><u>Removes_SpecialStates_ID</u></td><td align=center width=*><u>Removes_SpecialStates Name</u></td><td align=center width=*><u>OnScore</u></td><td align=center width=*><u>OnDamage</u></td>";
				echo "</tr>";
		}

		// Pull the DB Data into script variables for later use
		while ($arrSQLData = mysql_fetch_row($arrSQLResults))
		{
			echo "<tr>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[0] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[1] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[2] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[3] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[4] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[5] . "</td>";
				echo "<td valign=top align=center width=*>&nbsp; " . $arrSQLData[6] . "</td>";
			echo "</tr>";
		}	
	}

	// only end the table if we are on the last state		
	if ($nElement == $nNoResultStates && $bRecordsFound == True)
	{
		echo "</table>";
		echo "<br>";
	}
}
?>	
	</body>
</html>