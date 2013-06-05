<?php

class testscope {

	var $nNumber = 10;
	
	function testscope()
	{
		$this->nNumber = 26;
		//echo "constructor number: " . $this->nNumber;
	}

	function printnumber()
	{
		echo "The number is: " . $this->nNumber;
	}
}

$test = new testscope();

$test->printnumber();

?>