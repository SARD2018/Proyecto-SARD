<%-- 
    Document   : Perfil_Administrador
    Created on : 31/10/2018, 09:29:20 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Administrador_M"%>
<%@page import="Modelo.GS_Administrador"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Perfil_Administador.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/E_Menu_Administrador.css">
        <script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Perfil.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
    </head>
    <body>
        <div class="BarrMenu">
         <!-- aca carga la barra -->
         </div>
        <div class="Container">
            
        <div class="T_Administrador">  
                    <form action="Servlet_Administrador" method="post" enctype="multipart/form-data">
                        <%
                            HttpSession Doc=request.getSession();
                            String Documento=(String)Doc.getAttribute("DocSession");
                            ArrayList<GS_Administrador> datos = new ArrayList<>();
                            Administrador_M con = new Administrador_M();
                            datos = con.Uno_Admin(Documento);
                            GS_Administrador inggs = new GS_Administrador();

                            for(int i=0; i<datos.size(); i++){
                                inggs = datos.get(i);
                        %>
                        
                            <div class="Nombre_A" > 
                                <h2><%=inggs.getNombre()+" "+inggs.getApellido()%></h2>
                                <input type="hidden" value="<%=inggs.getNombre()%>" name="Nombre_A">
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                    <label>
                                        <img class="Foto_img" src="<%= inggs.getFoto()%>">
                                         <span class="icon icon-camera"></span>
                                        <input class="Foto_input" name="Foto_A" type="file" >
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input name="Documento_A" type="Text" class="Documento" readonly   value="<%= inggs.getDocumento()%>">
                                    <input name="Tipo_Documento_A" type="Text" class="Tipo_Documento" readonly value="<%= inggs.getTipo_Documento()%>">
                                    <input name="Genero_A" type="Text" class="Genero" readonly value="<%= inggs.getGenero()%>">
                                    <input name="Fecha_A" type="Text" class="Fecha" readonly value="<%= inggs.getFecha_Nacimiento()%>">
                                    <input name="Direccion_A" type="Text" class="Direccion"  value="<%= inggs.getDireccion()%>">
                                    <input name="Telefono_A" type="Text" class="Telefono" value="<%= inggs.getTelefono()%>">
                                    <input name="Correo_A" type="Text" class="Correo" value="<%= inggs.getCorreo()%>">
                                </div>
                            </div>
                            <div class="btn_A_E">
                                <button name="Act_Admin"><span class="icon icon-pencil"></span>ACTUALIZAR</button>    
                            </div>
                        <%
                        }
                        %>
                    </form>
                </div>
    </body>
</html>
