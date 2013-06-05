<?php

class a{

	function a()
	{
		echo "this is the inside of class a!";
	}
}

class b extends a{

	function a()
	{
		echo "this is the inside of class b!";
	}
	
	function b()
	{
		//parent::a(); // This calls a.a() via b.b() in constructor!
		$this->a(); // this calls own polymorphic function overriding its parent 'a' class - b.a();
	}
}

echo "\n";
$objMyObject = new b();
$objMyObject->a();
	

?>