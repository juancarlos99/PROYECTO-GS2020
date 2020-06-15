<?php
//En este archivo se hará el insert para registrar a los usuarios
 session_start();

if (isset($_POST['email']) && $_POST['email'] && isset($_POST['contraseña']) && $_POST['contraseña']) {


	$email= $_POST['email'];
	$usuario = $_POST['usuario'];
	$contraseña= $_POST['contraseña'];
	$nombre = $_POST['nombre'];
	$apellido = $_POST['apellidos'];
	$direccion = $_POST['direccion'];
	$telefono = $_POST['telefono'];
	
	require("config.php");


	$sql = "INSERT INTO `usuario` (`Usuario`, `Email`, `Contraseña`, `tipo`,`Telefono`, `Nombre`, `Apellidos`, `Dirección`) VALUES ( '$usuario', '$email', '$contraseña', 'user','$telefono', '$nombre', '$apellido', '$direccion')";
	$result = $conn->query($sql);

	if ($result) {
		$_SESSION['userlogin'] = $usuario;
	    echo json_encode(array('success' => 1));
	    
	} else {
	    echo json_encode(array('success' => 0));
	}
        $conn->close();
   
} 
else {
    echo json_encode(array('success' => 0));
}


?> 
