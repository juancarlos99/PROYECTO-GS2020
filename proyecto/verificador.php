<?php 
//Para verificar y actualizar la base de datos
session_start();
include_once("config.php");
include_once("carrito.php");
include_once("header.php");
include_once("navbarlogueado.php");


//print_r($_GET);
$ClientID= "Acz02h4D7D4gVDP_N4aMrD11fNFerjQ45w4alpEZxYsCbq3fgQTksSU4h207qU9t_q8-T9K2R_mGbZq5";
$Secret= "EJtG25CAAY1MRBFkeZgbHVnx-yVp37BLgVqEdHUkfoqGrbVCwWp9cXv76-0m1DrQfU4qPFTkP1DmFnUs";
$login = curl_init("https://api.sandbox.paypal.com/v1/oauth2/token");
curl_setopt($login, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($login, CURLOPT_USERPWD, $ClientID.":".$Secret);
curl_setopt($login, CURLOPT_POSTFIELDS,"grant_type=client_credentials");
$Respuesta = curl_exec($login);


$objRespuesta=json_decode($Respuesta);

$AccessToken = $objRespuesta->access_token;
//print_r($AccessToken);

$venta = curl_init("https://api.sandbox.paypal.com/v1/payments/payment/".$_GET['paymentID']);
curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json","Authorization: Bearer ".$AccessToken));

curl_setopt($venta, CURLOPT_RETURNTRANSFER, TRUE);
$RespuestaVenta = curl_exec($venta);
$objDatosTransaccion=json_decode($RespuestaVenta);

//print_r($objDatosTransaccion->payer->payer_info->email);
$state = $objDatosTransaccion->state;
$email = $objDatosTransaccion->payer->payer_info->email;
$total = $objDatosTransaccion->transactions[0]->amount->total;
$currency = $objDatosTransaccion->transactions[0]->amount->currency;
$custom = $objDatosTransaccion->transactions[0]->custom;


$clave = explode("#", $custom);
$SID = $clave[0];
$claveVenta = openssl_decrypt($clave[1], COD, KEY);
floatval($total);
curl_close($venta);
curl_close($login);
//print_r($RespuestaVenta);
if ($state=="approved") {
	$pedido = "INSERT INTO `pedidos` (`ID_user` , `Usuario` , `Dirección`, `Telefono`, `Email`, `Fecha`) VALUES ('".$_SESSION['id']."','".$_SESSION['userlogin']."', '".$_SESSION['dir']."', '".$_SESSION['tel']."', '".$_SESSION['email']."', current_timestamp());";
	$conn->query($pedido);
	$mensajePaypal = "<h3>Pago aprobado</h3>";
	$sql = "UPDATE `tblventas` SET `PaypalDatos` = '$RespuestaVenta', `status` = 'aprobado' WHERE `tblventas`.`ID` = '$claveVenta';";
	$conn->query($sql);
	$hola = "UPDATE `tblventas` SET `status` = 'completo' WHERE `ClaveTransaccion` = '$SID' AND `Total` = '$total' AND `ID` = '$claveVenta'";
	$result = $conn->query($hola);
	$finish=$result->num_rows;
}else{
	$mensajePaypal = "<h3>Hay un problema con el pago de paypal</h3>";
}
//echo $mensajePaypal." ".$SID." ".$claveVenta." ".$total;
?>
<div class="jumbotron">
	<h1 class="display-4">¡Listo!</h1>
	<hr class="my-4">
	<p class="lead"><?php echo $mensajePaypal; ?></p>
</div>