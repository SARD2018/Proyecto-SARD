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
    </head>
    <body>
        
        <div class="Container">
            <div class="Caja">
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
            <form action="Servlet_">
                <label class="Img">
                    <img src='Imagenes/Perfil.png'>
                    <input class="file" type="file" name="Foto" accept="image/jpg, image/jpeg, image/png">
                    <span class="icon-camera"></span>
                </label>
                <label>Documento:</label><input type='text' name='Documento' value='<%=inggs.getDocumento()%>' readonly>
                <label>Tipo Documento:</label><input type='text' name='Tipo' value='<%= inggs.getTipo_Documento()%>' readonly>
                <label>Nombre:</label><input type='text' name='Nombre' value='<%= inggs.getNombre()%>' readonly>
                <label>Apellido:</label><input type='text' name='Apellido' value='<%= inggs.getApellido()%>' readonly>
                <label>Genero:</label><input type='text' name='Genero' value='<%= inggs.getGenero()%>' readonly>
                <label>Fecha Nacimiento:</label><input type='text' name='Fecha_N' value='<%= inggs.getFecha_Nacimiento()%>' readonly>
                <label>Direccion:</label><input type='text' name='Direccion' value='<%= inggs.getDireccion()%>'>
                <label>Telefono:</label><input type='text' name='Telefono' value='<%= inggs.getTelefono()%>'>
                <label>Correo:</label><input type='text' name='Correo' value='<%= inggs.getCorreo()%>'>
                <input type='submit' name='Actualizar' value='Actualizar'>
            </form>
            <%
                }
            %>
            </div>
        </div>
    </body>
</html>
