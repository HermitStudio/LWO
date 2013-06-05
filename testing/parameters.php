<?php

class A{

	function A($one, $two)
	{
		echo "<BR><BR>CLASS A: one: " . $one . ", two: " . $two;
	}
}

class B extends A{

	function B($one)
	{
		$this->A($one);
	}

	function A($one)
	{
		echo "<BR><BR>CLASS B: one: " . $one . ", two: " . $two;
	}
}

$objTestA = new A("Hi","there!");

$objTestB = new B("Hi");

?>