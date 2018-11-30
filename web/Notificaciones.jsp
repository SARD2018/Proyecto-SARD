<%-- 
    Document   : Notificaciones
    Created on : 30/11/2018, 08:49:12 AM
    Author     : SENA
--%>

<%@page import="Modelo.GS_Veterinaria"%>
<%@page import="Modelo.Veterinaria_M"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="T_Veterinaria_0">  
                       

                            <%
                                ArrayList<GS_Veterinaria> Tabla_V0 = new ArrayList<>();
                                Veterinaria_M Veterinaria =new Veterinaria_M();
                                GS_Veterinaria GS_V0 = new GS_Veterinaria();
                                Tabla_V0= Veterinaria.Todo_cero();
                                for(int i=0; i<Tabla_V0.size(); i++){
                                    GS_V0 =Tabla_V0.get(i);

                            %>
                           <div class="Nombre_0">
                               <h2 class="Nombre_V0"> <%= GS_V0.getNombre()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                     <img src="<%= GS_V0.getFoto()%>">
                                     <input class="Foto_input Foto_V0" type="file" value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento_V0" type="Text" name="Documento" readonly value="<%= GS_V0.getNit()%>">
                                     <input class="Tipo_Documento_V0" type="Text" name="Tipo_Documento" readonly value="<%= GS_V0.getTipo_Veterinaria()%>">
                                     <input class="Genero_V0" type="Text" name="Genero" readonly value="<%= GS_V0.getRepresentante()%>">
                                     <input class="Fecha_V0" type="Text" name="Fecha" readonly value="<%= GS_V0.getFecha_Fundacion()%>">
                                     <input class="Direccion_V0" type="Text" name="Direccion"  value="<%= GS_V0.getDireccion()%>">
                                     <input class="Barrio_V0" type="Text" name="Telefono" value="<%= GS_V0.getBarrio()%>">
                                     <input class="Telefono_V0" type="Text" name="Telefono" value="<%= GS_V0.getTelefono()%>">
                                     <input class="Correo_V0" type="Text" name="Telefono" value="<%= GS_V0.getCorreo()%>">
                                     <input class="Rl_V0" type="Text" name="Correo" value="<%= GS_V0.getRol()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <span class="icon icon-pencil Act_V0"></span>
                            </div>
                            <%
                            }
                            %>
                    </div>
    </body>
</html>
