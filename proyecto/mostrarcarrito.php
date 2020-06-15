<?php 
//En este archivo mostrará la tabla del carrito de la compra
session_start();
include_once("config.php");
include_once("carrito.php");
include_once("header.php");
include_once("navbarlogueado.php");

?>
<br>
<h3>Lista del carrito</h3>
<?php if(!empty($_SESSION['CARRITO'])) {?>
	<table class="table table-light table-bordered">
		<tbody>
			<tr>
				<th width="40%">Descripción</th>
				<th width="15%" class="text-center">Cantidad</th>
				<th width="20%"class="text-center">Precio</th>
				<th width="20%"class="text-center">Total</th>
				<th width="5%">--</th>
			</tr>
			<?php 
			$total=0;
			foreach ($_SESSION['CARRITO'] as $indice => $producto) {
			# code...
				?>
				<tr>
					<td width="40%"><?php echo $producto['NOMBRE']?></td>
					<td width="15%" class="text-center"><?php echo $producto['CANTIDAD']?></td>
					<td width="20%" class="text-center"><?php echo $producto['PRECIO']?></td>
					<td width="20%" class="text-center"><?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2); ?></td>
					<td width="5%">
						<form action="" method="post">
							<input type="hidden" name="idd" id="idd" value="<?php echo openssl_encrypt($producto['ID'],COD,KEY)?>" >
							<button type="submit" value="Eliminar" name="btnAccion" class="btn btn-danger">Eliminar</button>
						</form>
					</td>
				</tr>
				<?php
				$total = $total + ($producto['PRECIO']*$producto['CANTIDAD']);
			}
			?>
			<tr>
				<td colspan="3" align="right"><h3>Total</h3></td>
				<td align="right"><h3><?php echo number_format($total,2); ?>€</h3></td>
			</tr>
			<tr>
				<td colspan="5" align="right">
					<form action="pagar.php" method="post">
						<button class="btn btn-primary" type="submit" value="proceder" name="btnAccion">Proceder a pagar</button>
					</form>

				</td>
			</tr>

		</tbody>
	</table>
	<?php
}else{?>
	<div class="alert alert-success">
		No hay productos en el carrito
	</div>
	<?php
}
?>