<?php 
	//Me borrará los productoos que desea el administrador
	extract($_GET);
	require("config.php");
	$sqlborrar="DELETE FROM productos WHERE id=$id";
	$result = $conn->query($sqlborrar);
	if ($result) {
        echo "Producto eliminado";

    }else{
        echo "Hubo algún error";
    }
    
?>