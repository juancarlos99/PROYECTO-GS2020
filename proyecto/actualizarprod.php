<!--Este archivo servirá para actualizar productos ya creados-->
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
	require("config.php");
	session_start();
	extract($_GET);
	
	$_GET['id'] = $id;
		// Create connection

	
	$sql="SELECT * FROM productos WHERE id='$id'";

	$res = $conn->query($sql);
	while ($row= $res->fetch_array()){
		$id=$row[0];
		$nomb=$row[1];
		$precio=$row[2];
		$desc=$row[3];
		$tipo=$row[4];
		$image=$row[5];
	}
	?>
	<form action="ejecutarprod.php" method="post">
		Id<br><input type="text" name="id" required value= "<?php echo $id ?>" readonly="readonly"><br>
		Nombre del Producto<br> <input type="text" required name="nombre" value="<?php echo $nomb?>"><br>
		Precio del producto<br> <input type="text" required name="precio" value="<?php echo $precio?>"><br>
		Descripción del producto<br> <input type="text" required name="desc" value="<?php echo $desc?>"><br>
		Tipo del producto<br> <input type="text" name="tipo" required value="<?php echo $tipo?>"><br>
		Imagen del producto<br> <input type="text" name="img" required value="<?php echo $image?>"><br>

		<br>
		<input type="submit" value="Guardar" class="btn btn-success btn-primary">
	</form>
</body>
</html>