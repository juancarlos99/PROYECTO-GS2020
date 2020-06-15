<?php 
	//Este archivo borra el producto seleccionado
	extract($_GET);
	require("config.php");
	$sqlborrar="DELETE FROM pedidos WHERE ID=$id";
	$result = $conn->query($sqlborrar);
	if ($result) {
        echo "Pedido eliminado";

    }else{
        echo "Hubo algún error";
    }
?>