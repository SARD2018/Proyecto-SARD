<%-- 
    Document   : Perfil_Administrador
    Created on : 31/10/2018, 09:29:20 AM
    Author     : Yefrin Pacheco
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                ArrayList<> datos = new ArrayList<>();
                Consultar con = new Consultar();
                datos = con.consultarcliente();
                IngresarDatosGS inggs = new IngresarDatosGS();

                for(int i=0; i<datos.size(); i++){
                    inggs = datos.get(i);

            %>
                <div><img name='Foto' src='' width='80' height='85'></div>
                <p>Documento: <input type='text' name='Documento' value='' readonly></p>
                <p>Tipo Documento: <input type='text' name='Tipo' value='' readonly></p>
                <p>Nombre: <input type='text' name='Nombre' value='' readonly></p>
                <p>Apellido: <input type='text' name='Apellido' value='' readonly></p>
                <p>Genero: <input type='text' name='Genero' value='' readonly></p>
                <p>Fecha Nacimiento:<input type='text' name='Fecha_N' value='' readonly></p>
                <p>Direccion: <input type='text' name='Direccion' value=''></p>
                <p>Telefono: <input type='text' name='Telefono' value=''></p>
                <p>Correo: <input type='text' name='Correo' value=''></p>
                <input type='submit' name='Actualizar' value='Actualizar'>
            <%
                }
            %>
        </div>
    </body>
</html>
