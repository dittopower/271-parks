<?php 
	
	$mysqli = new mysqli('localhost', 'deamon_271', 'QRA9JBZ4wzlPKqhU', 'deamon_INB271');

	if ($mysqli->connect_error) {
		die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
	}

?>
