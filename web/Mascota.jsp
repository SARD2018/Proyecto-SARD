<%@page import="Modelo.GS_Estado"%>
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
	<link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
	<link rel="stylesheet" href="Iconos/css/fontello.css">
	<script type="text/javascript" src="Estilos/JS/jquery.js"></script>
	<script type="text/javascript" src="Estilos/JS/Mascotas.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
	<title>Gestion Mascotas</title>
    </head>
    <body>
        <div class="BarrMenu">
            <!--aca debe cargar la barra de menu -->
        </div>
        <div class="Container">
            
            <div class="Actualizar_M">
		<h2>Modificacion Mascota</h2>
            </div>
            <div class="Position_Mascota">
                <div class="Filtro_Mascota">
                    <label>Filtrar por:
                        <input type="text" class="Busqueda">
                    </label>
                </div>
                <%
                Mascota_M MM = new Mascota_M();
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
                <div class="NombreMascota">
                    <h2><%=GSM.getNombre()%></h2>
                </div>
                <div class="Position_Informacion">
                    <div class="ImagenMascota">
                        <label>
                            <image  src="<%=GSM.getFoto()%>" class="CargarImg">
                            <input type="file" name="FotoMascota" class="FotoMascota" accept="image/jpeg, image/png, image/gif">
                        </label>
                    </div>
                    <div class="InfoMascota">
                        <input type="text" class="CodigoMascota" name="CodigoMascota" value="<%=GSM.getCodigo()%>" readonly>
                        <select class="Tipo_Mas">
                            <option value="<%=GSM.getTipo_Mascota()%>" selected readonly><%=GSM.getTipo_Mascota()%></option>
                            <option value="Perro">Perro</option>
                            <option value="Gato">Gato</option>
                            <option value="Pajaro">Pajaro</option>
                        </select>
                        <input type="text" class="Nombre_Mascota" name="Nombre_Mascota" value="<%=GSM.getNombre()%>">
                        <input type="date" class="FechaNacimiento" name="FechaNacimiento" value="<%=GSM.getFecha_Nacimiento()%>">
                        <input type="text" class="ColorMascota" name="ColorMascota" value="<%=GSM.getColor()%>">
                        <input type="text" class="RazaMascota" name="RazaMascota" value="<%=GSM.getRaza()%>">
                        <select class="GeneroMascota">
                            <option value="<%=GSM.getSexo()%>" selected readonly><%=GSM.getSexo()%></option>
                            <option value="Macho">Macho</option>
                            <option value="Hembra">Hembra</option>
                        </select>
                    </div>
                </div>
                <div class="btns">    
                    <span class="icon icon-pencil btn-Actualizar"></span>   
                    <span class="icon icon-trash btn-Eliminar"></span>
                </div>
                <%
                    }
                %>	
            </div>
            <div class="Registrar_M"><h2>Insertar Mascota</h2></div>
            <div class="form_Mascota">
                <div class="LR_Mascota">
                    <div class="Left_Mascota">
                        <label>Documento de Mascota:
                            <%
                                int Codigo = 0;
                                Codigo = MM.Codigo()+1;

                            %>
                            <input type="Text" value="000<%=Codigo%>" class="Codigo" name="Codigo" readonly>

                        </label>
                        <label>Tipo Mascota:
                            <select class="Tipo_Mascota" required>
                                <option value="Perro">Perro</option>
                                <option value="Gato">Gato</option>
                                <option value="Pajaro">Pajaro</option>
                            </select>
                        </label>
                        <label>Nombre: 
                            <input type="text" class="Nombre_M" placeholder="Ingrese el nombre de su Mascota" pattern="[A-Za-z]{1,30}" requiere>
                        </label>
                        <label>Fecha de Nacimiento: 
                            <input type="date" class="FechaNacimiento_M" name="FechaNacimiento_M" required>
                        </label>
                        <label>Color: 
                            <input type="text" class="Color_M" pattern="[A-Za-z]{3,20}" placeholder="Indique el color de su mascota" required>
                        </label>
                    </div>
                    <div class="Rigth_Mascota">
                        <label>Raza: 
                            <input type="text" class="Raza_M" placeholder="Indique la raza de la mascota" pattern="[A-Za-z]{3,20}" required>
                        </label>
                        <label>Estado:
                            <select class="Estado_M">
                                <option value="1">Sin Propietario</option>
                                <option value="2">Con Propietario</option>
                            </select>
                        </label>
                        <label>Sexo: 
                            <select class="Sexo_M" required>
                                <option value="Macho">Macho</option>
                                <option value="Hembra">Hembra</option>
                            </select>
                        </label>
                        <label>Documento del Propietario: 
                            <select class="Duenno_M" required>
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
                            <SPAN class="InsertarFoto icon icon-camera">
                                <input type="file" class="Foto Foto_M" accept="image/jpeg, image/png, image/gif">
                            </SPAN>
                        </label>
                    </div>
                </div>
                <div class="btn_Mascota">
                    <button name="btn-Insertar" class="btn-Insertar">Insertar</button>
                </div>
            </div>
            
        </div>
    </body>
</html>
