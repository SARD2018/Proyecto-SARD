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
            <form action="Servlet_Mascota" enctype="multipart/form-data" method="POST">
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
                                <input type="Text" value="<%=Codigo%>" name="Codigo" disabled>
                                
                            </label>
                            <label>Tipo Mascota:
				<select name="Tipo_Mascota" required>
                                    <option value="Perro">Perro</option>
                                    <option value="Gato">Gato</option>
                                    <option value="Pajaro">Pajaro</option>
				</select>
                            </label>
                            <label>Nombre: 
                                <input type="text" name="Nombre_M" placeholder="Ingrese el nombre de su Mascota" pattern="[A-Za-z]{1,30}" requiere>
                            </label>
                            <label>Fecha de Nacimiento: 
                                <input type="date" id="FechaNacimiento_M" name="FechaNacimiento_M" required>
                            </label>
                            <label>Color: 
                                <input type="text" name="Color_M" pattern="[A-Za-z]{3,20}" placeholder="Indique el color de su mascota" required>
                            </label>
			</div>
			<div class="Rigth_Mascota">
                            <label>Raza: 
                                <input type="text" name="Raza_M" placeholder="Indique la raza de su mascota" pattern="[A-Za-z]{3,20}" required>
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
            </form>
			
            <div class="Actualizar_M">
		<h2>Actualizar Mascota</h2>
            </div>
            <form>
		<div class="Position_Mascota">
                    <div class="Filtro_Mascota">
                        <label>Filtrar por:
                            <input type="text">
                        </label>
                    </div>
                    <div class="Tabla_M">
                        <table class="Tabla_Mascota">
                            <tr>
                                <th>Codigo</th>
                                <th>Tipo de Mascota</th>
                                <th>Nombre</th>
                                <th>Fecha de Nacimiento</th>
                                <th>Color</th>
                                <th>Raza</th>
                                <th>Sexo</th>
                                <th>Dueno</th>
                                <th>Foto</th>
                                <th>Ultima Fecha de Vacunacion</th>
                            </tr>
                            <%
                            String Dato = request.getParameter("Dato");
                            ArrayList<GS_Mascota> Tabla_mascota = new ArrayList<>();
                            GS_Mascota GSM = new GS_Mascota();
                            if (Dato != null){
                                Tabla_mascota = MM.FiltroMascota(Dato);
                            }else {
                                Tabla_mascota = MM.Todo_Mascota();
                            }
                             
                            for (int i = 0; i < Tabla_mascota.size();i++){
                                GSM = Tabla_mascota.get(i);
                            %>
                            <tr>
                                <td><input type="text" name="CodigoMascota" value="<%=GSM.getCodigo()%>"></td>
                                <td><input type="text" name="TipoMascota" value="<%=GSM.getTipo_Mascota()%>"></td>
                                <td><input type="text" name="NombreMascota" value="<%=GSM.getNombre()%>"></td>
                                <td><input type="text" name="FecaNacimiento" value="<%=GSM.getFecha_Nacimiento()%>"></td>
                                <td><input type="text" name="ColorMascota" value="<%=GSM.getColor()%>"></td>
                                <td><input type="text" name="RazaMascota" value="<%=GSM.getRaza()%>"></td>
                                <td><input type="text" name="SexoMascota" value="<%=GSM.getSexo()%>"></td>
                                <td><input type="text" name="DuenoMascota" value="<%=GSM.getDocumento()%>"></td>
                                <td>
                                    <label>
                                        
                                        <input type="submit" name="FotoMascota" class="FotoMascota">
                                    </label>
                                </td>
                                    <td><input type="text" name="Foto" value="<%=GSM.getCodigo()%>"></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </div>	
                </div>			
            </form>
        </div>
    </body>
</html>
