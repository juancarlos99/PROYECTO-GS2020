<!--Para actualizar un usuario siendo un admin-->
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


	$sql="SELECT * FROM usuario WHERE ID='$id'";
	//la variable  $mysqli viene de connect_db que lo traigo con el require("connect_db.php");
	$ressql=$conn->query($sql);
	while ($row= $ressql->fetch_array()){
		$id=$row[0];
		$user=$row[1];
		$email=$row[2];
		$pass=$row[3];
		$tipo=$row[4];
		$telefono=$row[5];
		$nombre=$row[6];
		$apellido=$row[7];
		$direccion=$row[8];
	}


	$conn->close();
	?>
	<form action="ejecutar.php" method="post">
		Id<br><input type="text" name="id" required value="<?php echo $id ?>" readonly="readonly"><br>
		Usuario<br> <input type="text" name="user" required value="<?php echo $user?>"><br>
		Email<br> <input type="text" name="email" required value="<?php echo $email?>"><br>
		Contraseña<br> <input type="text" name="pass" required value="<?php echo $pass?>"><br>
		Tipo<br> <input type="text" name="tipo" required value="<?php echo $tipo?>"><br>
		Telefono<br> <input type="text" name="telefono" required value="<?php echo $telefono?>"><br>
		Nombre<br> <input type="text" name="nombre" required value="<?php echo $nombre?>"><br>
		Apellido<br> <input type="text" name="apellido" required value="<?php echo $apellido?>"><br>
		Dirección<br> <input type="text" name="direccion" required value="<?php echo $direccion?>"><br>

		<br>
		<input type="submit" value="Guardar" class="btn btn-success btn-primary">
	</form>
</body>
</html>