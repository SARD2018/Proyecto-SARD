<%-- 
    Document   : Menu_Administrador
    Created on : 25/10/2018, 10:10:17 PM
    Author     : Yefrin Pacheco
--%>

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
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Menus.js"></script> 
    </head>
    <body>
        <header class="BarraMenuAdmin">
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
                        <li><a href="Menu_Administrador.jsp">Inicio</a></li>
                        <li><a href="Mostrar_Denuncias.jsp">Denuncias</a></li>
                        <li><a href="Registros_Administrador.jsp">Usuarios</a></li>
                        <li><a href="Postulacion.jsp">Adopciones</a></li>
                        <li><a href="Mascota.jsp">Mascotas</a></li>
                        <li><a class="Eventos">Eventos</a></li>
                    </ul>
                </nav>
                <%
                String Documento=(String)Nom.getAttribute("DocSession");
                ArrayList<GS_Administrador> datos = new ArrayList<>();
                Administrador_M con = new Administrador_M();
                datos = con.Uno_Admin(Documento);
                GS_Administrador Dat = new GS_Administrador();

                for(int i=0; i<datos.size(); i++){
                    Dat = datos.get(i);
                %>
                <div class="Perfil">
                    <img src="<%= Dat.getFoto()%>">
                    <h2><%= Dat.getNombre()%> <%= Dat.getApellido()%></h2>
		</div>
                <% } %>
            </div>
            <div class="DatosPerfil">
                <a class="btn " href="Perfil_Administrador.jsp">Perfil</a>
                <a class="btn" href="Login.jsp">Cerrar Session</a>
        </div>
        </header>
        
        <div class="CargarPag">
            <h2></h2>
            <img src="">
            <!--Aca carga la pag -->
        </div>
    </body>
</html>
