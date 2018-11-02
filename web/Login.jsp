<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Login.css">
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
                            <a href="Registro.php">
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
        <script src="Estilos/JS/jquery.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>