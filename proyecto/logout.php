<?php
//Para hacer logout de la página
session_start();
session_destroy();
header("Location: home.php ");
?>