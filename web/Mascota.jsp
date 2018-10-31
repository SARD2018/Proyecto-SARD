<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page import="Modelo.GS_Mascota"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Mascotas.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script type="text/javascript" src="Estilos/JS/jquery.js"></script>
	<script type="text/javascript" src="Estilos/JS/Mascotas.js"></script>
	<title>Gestion Mascotas</title>
    </head>
    <body>
        <div class="Container">
            <div class="Encabezado">
		<h1>Mascotas</h1>
            </div>
            <form method="Post" action="" enctype="multipart/form-data">
		<div class="Insertar_Mascota"><h2>Insertar Mascota</h2></div>
		<div class="Formulario">
                    <div class="Insertar">
			<div class="Primero">
                            <label>Tipo Mascota:
				<select name="Tipo_Mascota" required>
                                    <option value="Perro">Perro</option>
                                    <option value="Gato">Gato</option>
                                    <option value="Pajaro">Pajaro</option>
				</select>
                            </label>
                            <label>Nombre: 
                                <input type="text" name="Nombre_M" placeholder="Ingrese el nombre de su Mascota" pattern="[A-Za-Z]{1,30}"" requiere>
                            </label>
                            <label>Fecha de Nacimiento: 
                                <input type="date" id="FechaNacimiento_M" name="FechaNacimiento_M" required>
                            </label>
                            <label>Color: 
                                <input type="text" name="Color_M" pattern="[A-Za-Z]{3,20}" placeholder="Indique el color de su mascota" required>
                            </label>
			</div>
			<div class="Segundo">
                            <label>Raza: 
                                <input type="text" name="Raza_M" placeholder="Indique la raza de su mascota" pattern="[A-Za-Z]{3,20}" required>
                            </label>
                            <label>Sexo: 
				<select name="Sexo_M" required>
                                    <option value="Macho">Macho</option>
                                    <option value="Hembra">Hembra</option>
				</select>
                            </label>
                            <label>Documento del Propietario: 
				<select name="Duenno_M" required>
                                <%
                                    ArrayList<GS_Cliente> Datos_Cliente = new ArrayList<GS_Cliente>();
                                    Cliente_M CM = new Cliente_M();
                                    Datos_Cliente = CM.Todo_Cliente();
                                    GS_Cliente GS = new GS_Cliente();
                                    for (int i = 0; i < Datos_Cliente.size(); i++){
                                        GS = Datos_Cliente.get(i);                                    
                                    
                                %>
                                <option value="<%=GS.getDocumento()%>"><%=GS.getDocumento()%></option>
				</select>
                            </label>
                            <label>Foto: 
                                <SPAN class="InsertarFoto icon icon-camera"">
                                    <input type="file" name="Foto_M" class="Foto" accept="image/jpeg, image/png, image/gif">
                                </SPAN>
                            </label>
			</div>
                    </div>
                    <div class="Tercero">
			<button name="btn-Insertar" class="btn-Insertar">Insertar</button>
                    </div>
		</div>
                <?php
                    if (isset($_POST['btn-Insertar'])) {
                        echo "<script type='text/javascript'> alert('".$resultado."'); </script>";
                    }
		?>
            </form>
			
            <div class="Actualizar_Mascota">
		<h2>Actualizar Mascota</h2>
            </div>
            <form>
		<div class="Actualizar">
                    <div class="Tabla">
			<table>
                            <th>Codigo</th>
                            <th>Tipo de Mascota</th>
                            <th>Nombre</th>
                            <th>Fecha de Nacimiento</th>
                            <th>Color</th>
                            <th>Raza</th>
                            <th>Sexo</th>
                            <th>Documento del propietario</th>
                            <th>Foto</th>
			</table>
                    </div>	
                </div>			
            </form>
        </div>
    </body>
</html>
