<%-- 
    Document   : Mostrar_Denuncias
    Created on : 14/11/2018, 09:05:43 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="Modelo.Denuncias_M"%>
<%@page import="Modelo.GS_Denuncia"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/MenuAdministrador.js"></script>
    </head>
    <body>
        <div class="Tabla">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Direccion</th>
                    <th>Descripcion</th>
                    <th>Evidencia</th>
                    <th>Fecha</th>
                    <th></th>
                </tr>
                <%
                    ArrayList<GS_Denuncia> datos = new ArrayList<>();
                    Denuncias_M con = new Denuncias_M();
                    datos = con.Tabla_Denuncias();
                    GS_Denuncia Dat = new GS_Denuncia();

                    for(int i=0; i<datos.size(); i++){
                        Dat = datos.get(i);
                %>
                <tr>
                    <td><%= Dat.getCodigo()%></td>
                    <td><%= Dat.getDireccion()%></td>
                    <td><%= Dat.getDescripcion()%></td>
                    <td><img src="<%= Dat.getEvidencia()%>"></td>
                    <td><%= Dat.getFecha()%></td>
                    <td><span class="icon-pencil"></span></td>
                </tr>
                <%  } %>
            </table>
        </div>
    </body>
</html>
