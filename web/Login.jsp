<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Login.css">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registro_Cliente.css">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registro_Veterinaria.css">
        <link rel="stylesheet" href="Iconos/css/fontello.css">
	<title>Login</title>
    </head>
    <body>
        <section class="Bloque-Login">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 Ingreso">
                        <a href="index.jsp" class="Volver"><span class="icon-home"></span></a>
                        <h2 class="text-center">Ingresar</h2>
                        <form action="Servlet_Login" method="post" class="login-form">
                            <div class="form-group">
                                
                                <label class="text-uppercase">
                                    Usuario
                                </label>
                                <input type="text" name="Usuario" class="form-control" placeholder="Ingresar Usuario" pattern="[0-9]{4,12}" title="Recuerda que el usuario es su cedula de ciudadania" name="Usuario" required>
                            </div>
                            <div class="form-group">
                                <label class="text-uppercase">
                                    Contraseña
                                </label>
                                <input type="Password" name="Clave" class="form-control" placeholder="Ingresar Contraseña" pattern="[A-Za-z0-9!#$%&/()=?¡*¨:;,._¿'´+}{|°-]{8,20}" title="Ingresa tu contraseña minimo 8 caracteres" name="Clave" required>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                    <p>Recuerdame</p>
                                </label>
                                <button name="Ingreso" class="btn btn-success float-right">
                                    Ingresar
                                </button>
                            </div>
                        </form>
                        <div class="Opciones">
                            <a href="#Registro_Cliente" class="Registrarme">
                                Registrarme
                            </a>
                            <br>
                            <a href="Contraseña.php">
                                Olvide la contraseña
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8 Carrusel">
                        <div id="CarruselImagenes" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#CarruselImagenes" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#CarruselImagenes" data-slide-to="1">
                                </li>
                                <li data-target="#CarruselImagenes" data-slide-to="2">
                                </li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid" src="Imagenes/Img1.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>Adopcion</h2>
                                            <p>Encuentra todo lo relacionado con el proceso de adopcion de una mascota, 
                                                ademas descarga los formularios y encuentra informacion sobre tu proceso.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="Imagenes/Img2.jpg"  alt="Primer slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>Denuncia</h2>
                                            <p>Podras conocer las causas consideradas ante la ley como maltrato animal, 
                                                ademas podras crear tus denuncias e informarte de como va este por este medio.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="Imagenes/Img3.jpg"alt="Primer slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>Informacion</h2>
                                            <p>
                                                Encuentra fechas, lugar y horarios en lo cuales la alcaldia de mosquera realice 
                                                jornadas de vacunacion o adopcion como tambien tips que mejoraran el cuidado de tu mascota.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div id="Registro_Cliente">
            <a href="Login.jsp">volver</a>
            <div class="Contenido_C">
                <h1>REGISTRO</h1>
                <form action="Servlet_Cliente" method="post" enctype="multipart/form-data">
                    <div class="form_Ciudadano">
                        <label>Documento: <input type="text" name="Documento_C" pattern="[0-9]{4,11}" required></label>
                    
                        <label>Tipo de Documento:
                            <select name="Tipo_C" required>
                                <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                <option value="Pasaporte">Pasaporte</option>
                            </select>
                        </label>
                        <label>Lugar de Expedicion: <input type="text" name="Lugar_C" pattern="[A-Z,a-z ]{1,50}" required> </label>
                        <label>Nombre: <input type="text" name="Nombre_C" pattern="[A-Z,a-z ]{1,50}" required></label>
                        <label>Apellido: <input type="text" name="Apellido_C" pattern="[A-Z,a-z ]{1,50}" required></label>
                        <label>Genero:
                            <select name="Genero_C" required >
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                            </select>
                        </label>
                        <label>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento_C"  required></label>
                        <label>Direccion: <input type="text" name="Direccion_C" required></label>
                        <label>Barrio: <input type="text" name="Barrio_C" pattern="[A-Z,a-z ]{1,50}" required></label>
                        <label>Telefono1: <input type="text" name="Telefono1_C" pattern="[0-9]{5,10}" required></label>
                        <label>Telefono2: <input type="text" name="Telefono2_C" pattern="[0-9]{5,10}" required></label>
                        <label>Correo: <input type="email" name="Correo_C" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></label>
                        <label>Ocupacion: <input type="text" name="Ocupacion_C" pattern="[A-Z,a-z ]{1,50}" required></label>
                        <label>Foto: 
                            <input type="file" name="Foto_C" class="FotoCliente"> 
                            <span class="icon icon-camera-outline Image"></span>
                        </label>
                        <input class="btn btn-success" type="submit" name="R_Ciudadano" value="Registrar">
                        <div class="link_Veterinaria">
                            <label>Si quieres registrar tu veterinaria has click  <a href="#Registro_Veterinaria">aqui</a></label>
                        </div>
                    </div>
                </form>
                	
            </div>
        </div>
        <div id="Registro_Veterinaria">
            <a href="Login.jsp">volver</a>
            <div class="form_Veterinaria">
                <h2>Registro Veterinarias</h2>
                    <form action="Servlet_Veterinaria" method="post" enctype="multipart/form-data">
                        <p>Nit:<input type="text" name="Nit" pattern="[0-9]{4,15}" required></p>
                        <p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z ]{1,50}" required></p>
                        <p>Representante: <input type="text" name="Representante" pattern="[A-Z,a-z ]{1,50}" required></p>
                        <p>Tipo_Veterinaria 
                            <select name="Tipo">
                                <option value="Pet Shop">Pet Shop</option>
                                <option value="Hospitalizacion">Hospitalizacion</option>
                            </select>
                        </p>
                        <p>Fecha de Fundacion: <input type="date" name="Fecha_Fundacion"  required></p>
                        <p>Direccion: <input type="text" name="Direccion" required></p>
                        <p>Barrio: <input type="text" name="Barrio" pattern="[A-Z,a-z ]{1,50}" required></p>
                        <p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
                        <p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                        <p><label>Foto: 
                            <input type="file" name="Foto" class="FotoVeterinaria"> 
                            <span class="icon icon-camera-outline"></span>
                        </label></p>
                        <p><input class="btn btn-success" type="submit" name="R_Veterinaria" value="Registrar"></p>
                    </form>
            </div>	
	</div>
        <script src="Estilos/JS/jquery.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>