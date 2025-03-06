<?php

	$mysqli = new mysqli('localhost','root','','facturacion');
	if($mysqli->connect_error){
		die('Error al intentar conectar' . $mysqli->connect_error);
	}
?>