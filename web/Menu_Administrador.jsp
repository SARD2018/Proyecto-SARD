<%-- 
    Document   : Menu_Administrador
    Created on : 25/10/2018, 10:10:17 PM
    Author     : Yefrin Pacheco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        HttpSession Nom=request.getSession();
        String Nombre=(String)Nom.getAttribute("NomSession");
        
        %>
<html>
    <head>
    	<title>Menu</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/MenuAdministrador.js"></script>
    </head>
    <body>
        <header>
            <div class="Logo_tipo">
                <div class="img1">
                    <img src="Imagenes/logo.png">
                    <h1>SARD</h1> 
                </div>
                <div class="img2">
                    <img src="Imagenes/logo-2.png">
                    <img class="Dos" src="Imagenes/Otra.png">
                </div>
            </div>
            <div class="Barra-menu">
                <div class="Boton-m">
                    <a href="#"><span class="icon-menu"></span></a>
                </div>
                <nav>
                    <ul class="Menu">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="">Denuncias</a></li>
                        <li><a href="">Usuarios</a></li>
                        <li><a href="">Adopciones</a></li>
                        <li><a href="">Mascotas</a></li>
                        <li><a href="">Eventos</a></li>
                    </ul>
                </nav>
                <div class="Perfil">
                    <img src="Imagenes/Perfil.png">
                    <h2><%=Nombre%></h2>
		</div>
            </div>
        </header>
        <div class="DatosPerfil">
            <a class="btn" href="">Perfil</a>
            <a class="btn" href="">Cerrar Session</a>
        </div>
        <div class="Imagen">
        </div>
    <div id="Denuncias" class="Container-1">
        <div class="Text-1">
                <h2>Denuncias</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
        </div>
    </div>
    <div id="Conocenos" class="Container-2">
        <div class="Text-1">
                <h2>Conocenos</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
        </div>
    </div>
    <div id="Noticias" class="Container-3">
        <div class="Text-1">
                <h2>Noticias</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
        </div>
    </div>
    <div id="Contactenos" class="Container-4">
        <div class="Text-1">
            <h2>Contactenos</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
        </div>
    </div>
    </body>
</html>
