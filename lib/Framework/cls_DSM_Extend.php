<?PHP

/***************************************************************************
 *                                cls_DSM_Extend.php
 *                            -------------------
 *  copyright           : (C) 2005 Corrie Allan, VWGN.com
 *  client		: www.lostworldsonline.com
 *  email		: corrie.allan@gmail.com
 *
 *  About		: Extended Data Sources Manager for Frontend Framework
 *
 *  Version		: v1.0.1 {Alpha Release}
 *  Release Point	: A.0.6(2)
 *
 ***************************************************************************/

  class DSM_Extend extends DS_Manager
 {
	//VALID Query Check (true = query ok)
	//function ValidateQuery($nNoRecordsExpected, $pntQuery)
	function ValidateQuery($pntQuery)
	{
		if ($pntQuery == Null)
		{
			return (false);
		}
		else
		{
			// Check to see if query returned
			if (!$pntQuery)
			{
				// Exit script as query failed
				return (false);
			}
			else
			{
				// Check for an empty result set	
				if (@mysql_num_rows($pntQuery) == 0)
				{
					//Exit script as their are no records stored for that query
					return (false);	
				}
				
				/*
				// if the number of records expected is known (-1 = unknown number of records required)
				if ($nNoRecordsExpected != -1)
				{
					echo "v6";
					//if ($nTempNoRows > $nNoRecordsExpected)) // << error
					if (@mysql_num_rows($pntQuery) > $nNoRecordsExpected))
					{
						echo "v7";
						//Exit script as their are duplicate records stored
						return (false);
					}
					else
					{
						echo "v8";
						// The query is valid!
						return (true);	
					}
				}
				else
				{
					echo "v9";
					// The query is valid! (but can't guarentee the number of record is correct!)
					return (true);	
				}
				*/
				return (true);
			}
		}
	}	
 }
?>