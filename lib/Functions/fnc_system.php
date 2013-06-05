<?PHP

/***************************************************************************
 *                                fnc_system.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: File to contain system wide functions that are used through out the gaming engine
 *			  and don't belong to a single class or script.
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(4) 
 *
 ***************************************************************************/
 
 function Zerofill($nNumber, $nNoZeros)
{
	$nTempNumber = $nNumber;
	
	for($nCount = 0; $nCount <= $nNoZeros; $nCount++)
	{
		if (strlen($nTempNumber) == $nNoZeros)
		{
			break;
		}
		else
		{
			$nTempNumber = "0" . $nTempNumber;
		}
	}
	
	return ($nTempNumber);	
} 

function StripZeroFill($nNumber)
{
	return ltrim($nNumber, '0');
}
	
function CheckOnScore($bRequiredOnScore, $bPlayerOnScore)
{
	if($bRequiredOnScore == 0)
	{
		//echo "OnScore = True (0)<BR>";
		return (true);
	}
	
	if($bRequiredOnScore == 1)
	{
		if($bPlayerOnScore == True)
		{
			//echo "OnScore = True (1)<BR>";
			return (true);
		}
		else
		{
			//echo "OnScore = False (1)<BR>";
			return (false);
		}
	}
	
	//echo "OnScore = False<BR>";
	return (false);
}

function CheckOnDamage($bRequiredOnDamage, $bPlayerOnDamage)
{
	if($bRequiredOnDamage == 0)
	{
		//echo "OnDamage = True (0)<BR>";
		return (true);
	}
	
	if($bRequiredOnDamage == 1)
	{
		if($bPlayerOnDamage == True)
		{
			//echo "OnDamage = True (1)<BR>";
			return (true);
		}
		else
		{
			//echo "OnDamage = False (1)<BR>";
			return (false);
		}
	}
	//echo "OnDamage = False<BR>";
	return (false);
}
 
?>