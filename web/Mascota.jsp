<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Mascota_M"%>
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
            <form method="Post" action="" enctype="multipart/form-data">
		<div class="Registrar_M"><h2>Insertar Mascota</h2></div>
		<div class="form_Mascota">
                    <div class="LR_Mascota">
			<div class="Left_Mascota">
                            <label>Codigo de Mascota:
                                <%
                                    int Codigo = 0;
                                    Mascota_M MM = new Mascota_M();
                                    Codigo = MM.Codigo()+1;
                                    
                                %>
                                <input type="Text" value="<%=Codigo%>"  disabled>
                                
                            </label>
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
			<div class="Rigth_Mascota">
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
                                    ArrayList<GS_Cliente> Datos_Cliente = new ArrayList<>();
                                    Cliente_M CM = new Cliente_M();
                                    Datos_Cliente = CM.Todo_Cliente();
                                    GS_Cliente GS = new GS_Cliente();
                                    for (int i = 0; i < Datos_Cliente.size(); i++){
                                        GS = Datos_Cliente.get(i);                                    
                                    
                                %>
                                <option value="<%=GS.getDocumento()%>"><%=GS.getDocumento()%>, <%=GS.getNombre()%> <%=GS.getApellido()%></option>
                                <%
                                    }
                                %>
				</select>
                            </label>
                            <label>Foto: 
                                <SPAN class="InsertarFoto icon icon-camera"">
                                    <input type="file" name="Foto_M" class="Foto" accept="image/jpeg, image/png, image/gif">
                                </SPAN>
                            </label>
			</div>
                    </div>
                    <div class="btn_Mascota">
			<button name="btn-Insertar" class="btn-Insertar">Insertar</button>
                    </div>
		</div>
                <?php
                    if (isset($_POST['btn-Insertar'])) {
                        echo "<script type='text/javascript'> alert('".$resultado."'); </script>";
                    }
		?>
            </form>
			
            <div class="Actualizar_M">
		<h2>Actualizar Mascota</h2>
            </div>
            <form>
		<div class="Position_Mascota">
                    <div class="Filtro_Mascota">
                        <label>Filtrar por:
                            <input type
                    </div>	
                </div>			
            </form>
        </div>
    </body>
</html>
