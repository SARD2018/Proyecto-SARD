<%-- 
    Document   : Perfil_Ciudadano
    Created on : 3/12/2018, 05:31:19 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/Perfil_Ciudadano.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/E_Menu_Cliente.css">
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
                    <form action="Servlet_Cliente" method="post" enctype="multipart/form-data">
                        <%
                            HttpSession Doc=request.getSession();
                            String Documento=(String)Doc.getAttribute("DocSession");
                            ArrayList<GS_Cliente> datos = new ArrayList<>();
                            Cliente_M con = new Cliente_M();
                            datos = con.Uno_Cliente(Documento);
                            GS_Cliente inggs = new GS_Cliente();

                            for(int i=0; i<datos.size(); i++){
                                inggs = datos.get(i);
                        %>
                        
                            <div class="Nombre_C" > 
                                <h2><%=inggs.getNombre()+" "+inggs.getApellido()%></h2>
                                <input type="hidden" value="<%=inggs.getNombre()%>" name="Nombre_C">
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                    <label>
                                        <img class="Foto_img" src="<%= inggs.getFoto()%>">
                                         <span class="icon icon-camera"></span>
                                        <input class="Foto_input" name="Foto_C" type="file" >
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input name="Documento_C" type="Text" class="Documento" readonly   value="<%= inggs.getDocumento()%>">
                                    <input name="Tipo_Documento_C" type="Text" class="Tipo_Documento" readonly value="<%= inggs.getTipo_Documento()%>">
                                    <input name="Genero_C" type="Text" class="Genero" readonly value="<%= inggs.getGenero()%>">
                                    <input name="Fecha_C" type="Text" class="Fecha" readonly value="<%= inggs.getFecha_Nacimiento()%>">
                                    <input name="Direccion_C" type="Text" class="Direccion"  value="<%= inggs.getDireccion()%>">
                                    <input name="Telefono_C" type="Text" class="Telefono" value="<%= inggs.getTelefono()%>">
                                    <input name="Correo_C" type="Text" class="Correo" value="<%= inggs.getCorreo()%>">
                                </div>
                                
                            </div>
                                <div class="btn_A_E">
                                    <button name="Act_C"><span class="icon icon-pencil"></span>ACTUALIZAR</button>    
                                </div>
                    </form>
                        <%
                        }
                        %>
                </div>
    </body>
</html>
