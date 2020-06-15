<?php
//Inserta productos en la base de datos
	require("config.php");
	session_start();
	extract($_POST);	//extraer todos los valores del metodo post del formulario de actualizar
	$sql="INSERT INTO `productos`(`Nombre`, `Precio`, `Descripcion`,`Componente`, `Imagen`) VALUES ('$nombre','$precio','$desc','$tipo','$img')";
	$result= $conn->query($sql);
	$conn->close();
	header("Location: index.php");
?>