 <!--En este archivo estará todo relacionado con generar los productos -->
 <div class="container" id="hola">
  <div class="row" id="ordenar">
    <!--ordenar por....-->
    <?php 
    include_once("carrito.php");
    require_once("navordenarprecios.html");

    include_once("config.php");
    


    $showpro = "SELECT * FROM productos";
    $result2 = $conn->query($showpro);
    if ($result2) {
      while ($row = $result2->fetch_array()) {


        ?>
        <div class="col-sm-12 col-md-6 col-lg-4">
          <div class="card mb-5" style="width: 18rem;">
            <img class="card-img-top" data-placement="right" data-toggle="tooltip" data-trigger="hover" title="<?php echo $row['Descripcion'];?>" src="<?php echo $row['Imagen'];?>" alt="<?php echo $row['Nombre'];?>">
            <div class="card-body">
              <h5 class="card-title"><?php echo $row['Nombre'];?></h5>
              <p class="card-text"><?php echo $row['Descripcion'];?></p>
              <p class="card-text" style="font-weight: bold;"><?php echo $row['Precio']?>€</p>
              <form action="" method="post">
                <input type="hidden" name="idd" id="idd" value="<?php echo openssl_encrypt($row['id'],COD,KEY)?>" >
                <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($row['Nombre'],COD,KEY);?>">
                <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($row['Precio'],COD,KEY);?>">
                <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1,COD,KEY);?>">
                <button type="submit" value="Agregar" name="btnAccion" class="btn btn-primary">Añadir al carrito</button>
              </form>
            </div>
          </div>
        </div>
        <?php
      }
    } 
    ?>



  </div>
</div>