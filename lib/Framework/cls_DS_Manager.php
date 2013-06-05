<?PHP

/***************************************************************************
 *                                cls_DS_Manager.php
 *                            -------------------
 *  copyright           : (C) 2005 Ian Stapleton, VWGN.com
 *	client							: www.lostworldsonline.com
 *  email								: ianstapleton@vwgn.com; ianstapleton@geekcubed.org
 *
 *  About		  					: Data Sources Manager for Frontend Framework
 *
 *  Version		  				: v1.0.1 {Alpha Release}
 *	Release Point				: A.0.2(1)
 *
 ***************************************************************************/
 
 
 class DS_Manager
 {
 	/* Variable Listings */
 	//Constructor return
	var $CONS_RETURN;
 	//Our DataBase Connection
 	var $db;
 	//Our Query pointer
 	var $query_pointer;
 	//A small Counter for queries
 	var $query_count;
 	
 	/* Constructor */
 	function DS_Manager($host, $user, $pass, $database){
 		//Attempt to connect to the specified MySQL server
 		$this->db = @mysql_connect($host, $user, $pass);
 		
 		if (!$this->db){
 			//Connection has failed
 			//Set Error Variables
 			$this->ERR_class = "Data Sources Manager";
			$this->ERR_template = "framework_error.tpl";
			$this->ERR_title = "MySQL Connection Error";
			$this->ERR_body = "The Data Sources Manager was unable to connect to specified MySQL Server.  Please review configuration settings and verify the status of the database server.";
 			$this->CONS_RETURN = false;
			return;
 		}
 		else {
 			//Connection Established - Access the database
 			if (! mysql_select_db($database,$this->db)){
				
				//Unable to access specified database
				//Set Error Variables
				$this->ERR_class = "Data Sources Manager";
				$this->ERR_template = "framework_error.tpl";
				$this->ERR_title = "MySQL Database Error";
				$this->ERR_body = "The Data Sources Manager was unable access the specified database. Please review configuration and MySQL server settings.  MySQL returned the error " . mysql_error() . ".";
	 			$this->CONS_RETURN = false;
			return;
			}
			else {
				//All okay
				$this->query_count=0;
				$this->CONS_RETURN = true;
				return;
			}
		}
 	}
 	
 	/* Destructor */
 	function Destruct(){
 		@mysql_close($this->db);
 		return;
 	}
 	
 	/* Methods */
 	//Query Function
 	function Query($the_query){
 		//Increment our Query Counter
 		$this->query_count++;
 		/*Debug Code!*/
 		/* **CAUTION** THIS DISABLES DataLister.php (XML File generator) */
 		//echo "<!-- " . $this->query_count . " : " . $the_query . "\n";
 		if ($this->query_pointer = @mysql_query($the_query, $this->db)){
			
			// uncomment if dont want the sql displayed
			//echo "SQL: " . $the_query . "<BR><BR>";

			return ($this->query_pointer);
		}
		else {
			//Hard coded failure case
			return (NULL);
		}
	}
	
	//Insert ID function
	function InsertID(){
		return @mysql_insert_id($this->db);
	}
	
	//Transaction Functions
	//BEGIN a transaction
	function TransBegin(){
		@mysql_query("BEGIN", $this->db);
		$this->query_count++;
	}
	
	//COMMIT a transaction
	function TransCommit(){
		@mysql_query("COMMIT", $this->db);
		$this->query_count++;
	}
	
	//ROLLBACK a transaction
	function TransRollback(){
		@mysql_query("ROLLBACK", $this->db);
		$this->query_count++;
	}
	
	// REMOVE IF CAN GET EXTENDED CLASS WORKING:
	/*
	//VALID Query Check (true = query ok)
	function ValidateQuery($nNoRecordsExpected, $pntQuery)
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
			if (mysql_num_rows($pntQuery)==0)
			{
				//Exit script as their are no records stored for that query
				return (false);	
			}
			
			// if the number of records expected is known (-1 = unknown number of records required)
			if ($nNoRecordsExpected != -1)
			{
				if (mysql_num_rows($pntQuery > $nNoRecordsExpected))
				{
					//Exit script as their are duplicate records stored
					return (false);
				}
				else
				{
		
					// The query is valid!
					return (true);	
				}
			}
			else
			{
				// The query is valid! (but can't guarentee the number of record is correct!)
				return (true);	
			}
		}
	}
	*/
	
}

?>