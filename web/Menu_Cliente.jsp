<%-- 
    Document   : Menu_Administrador
    Created on : 25/10/2018, 10:10:17 PM
    Author     : Yefrin Pacheco
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.GS_Cliente"%>
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
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Cliente.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
        <script src="Estilos/JS/OpcionCliente.js"></script>
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
                        <li><a class="Denuncia">Denuncia</a></li>
                        <li><a class="Mascota">Mascotas</a></li>
                        <li><a class="Adopcion">Adopcion</a></li>
                        <li><a class="Eventos">Eventos</a></li>
                        <li><a class="Conocenos">Conocenos</a></li>
                    </ul>
                </nav>
                <%
                String Documento=(String)Nom.getAttribute("DocSession");
                ArrayList<GS_Cliente> datos = new ArrayList<>();
                Cliente_M con = new Cliente_M();
                datos = con.Uno_Cliente(Documento);
                GS_Cliente Dato = new GS_Cliente();

                for(int i=0; i<datos.size(); i++){
                    Dato= datos.get(i);
                %>
                <div class="Perfil">
                    <img src="<%= Dato.getFoto()%>">
                    <h2><%= Dato.getNombre()%> <%= Dato.getApellido()%></h2>
		</div>
                <% } %>
            </div>
        </header>
        <div class="DatosPerfil">
            <a class="btn" href="Perfil_Administrador.jsp">Perfil</a>
            <a class="btn" href="Login.jsp">Cerrar Session</a>
        </div>
        <div class="CargarPag">
            <!--Aca carga la pag -->
        </div>
    </body>
</html>
