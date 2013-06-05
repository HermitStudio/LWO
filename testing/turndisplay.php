<?php

/***************************************************************************
 *                                turndisplay.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: To display data for a turn's given archetype and result pages and any other related records
 *			  This will get used by automated testing later on but used to make sure data/logic correct
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(1)
 *
 ***************************************************************************/

/////////// Setup Variables //////////////////////////////////////////////////////////////////////////////////////// 

IF ($nP1ResultPage == "") { $nP1ResultPage = 57; }
IF ($nP1ArchetypeID == "") { $nP1ArchetypeID = 1; }
IF ($nP2ResultPage == "") { $nP2ResultPage = 57; }
IF ($nP2ArchetypeID == "") { $nP2ArchetypeID = 1; }

$strP1URL = "./resultdisplay.php?nResultPage=" . $nP1ResultPage . "&nArchetypeID=" . $nP1ArchetypeID;
$strP2URL = "./resultdisplay.php?nResultPage=" . $nP2ResultPage . "&nArchetypeID=" . $nP2ArchetypeID;

?>

<html>
	<head><title>LWO (ALPHA) Quick Result Outlook...</title></head>
	<frameset rows="10%,90%" cols="%50%,50%">
		<frame src="./p1header.php" scrolling=no>
		<frame src="./p2header.php" scrolling=no>
		<frame src="<? echo $strP1URL ?>" scrolling=yes>
		<frame src="<? echo $strP2URL ?>" scrolling=yes>
	</frameset>
</html>