<?php  session_start(); ?>
<!--En este archvio estará todo relacionado con el navbar una vez logueado -->
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary p-4 shadow-lg">
        <a class="navbar-brand ml-5" href="home.php">
          <img style="width:50%;"src="imagenes/compc.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
            
              <form class="form-inline my-2 my-lg-0 " action="" id="buscar" method="POST">
                <input class="form-control mr-sm-2"id="busqueda" name="busqueda" type="search" placeholder="Buscar productos aquí..." aria-label="Search">
              </form>


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">Inicio</a>
            </li>
            <li class="nav-item active">

              <a href="mostrarcarrito.php" class="nav-link">Carrito(<?php  echo (empty($_SESSION['CARRITO']))?0:count($_SESSION['CARRITO']);?>)
              </a>
            </li>
            <li class="nav-item active dropdown">
              <a class="nav-link dropdown-toggle mr-5" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <?php echo $_SESSION['userlogin'];?>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
               <?php 
               if($_SESSION['tipo'] == "admin"){
                ?>
                <a href="#" class="dropdown-item" onclick="panel()">Panel de administracion</a>
                <?php 
              }
              ?>
              <a href="#response" class="dropdown-item" data-toggle="modal" data-target="#response">Mi cuenta</a>
              <a class="dropdown-item" href="logout.php">Cerrar sesión</a>
            </div>
          </li>
        </ul>
      <!--Modal de mi cuenta-->
      <div class="modal" id="response">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Editar perfil</h5>
              <button class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">

              <div class="d-flex w-100 justify-content-between">
                <div class="row">
                  <div class="col-lg-12">
                    <form action="usermod.php" method="post">
                      <p>Nombre <input type="text" name="nombre" readonly="readonly" value="<?php echo $_SESSION['userlogin']?>"></p>
                      <p>Email <input type="text" name="email" readonly="readonly" value="<?php echo $_SESSION['email']?>"></p>
                      <p>Telefono <input type="text" name="telefono" required ="true" value="<?php echo $_SESSION['tel']?>"></p>
                      <p>Dirección <input type="text" name="direccion" required ="true" value="<?php echo $_SESSION['dir']?>"></p>
                      <input type="submit" value="Guardar">
                    </form>
                    <hr>
                  </div>
                  <div class="col-lg-12">
                    <form action="pass.php" id="pass" method="post" onKeypress="if(event.keyCode == 13) event.returnValue = false;" onsubmit="return validarForm();">
                      <fieldset><legend>Contraseña</legend>
                        <p>Antigua contraseña <input type="password" id="antigua" name="pass"></p>
                        <p>Nueva contraseña <input type="password" required ="true" id="new" name="passnew"></p>
                        <p>Repetir contraseña <input type="password" required ="true" id="rep" name="repetir"></p></fieldset>
                        <span id="span1" style="display: none"> No coinciden las contraseñas </span>
                        <p><input type="submit" name="passqw" id="XD" value="Guardar"></p></form>
                      </div>
                    </div>

                    <div class="modal-footer">
                      <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--fin del modal de mi cuenta-->

          </ul>
        </div>
      </nav>
    </div>
  </div>
</div>