<!-- NAVBAR -->
<!--En este archvio estará todo relacionado con el navbar cuando no este logueado -->
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary p-4 shadow-lg">
        <a class="navbar-brand ml-5" href="home.php">
          <img style="width:50%;" src="imagenes/compc.png">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <form class="form-inline my-2 my-lg-0 " action="" id="buscar" method="POST">
          <input class="form-control mr-sm-2"id="busqueda" name="busqueda" type="search" placeholder="Buscar productos aquí..." aria-label="Search">
        </form>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
              <a class="nav-link active" href="home.php">Inicio</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">Carrito <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" data-toggle="modal" data-target="#Loginmodal" style="cursor: pointer;">Login</a>
              <!-- Login -->
              <div class="modal fade" id="Loginmodal">
                <div class="modal-dialog modal-sm">
                  <div class="modal-content">

                    <!-- Cabecera -->
                    <div class="modal-header">
                      <h4 class="modal-title">Login</h4>
                    </div>

                    <!-- Cuerpo -->
                    <div class="modal-body">
                      <form id="login" method="post">
                        <div class="col-12">
                          <p><input type="text" id="log" pattern="^[a-zA-Z0-9]+$" name="usuario" required="required" placeholder="Usuario"></p>
                        </div>
                        <div class="col-lg-12">
                          <p><input type="password" name="contraseña" id="pass" pattern="^[a-zA-Z0-9]+$" required="required" placeholder="Contraseña"></p>
                        </div>
                        <span id="span2" style="display: none;">Login incorrecto</span>
                        <div class="col-lg-12">
                          <p><input type="submit" name="Login" value="Entrar"></p>
                        </div>
                      </form>
                    </div>

                    <!-- Footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>

                  </div>
                </div>
              </div>
            </li>

            <li class="nav-item active dropdown">
              <a class="nav-link" data-toggle="modal" style="cursor: pointer;" data-target="#Registro">Registro</a>
              <!-- Registro -->
              <div class="modal fade" id="Registro">
                <div class="modal-dialog modal-sm">
                  <div class="modal-content">

                    <!-- Cabecera -->
                    <div class="modal-header">
                      <h4 class="modal-title">Registro</h4>
                    </div>

                    <!-- Cuerpo -->
                    <div class="modal-body">
                      <div class="d-flex w-100 justify-content-between">
                        <div class="row">
                          <div class="col-lg-12">
                            <form id="registro" method="post">
                              <p><input type="text" pattern="^[a-zA-Z0-9]+$" id="user" name="usuario" required ="true" placeholder="Nombre de usuario"></p>
                              <p><div id="enuso" style="display: none"> El usuario ya esta escogido </div></p>
                            </div>
                            <div class="col-lg-12">
                              <p><input type="email" name="email" pattern="^[a-zA-Z0-9@.]+$" required ="true" placeholder="Email"></p>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <p><input type="password" required ="true" pattern="^[a-zA-Z0-9]+$" id="new" placeholder="Contraseña" name="contraseña"></p>
                                <p><input type="password" required ="true" pattern="^[a-zA-Z0-9]+$" id="rep" name="repetir" placeholder="Repetir contraseña"></p>
                                <p><div id="span1" style="display: none"> No coinciden las contraseñas </div></p>
                                <fieldset>
                                </div>
                                <div class="col-lg-12">
                                  <p><input type="number" name="telefono" pattern="[0-9]{9}" id="tele" required ="true" placeholder="Telefono"></p>
                                  <p><div id="te" style="display: none">Por favor, ingrese un numero de teléfono válido</div></p>
                                </div>
                                <div class="col-lg-12">
                                  <p><input type="text" name="nombre" pattern="^[a-zA-Z0-9 ]+$" required ="true" placeholder="Nombre"></p>
                                </div>
                                <div class="col-lg-12">
                                  <p><input type="text" name="apellidos" pattern="^[a-zA-Z0-9 ]+$"required ="true" placeholder="Apellidos"></p>
                                </div>
                                <div class="col-lg-12">
                                  <p><input type="text" name="direccion" required ="true" pattern="^[a-zA-Z0-9 ]+$" placeholder="Dirección"></p>
                                </div>
                                <div class="col-lg-12">
                                  <input type="submit" name="Registrar" id="XD" value="Registrar">
                                </div>
                              </form>
                            </div>
                          </div>   
                        </div>

                        <!-- Pie -->
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>

                      </div>
                    </div>
                  </div>
                </li>

              </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
      <!------>