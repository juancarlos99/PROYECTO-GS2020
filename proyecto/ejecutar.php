<?php
//Actualiza todos los datos del usuario que quiera menos el id
	require("config.php");
	session_start();
	extract($_POST);	//extraer todos los valores del metodo post del formulario de actualizar
	$_POST['user'] = $user;
	$sentencia="UPDATE Usuario SET `Usuario` = '$user',`Email`='$email',`Contraseña`='$pass',`Telefono`='$telefono',`Nombre`='$nombre',`Apellidos`='$apellido',`Dirección`='$direccion' WHERE ID = '$id'";
	$result= $conn->query($sentencia);
	$user = $_SESSION['userlogin'];
	$sql = "SELECT usuario FROM usuario WHERE id='$id'";
	  $result = $conn->query($sql);
	  if ($result) {
	    while ($row = $result->fetch_array()) {
	      $_SESSION['userlogin'] = $row['usuario'];
	    }
	  }
	$conn->close();
	header("Location: index.php");
?>