<?php 
	
	$mysqli = new mysqli('172.17.0.3', '271USER', '5Z3MxFIE5Lph1VWiRg6ED', '271PARKS');

	if ($mysqli->connect_error) {
		die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
	}

?>
