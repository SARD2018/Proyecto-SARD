<%-- 
    Document   : Registro_Veterinaria
    Created on : 2/11/2018, 10:16:13 AM
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="Container">
            <a href="Login.jsp">volver</a>
            <h1>REGISTRO VETERINARIA</h1>
            <div class="form_Veterinaria">
                <form action="Servlet_Veterinaria" method="post" enctype="multipart/form-data">
                    <p>Nit:<input type="text" name="Nit" pattern="[0-9]{4,15}" required></p>
                    <p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z]{1,50}" required></p>
                    <p>Representante: <input type="text" name="Representante" pattern="[A-Z,a-z]{1,50}" required></p>
                    <p>Fecha de Fundacion: <input type="date" name="Fecha_Fundacion"  required></p>
                    <p>Direccion: <input type="text" name="Direccion" required></p>
                    <p>Barrio: <input type="text" name="Barrio" pattern="[A-Z,a-z]{1,50}" required></p>
                    <p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
                    <p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                    <p>Foto: <input type="file" name="Foto"></p>
                    <p><input class="btn" type="submit" id="R_Veterinaria" name="R_Veterinaria" value="Registrar"></p>
                </form>
            </div>
	</div>
    </body>
</html>
