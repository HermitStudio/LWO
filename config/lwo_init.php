<?PHP

/***************************************************************************
 *                                lwo_init.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: Configuration File for LWO Classes Included in the Game system so there is only 
 * 			  one include file needed.
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(4) 
 *
 ***************************************************************************/

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// NOTE IF ERROR POINTING HERE IT PROBABLY A CLASS SYNTAX ERROR (PRE-COMPILIED)

header("Cache-control: nocashe");

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// System-Wide Variables Initalisation:

// Base website address if needed in code
global $strSystemBaseURL;
$strSystemBaseURL = "www.vwgn.com/lwoengine/";

// For printing code to the screen if debugging, or for other uses during the debugging process
$bDebug = true; 

// If the variable hasn't been set then set it to the default (flag to indicate use of classes in calling script)
if(!isset($bNeedEngineClasses))
{
	$bNeedEngineClasses = True;
}

// variable to handle differing dir postions for include files, so all these calls work where ever they are called
if(!isset($strURLPrefix))
{
	$strURLPrefix = $strSystemBaseURL;
}

// Include Config Variables
include("framework_config.php"); 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Init DS Manager
@include_once $strURLPrefix . "lib/Framework/cls_DS_Manager.php";

// Comment this out if you DON'T want to use these extended features
@include_once $strURLPrefix . "lib/Framework/cls_DSM_Extend.php"; 

//Check to see if the engine classes are required and if so initialise them
if($bNeedEngineClasses)
{
	
	// Init Engine BASE Classes - PROCESS TURN 
	include_once $strURLPrefix . "lib/Classes/cls_Player.php";
	include_once $strURLPrefix . "lib/Classes/cls_Move.php";
	include_once $strURLPrefix . "lib/Classes/cls_Redirects.php";
	include_once $strURLPrefix . "lib/Classes/cls_Results.php";
	include_once $strURLPrefix . "lib/Classes/cls_ScoreMods.php";
	include_once $strURLPrefix . "lib/Classes/cls_States.php";
	include_once $strURLPrefix . "lib/Classes/cls_Conditions.php"; 
	
	// Init Engine SETUP Classes - SETUP GAME 
	include_once $strURLPrefix . "lib/Classes/cls_Player_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_Move_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_States_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_ScoreMods_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_Conditions_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_Redirects_SetupGame.php";
	include_once $strURLPrefix . "lib/Classes/cls_Results_SetupGame.php";
	
	// Init Engine CHARACTER Classes - (NOT CONFIGURED FOR USE WITH SETUP)
	include_once $strURLPrefix . "lib/Classes/cls_Move_LizardMan.php";
	include_once $strURLPrefix . "lib/Classes/cls_ScoreMods_LizardMan.php";
	include_once $strURLPrefix . "lib/Classes/cls_States_LizardMan.php";
	
	include_once $strURLPrefix . "lib/Classes/cls_Move_Samurai.php";
	include_once $strURLPrefix . "lib/Classes/cls_Results_Samurai.php";
	include_once $strURLPrefix . "lib/Classes/cls_Redirects_Samurai.php";
	
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Include System-Wide Functions
//@include($strURLPrefix . "lib/Functions/fnc_system.php"); 
include_once $strURLPrefix . "lib/Functions/fnc_system.php"; 

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

?>