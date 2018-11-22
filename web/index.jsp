<%-- 
    Document   : index
    Created on : 3/10/2018, 07:51:07 AM
    Author     : Yefrin Pacheco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="utf-8">
	<title>SARD</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Principal.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registro_Denuncias.css">
        <link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
	<script src="Estilos/JS/main.js"></script>
</head>
<body>
    <header>
        <div class="Logo_tipo">
            <div class="img1">
                <h1>SARD</h1>
            </div>
            <div class="img2">
                <img src="Imagenes/logo-2.png">
                <img class="Dos" src="Imagenes/Otra.png">
            </div>
        </div>
        <div class="Barra-menu">
            <div class="Boton-m">
                <a href="#"><span class="icon icon-menu"></span></a>
            </div>
            <nav>
                <ul class="Menu">
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#Denuncias">Denuncia</a></li>
                    <li><a href="#Eventos">Eventos</a></li>
                    <li><a href="#Conocenos">Conocenos</a></li>
                    <li><a href="#Contactenos">Contactenos</a></li>
                    <li class="Derecha"><a href="Login.jsp">Iniciar Sesion</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="Imagen">
    </div>
    <div id="Denuncias" class="Container-1">
        <div class="Text-1">
            <h2>Denuncias</h2>
                <p>Para nosotros es muy importante tus denuncias y por este motivo queremos recordarte que se considera como maltrato animal el hecho de vulnerar alguna de las siguientes libertades de las mascotas:</p>
                    <ul>
                        <li>Libre de sed, Hambre y malnutrición.</li>
                        <li>Libre de incomodidades físicas o térmicas.</li>
                        <li>Libre de dolor y enfermedad.</li>
                        <li>Libre de expresarse.</li>
                        <li>Libre de miedo y estrés.</li>
                    </ul>
                <p>Si has evidenciado la falta de alguna de estas libertades realiza tu denuncia haciendo <a href="#Caja-Denuncia">Click aqui..</a></p>
        </div>
    </div>
    <div id="Eventos" class="Container-3">
        <div class="Text-3">
            <h2>Eventos</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
        </div>
    </div>
    <div id="Conocenos" class="Container-2">
        <div class="Text-2">
            <h2>Conocenos</h2>
            <p>Inspirados en el bienestar de las mascotas decidimos crear este proyecto con colaboración del SENA, secretaria de ambiente y secretaria de salud de Mosquera, donde quisimos poner información
               y diferentes opciones pensando en mejorar la vida de nuestras mascotas en tus manos realizando este aplicativo y web..</p>
        </div>
    </div>
    <div id="Contactenos" class="Container-4">
        <div class="Text-4">
            <h2>Contactenos</h2>
            <input type="text" name="nombre" placeholder="Nombre">
            <input type="email" name="email" placeholder="Email">
            <textarea name="comentarios" placeholder="Comentarios.."></textarea>
            <input type="submit" name="Contactenos" class="btnCon" value="Enviar">
        </div>
    </div>
    <div id="Caja-Denuncia">
        <div class="Caja-Denuncia">
            <a class="icon-cancel" href="index.jsp"></a>
            <h2>Denuncias</h2>
            <form action="Servlet_Denuncia" enctype="multipart/form-data" method="post">
                <label>Direccion: <input type="text" name="Direccion" required ></label>
                <label>Evidencia: 
                    <input class="file" type="file" name="Evidencia" required accept="image/jpg, image/jpeg, image/png">
                    <span class="icon-camera"></span>
                </label>
                <label>Correo: <input type="email" required name="Correo"></label>
                <label>Fecha: <input type="date" required name="Fecha"></label>
                <textarea name="Descripcion" placeholder="Escriba el caso ocurrido"></textarea>
                <input class="btnE" type="submit" name="BotonDenun" value="Enviar">
            </form>
        </div>
    </div>
</body>
</html>