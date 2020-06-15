<!--Este archivo mostrará todos los usuarios en una tabla-->
<!DOCTYPE html>
<html>
<head>
	<title>ComPC, tus articulos de infórmatica</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<style type="text/css">
		.scroll{
			overflow: auto;
  			height: 470px;
		}
	</style>
</head>
<body>
	  	<h2 class="login-header">Modificar usuarios</h2>
	  	<div class="container-fluid">
	  		<div id="AAA">
	  			<div class="row">
	  				<div class="col-11">
		  				<h4>Tabla de Usuarios</h4>
		  			</div>
		  			<div class="col-1">
		  				<a onclick="adduser()" href="#">Añadir usuario</a>
		  			</div>
		  		</div>
				<div class="row">
					<div class="col-12">
					
		
			<?php

				require("config.php");
				$sql="SELECT * FROM usuario";
	
//la variable  $mysqli viene de connect_db que lo traigo con el require("connect_db.php");
				$result = $conn->query($sql);

				echo "<table border='1'; class='table';>";
					echo "<tr class='bg-warning'>";
						echo "<td id=''>Id</td>";
						echo "<td>Usuario</td>";
						echo "<td>Email</td>";
						echo "<td>Contraseña</td>";
						echo "<td>tipo</td>";
						echo "<td>Teléfono</td>";
						echo "<td>Nombre</td>";
						echo "<td>Apellidos</td>";
						echo "<td>Dirección</td>";
						echo "<td>Editar</td>";
						echo "<td>Borrar</td>";
					echo "</tr>";

				while($arreglo=mysqli_fetch_array($result)){
				  	echo "<tr class='success'>";
				    	echo "<td>$arreglo[0]</td>";
				    	echo "<td>$arreglo[1]</td>";
				    	echo "<td>$arreglo[2]</td>";
				    	echo "<td>$arreglo[3]</td>";
				    	echo "<td>$arreglo[4]</td>";
				    	echo "<td>$arreglo[5]</td>";
				    	echo "<td>$arreglo[6]</td>";
				    	echo "<td>$arreglo[7]</td>";
				    	echo "<td>$arreglo[8]</td>";
				    	echo "<td><a href='#' onclick='eduser($arreglo[0])'>Editar</a></td>";
						echo "<td><a href='#' onclick='delete_products($arreglo[0])'>Borrar</a></td>";
						

						
					echo "</tr>";
				}

				echo "</table>";
			?>
					</div>
				</div>
			</div>
		</div>
	  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src="jquery/moduser.js"></script>

</body>
</html>