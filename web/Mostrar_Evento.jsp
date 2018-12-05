<%-- 
    Document   : Mostrar_Evento
    Created on : 5/12/2018, 11:00:13 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="Modelo.GS_Evento"%>
<%@page import="Modelo.Eventos_M"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SARD</title>
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Mostrar_Evento.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Ciudadano.css">
        <script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
        <script src="Estilos/JS/Eventos.js"></script>
    </head>
    <body>
        <div class="BarrMenu">
         <!-- aca carga la barra -->
        </div>
        <div class="Mos-Eventos">
            <h2>Eventos</h2>
                <%
                    ArrayList<GS_Evento> datos = new ArrayList<>();
                    Eventos_M con = new Eventos_M();
                    datos = con.Unos_Evento();
                    GS_Evento Dat = new GS_Evento();

                    for(int i=0; i<datos.size(); i++){
                        Dat = datos.get(i);
                %>
            <div class="Caja-Evento">
                <div class="Mostrar-E">
                    <h3><%= Dat.getNombre()%></h3>
                    <img src="<%= Dat.getFoto()%>">
                </div>
                <div class="Informacion-E">
                    <h3><%= Dat.getTipo()%></h3>
                    <h3><%= Dat.getFecha()%></h3>
                    <p><%= Dat.getDescripcion()%></p>
                </div>
            </div>
              <% }%>
        </div>
    </body>
</html>
