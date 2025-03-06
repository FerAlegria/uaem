<?php
$conexion =mysqli_connect("localhost","root","","facturacion","Cfdi");
	header("Content_type:text/xml");
	$val_conexion=new mysqli("localhost", "root","","facturacion","Cfdi")ordie("Error al conectar BD");
	$most_Cfdi="SELECT * FROM Cfdi order by id ASC";
	$result=$val_conexion-> query($most_Cfdi);
	$salida_xml=<?xml version