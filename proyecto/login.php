 <?php
 session_start();
//Hará el login a la página seleccionando el usuario y la contraseña de la base de datos
if (isset($_POST['usuario']) && $_POST['usuario'] && isset($_POST['contraseña']) && $_POST['contraseña']) {

	$user = $_POST['usuario'];
	$pass = $_POST['contraseña'];

	require("config.php");

	$sql = "SELECT Usuario, Contraseña FROM usuario WHERE Usuario='$user' AND Contraseña='$pass'";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
        $_SESSION['userlogin'] = $user;
		
	    echo json_encode(array('success' => 1));
	    
	} else {
	    echo json_encode(array('success' => 0));
	}
        $conn->close();
   
} 
else {
    echo json_encode(array('success' => 0));
}
?>