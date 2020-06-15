<?php
//Este archivo me abrirá la conexión cada vez que lo llame

error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "proyecto";
define("KEY","proyecto");
define("COD","AES-128-ECB");

// Create connection
$conn = new mysqli($servername, $username, $password);
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

$creardatabase = "CREATE DATABASE IF NOT EXISTS $dbname";
$conn->query($creardatabase);
$conn->select_db("$dbname");

$createtableusuario = "
CREATE TABLE IF NOT EXISTS `usuario` (
`ID` int(11) NOT NULL,
`Usuario` varchar(25) NOT NULL,
`Email` varchar(50) NOT NULL,
`Contraseña` varchar(10) NOT NULL,
`tipo` varchar(25) NOT NULL,
`Telefono` int(9) DEFAULT NULL,
`Nombre` varchar(25) DEFAULT NULL,
`Apellidos` varchar(25) DEFAULT NULL,
`Dirección` varchar(50) DEFAULT NULL,
PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
$conn->query($createtableusuario);

$createtableproductos = "CREATE TABLE IF NOT EXISTS `productos` (
`ID` int(11) NOT NULL,
`Nombre` varchar(255) NOT NULL,
`Precio` decimal(20,2) NOT NULL,
`Descripcion` text NOT NULL,
`Imagen` varchar(255) NOT NULL,
PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
$conn->query($createtableproductos);

$createtablepedidos = "CREATE TABLE IF NOT EXISTS `pedidos` (
`ID` int(11) NOT NULL,
`Usuario` varchar(255) NOT NULL,
`Dirección` varchar(255) NOT NULL,
`Telefono` int(9) NOT NULL,
`Email` varchar(255) NOT NULL,
`Estado` varchar(255) NOT NULL,
`Fecha` date NOT NULL DEFAULT current_timestamp(),
PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
$conn->query($createtablepedidos);
$createtabletblventas = "
CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
$conn->query($createtabletblventas);
$createtabletbldetalleventa = "CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
$conn->query($createtabletbldetalleventa);
?>