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
    </head>
    <body>
      <div class="Container">
		<a href="Login.jsp">volver</a>
		<h1>REGISTRO</h1>
		<div class="form_Ciudadano">
			<form action="../Controlador/Ciudadano_C.php" method="post" enctype="multipart/form-data">
					<p>Documento: <input type="text" name="Documento" pattern="[0-9]{4,11}" required></p>
					<p>Tipo de Documento: 
						<select name="Tipo_Documento" required>
							<option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
							<option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
							<option value="Pasaporte">Pasaporte</option>
						</select></p>
					<p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z]{1,50}" required></p>
					<p>Apellido: <input type="text" name="Apellido" pattern="[A-Z,a-z]{1,50}" required></p>
					<p>Genero: <select name="Genero" required >
						<option value="Masculino">Masculino</option>
						<option value="Femenino">Femenino</option>
					</select></p>
					<p>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento"  required></p>
					<p>Direccion: <input type="text" name="Direccion" required></p>
					<p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
					<p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
					<p>Foto: <input type="file" name="Foto"></p>
					<p><input class="btn" type="submit" name="R_Ciudadano" value="Registrar"></p>
				</form>
			</div>
		<div class="link_Veterinaria">
			<P>Si quieres registrar tu veterinaria has click  <a href="Registro_Veterinaria.jsp">aqui</a></P>
		</div>		
	</div>
    </body>
</html>
