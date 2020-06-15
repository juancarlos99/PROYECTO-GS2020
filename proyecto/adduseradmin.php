<?php
//Para ingresa nuevos usuarios a mi página desde el panel de administración
session_start();
extract($_POST);
require("config.php");
$sql = "INSERT INTO `usuario` (`Usuario`, `Email`, `Contraseña`,`Tipo`, `Telefono`, `Nombre`, `Apellidos`, `Dirección`) VALUES ( '$user', '$email', '$pass', '$tipo', '$telefono', '$nombre', '$apellido', '$direccion')";
$result = $conn->query($sql);
header("Location: index.php");
?>