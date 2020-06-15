<?php
//Para hacer el update del usuario desde mi cuenta
 session_start();
 	require("config.php");
	$user = $_SESSION['userlogin'];
	$direccion = $_POST['direccion'];
	$telefono = $_POST['telefono'];
	

	$sql = "UPDATE usuario SET Telefono = '$telefono', Dirección = '$direccion' WHERE usuario = '$user'";
	$result = $conn->query($sql);
    
    $conn->close();
    header("Location: index.php ");
?>