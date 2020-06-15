<?php
 session_start();
 	//Esto sirve para comprobar que la contraseña es igual a una ya creada del mismo usuario
	$user = $_SESSION['userlogin'];
	$pass = $_POST['pass'];
	$newpass = $_POST['passnew'];
	$_SESSION['userlogin'] = $user;
	require("config.php");

	$sql = "SELECT `Contraseña` FROM `usuario` WHERE `Contraseña` = '$pass' AND `Usuario`= '$user' ";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		$update = "UPDATE Usuario SET contraseña = '$newpass' where `Contraseña` ='$pass' AND `Usuario` = '$user' ";
		$actualizar = $conn->query($update);
	}
    
    $conn->close();
    header("Location: index.php ");
?>