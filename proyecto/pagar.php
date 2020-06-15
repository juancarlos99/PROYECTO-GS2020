<!DOCTYPE html>
<!--En este archivo será donde se haga el redirect para la api de paypal y pagar en su página web-->
<head>
	<!-- Add meta tags for mobile and IE -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<style>
		/* Media query for mobile viewport */
		@media screen and (max-width: 400px) {
			#paypal-button-container {
				width: 100%;
			}
		}

		/* Media query for desktop viewport */
		@media screen and (min-width: 400px) {
			#paypal-button-container {
				width: 250px;
				display: inline-block;
			}
		}

	</style>
</head>
<body>
	<?php 

	session_start();
	include_once("config.php");
	include_once("carrito.php");
	include_once("header.php");
	include_once("navbarlogueado.php");
	if ($_POST) {
		$total = 0;
		$SID = session_id();
		$email = $_SESSION['email'];
		foreach ($_SESSION['CARRITO'] as $indice => $producto) {
			$total = $total + ($producto['PRECIO']*$producto['CANTIDAD']);
		}
		$sql = "INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES (NULL, '$SID', '', '2020-06-06 12:57:18', '$email', '$total', 'pendiente')";
		$result = $conn->query($sql);
		$idVenta = $conn->insert_id;
		foreach ($_SESSION['CARRITO'] as $indice => $producto) {
			$idprod = $producto['ID'];
			$precioprod = $producto['PRECIO'];
			$cantidad = $producto['CANTIDAD'];
			$detalle = "INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIO`, `CANTIDAD`, `DESCARGADO`) VALUES (NULL, $idVenta, '$idprod', '$precioprod', '$cantidad', '0');";
			$result = $conn->query($detalle);
		}
		"<h3>".$total."</h3>";
	}

	?>

	<div class="jumbotron text-center">
		<h1 class="display-4">! Paso Final ¡</h1>
		<hr class="my-4">
		<p class="lead">Estás a punto de pagar con PayPal la cantidad de: 
			<h4>$<?php echo number_format($total,2); ?></h4>
		</p>
		<div id="paypal-button-container"></div>
		<p>Los productos podrán ser descargados una vez que se autorice el pago<br>
			<strong>Para aclaraciones :juanqui99jimenez@gmail.com</strong>
		</p>
	</div>
	<script src="https://www.paypalobjects.com/api/checkout.js"></script>



	<script>
		paypal.Button.render({
        env: 'sandbox', // sandbox | production
        style: {
            label: 'checkout',  // checkout | credit | pay | buynow | generic
            size:  'responsive', // small | medium | large | responsive
            shape: 'pill',   // pill | rect
            color: 'gold'   // gold | blue | silver | black
        },

        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create

        client: {
        	sandbox:    'Acz02h4D7D4gVDP_N4aMrD11fNFerjQ45w4alpEZxYsCbq3fgQTksSU4h207qU9t_q8-T9K2R_mGbZq5',
        	production: ''
        },

        // Wait for the PayPal button to be clicked

        payment: function(data, actions) {
        	return actions.payment.create({
        		payment: {
        			transactions: [
        			{
        				amount: { total: '<?php echo $total;?>', currency: 'EUR' },
        				description:"Compra de productos a ComPC",
        				custom:"<?php echo $SID;?>#<?php echo openssl_encrypt($idVenta, COD, KEY);?>"
        			}
        			]
        		}
        	});
        },

        // Wait for the payment to be authorized by the customer

        onAuthorize: function(data, actions) {
        	return actions.payment.execute().then(function() {
        		console.log(data);
        		window.location="verificador.php?paymentToken="+data.paymentToken+"&paymentID="+data.paymentID;
        	});
        }

    }, '#paypal-button-container');

</script>
</body>
