<%-- 
    Document   : Menu_Administrador
    Created on : 25/10/2018, 10:10:17 PM
    Author     : Yefrin Pacheco
--%>

<%@page import="Modelo.Veterinaria_M"%>
<%@page import="Modelo.GS_Veterinaria"%>
<%@page import="Modelo.GS_Administrador"%>
<%@page import="Modelo.Administrador_M"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession Nom=request.getSession();
%>
<html>
    <head>
    	<title>Menu</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Veterinaria.css">
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
                        <li><a href="Mascota.php">Mascota</a></li>
                        <li><a href="Mascota.php">Denuncias</a></li>
                        <li><a href="#Noticias">Adopcion</a></li>
                        <li><a href="#Conocenos">Vacunacion</a></li>
                        <li><a href="#Noticias">Eventos</a></li>
                        <li><a href="#Contactenos">Contactenos</a></li>
                    </ul>
                </nav>
                <%
                String Documento=(String)Nom.getAttribute("DocSession");
                ArrayList<GS_Veterinaria> datos = new ArrayList<>();
                Veterinaria_M con = new Veterinaria_M();
                datos = con.Uno_Veterinaria(Documento);
                GS_Veterinaria Dat = new GS_Veterinaria();

                for(int i=0; i<datos.size(); i++){
                    Dat = datos.get(i);
                %>
                <div class="Perfil">
                    <img src="<%= Dat.getFoto()%>">
                    <h2><%= Dat.getNombre()%></h2>
		</div>
                <% } %>
            </div>
        </header>
        <div class="DatosPerfil">
            <a class="btn" href="Perfil_Administrador.jsp">Perfil</a>
            <a class="btn" href="Login.jsp">Cerrar Session</a>
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
                <p>Lorem ipsum dolor sit amet,  elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet,  adipisicing elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet,  elit. Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet,  Porro vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
                <p>Lorem ipsum dolor sit amet,  vero laboriosam atque doloremque aut repudiandae perspiciatis quos qui saepe itaque nisi voluptates aliquid tenetur nesciunt unde corporis, ratione ab. Asperiores.</p>
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
