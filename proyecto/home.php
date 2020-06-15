<?php 
//Página principal para visitantes que vengan por primera vez
session_start();
require("config.php");
if(isset($_SESSION['userlogin'])){
  header("Location: index.php ");
}?>
<!doctype html>
<html lang="en">
<head>
  <?php require_once("header.php") ?>
</head>
<body>

  <?php require_once("navbarsinloguear.php") ?>


  <!--contenido aside-->

  <div class="container-fluid"  style="height: 100%;">
    <div class="row" style="height: 100%;">
      <?php require_once("aside.html")?>

      <!-- --------------->


      <!---contenido del medio-->

      <div class="col-10 mt-5 mb-5">
        <?php require_once("productos.php")?>

        <!---------------------------->

      </div>
      <?php require_once("footer.php")?>
    </div>
  </div>

  <!-- Optional JavaScript -->

  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  <script src="jquery/jquery.js"></script>
  <script src="jquery/scriptlog.js"></script>
</body>
</html>