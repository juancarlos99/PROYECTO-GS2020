<?php
//Me añadirá o borrara productos al carrito cuando haga las acciones necesarias
include_once("config.php");
//$mensaje = "";

if(isset($_POST['btnAccion'])){

	switch($_POST['btnAccion']){

		case "Eliminar":

		if(is_numeric(openssl_decrypt($_POST['idd'],COD,KEY))){
			$ID = openssl_decrypt($_POST['idd'],COD,KEY);

			foreach ($_SESSION['CARRITO'] as $indice => $producto) {

				if($producto['ID']==$ID){

					unset($_SESSION['CARRITO'][$indice]);
					//echo "<script>alert('Elemento borrado');</script>";
					break;
				}
			}

			
		}else{
			$ID = openssl_decrypt($_POST['idd'],COD,KEY);
			//$mensaje.= "El ID es incorrecto ".$ID."<br/>";
			break;
		}

		break;

		case "Agregar":

		if(is_numeric(openssl_decrypt($_POST['idd'],COD,KEY))){
			$ID = openssl_decrypt($_POST['idd'],COD,KEY);
			//$mensaje.= "ID es correcto ".$ID."<br/>";
		}else{
			$ID = openssl_decrypt($_POST['idd'],COD,KEY);
			//$mensaje.= "El ID es incorrecto ".$ID."<br/>";
			break;
		}
		if(is_string(openssl_decrypt($_POST['nombre'], COD, KEY))){
			$nombre=openssl_decrypt($_POST['nombre'], COD, KEY);
			//$mensaje.= "El nombre es correcto ".$nombre."<br/>";
		}else{
			$nombre = openssl_decrypt($_POST['nombre'],COD,KEY);
			//$mensaje.= "El nombre es incorrecto ".$nombre."<br/>";

			break;
		}
		if(is_numeric(openssl_decrypt($_POST['precio'],COD,KEY))){
			$Precio = openssl_decrypt($_POST['precio'],COD,KEY);
			//$mensaje.= " El precio es correcto ".$Precio."<br/>";
		}else{
			$Precio = openssl_decrypt($_POST['precio'],COD,KEY);
			//$mensaje.= " El precio es incorrecto ".$Precio."<br/>";
			break;
		}

		if(is_numeric(openssl_decrypt($_POST['cantidad'],COD,KEY))){
			$Cantidad = openssl_decrypt($_POST['cantidad'],COD,KEY);
			//$mensaje.= " la cantidad es correcto ".$ID."<br/>";
		}else{
			$Cantidad = openssl_decrypt($_POST['cantidad'],COD,KEY);
			//$mensaje.= " la cantidad es incorrecto ".$Cantidad."<br/>";
			break;
		}
		if (!isset($_SESSION['CARRITO'])) {
			$producto = array(
				'ID'=>$ID,
				'NOMBRE'=>$nombre,
				'PRECIO'=>$Precio,
				'CANTIDAD'=>$Cantidad
			);
			$_SESSION['CARRITO'][0] = $producto;
		}else{
			$idProductos=array_column($_SESSION['CARRITO'],"ID");
			if(in_array($ID, $idProductos)){
				echo "<script>$('#span3').show();</script>";
			}else{


				$Numeroproductos = count($_SESSION['CARRITO']);
				$producto = array(
					'ID'=>$ID,
					'NOMBRE'=>$nombre,
					'PRECIO'=>$Precio,
					'CANTIDAD'=>$Cantidad
				);
				$_SESSION['CARRITO'][$Numeroproductos] = $producto;
			}
		}
		//$mensaje = "Producto agregado al carrito";
			break;


		}
	//$mensaje = print_r($_SESSION,true);
	}
	?>
