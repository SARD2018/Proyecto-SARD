<%-- 
    Document   : Mostrar_Denuncias
    Created on : 14/11/2018, 09:05:43 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="Modelo.GS_Denuncia_Cliente"%>
<%@page import="Modelo.Denuncias_M"%>
<%@page import="Modelo.GS_Denuncia"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Mostrar_Denuncia.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Denuncias.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
    </head>
    <body>
        <div class="BarrMenu">
            <!-- aca carga la barra -->
        </div>
        <div class="position">
            <div class="DenAnon">
                <label class="label1">Denuncias Anonimas</label>
            </div>
            <div class="TablaDe1">
                
                    <%
                        ArrayList<GS_Denuncia> datos = new ArrayList<>();
                        Denuncias_M con = new Denuncias_M();
                        datos = con.Tabla_Denuncias();
                        GS_Denuncia Dat = new GS_Denuncia();

                        for(int i=0; i<datos.size(); i++){
                            Dat = datos.get(i);
                    %>
                    <div class="Datos">
                        <div class="Fecha">
                                <label><%=Dat.getFecha()%></label>
                        </div>
                        <div class="Direccion">
                                <label><%=Dat.getDireccion()%></label>
                        </div>
                        <div class="Evidencia">
                            <img src="<%=Dat.getEvidencia()%>">
                        </div>
                        <div class="Correo">
                                <label><%=Dat.getCorreo()%></label>
                        </div>
                        <div class="">
                                <label class="icon-eye Prueba-Anonima"></label>
                        </div>
                    </div>
                    <div class="Datos_DAnonima">
                        <div class="Datos_DAnonima2">
                            
                            <label class="icon-cancel cerrar_anonima"></label>
                            <input type="hidden" class="Codigo_D" value="<%=Dat.getCodigo()%>">
                            <img src="<%=Dat.getEvidencia()%>">
                            <label><%=Dat.getFecha()%></label>
                            <label><%=Dat.getDireccion()%></label>
                            <label><%=Dat.getCorreo()%></label>
                            <label><%=Dat.getDescripcion()%></label>
                            
                            <input type="textarea" class="Respuesta" name="Respuesta" >
                            <input class="Res_Anonima" type="submit" name="Res_Anonima" value="Enviar">
                           
                        </div>
                    </div>
                    <%  } %>
                
            </div>
                
             <div class="DenCli">
                <label class="label1">Denuncias Cliente</label>
            </div>
            <div class="TablaDe2">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Direccion</th>
                        <th>Evidencia</th>
                        <th>Documento</th>
                        <th>Fecha</th>
                    </tr>
                    <%
                        ArrayList<GS_Denuncia_Cliente> datos2 = new ArrayList<>();
                        Denuncias_M con2 = new Denuncias_M();
                        datos2 = con2.Tabla_Denuncias2();
                        GS_Denuncia_Cliente Dat2 = new GS_Denuncia_Cliente();

                        for(int i=0; i<datos2.size(); i++){
                            Dat2 = datos2.get(i);
                    %>
                    <tr>
                        <td><%= Dat2.getCodigo()%></td>
                        <input  class="Denuncia_Cliente" type="hidden" value="<%= Dat2.getCodigo()%>" name="Denuncia_Cliente">
                        <td><%= Dat2.getDireccion()%></td>
                        <td class="imagen"><img src="<%= Dat2.getEvidencia()%>"></td>
                        <td><%= Dat2.getDocumento()%></td>
                        <td><%= Dat2.getFecha()%></td>
                        <td><span class="icon-eye Prueba-Denuncia"></span></td>
                    </tr>
                    <%  } %>
                </table>
            </div>
           
        </div>
    </body>
</html>
