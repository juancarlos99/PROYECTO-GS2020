<?php 
//Este archivo borra el usuario seleccionado por el admin
extract($_GET);
require("config.php");
$sqlborrar="DELETE FROM usuario WHERE ID=$id";
$result = $conn->query($sqlborrar);
if ($result) {
	echo "Usuario eliminado";

}else{
	echo "Hubo algún error";
}
?>