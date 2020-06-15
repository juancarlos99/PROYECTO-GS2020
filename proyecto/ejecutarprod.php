<?php
//Este archivo hace el update en la tabla de los productos
	require("config.php");
	session_start();
	extract($_POST);	//extraer todos los valores del metodo post del formulario de actualizar
	$sentencia="UPDATE `productos` SET `Nombre`='$nombre',`Precio`= '$precio',`Descripcion`='$desc',`Componente`='$tipo',`Imagen`='$img' WHERE id = '$id'";
	$result= $conn->query($sentencia);
	$conn->close();
	header("Location: index.php");
?>