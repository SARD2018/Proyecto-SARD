<%-- 
    Document   : Registro_Ciudadano
    Created on : 2/11/2018, 10:15:00 AM
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Ciudadano.css">
    </head>
    <body>
      <div class="Container">
        <a href="Login.jsp">volver</a>
        <div class="form_Ciudadano">
        <h1>REGISTRO</h1>
            <form action="Servlet_Cliente" method="post" enctype="multipart/form-data">
                <label>Documento:</label> <input type="text" name="Documento" pattern="[0-9]{4,11}" required>
                <label>Tipo de Documento:</label>
                    <select name="Tipo_Documento" required>
                        <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                        <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                        <option value="Pasaporte">Pasaporte</option>
                    </select>
                <label>Nombre:</label> <input type="text" name="Nombre" pattern="[A-Z,a-z]{1,50}" required>
                <label>Apellido:</label> <input type="text" name="Apellido" pattern="[A-Z,a-z]{1,50}" required>
                <label>Genero:</label>
                    <select name="Genero" required >
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                    </select>
                <label>Fecha de Nacimiento:</label> <input type="date" name="Fecha_Nacimiento"  required>
                <label>Direccion:</label> <input type="text" name="Direccion" required>
                <label>Telefono:</label> <input type="text" name="Telefono" pattern="[0-9]{5,10}" required>
                <label>Correo:</label> <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required>
                <label>Foto:</label> <input type="file" name="Foto">
                <input class="btn" type="submit" name="R_Ciudadano" value="Registrar">
            </form>
        </div>
        <div class="link_Veterinaria">
            <label>Si quieres registrar tu veterinaria has click  <a href="Registro_Veterinaria.jsp">aqui</a></label>
        </div>		
	</div>
    </body>
</html>
