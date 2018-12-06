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
                Tabla_mascota = MM.Todo_Mascota();
                    
                for (int i = 0; i < Tabla_mascota.size();i++){
                    GSM = Tabla_mascota.get(i);

                %>
                <form action="Servlet_Mascota" method="Post" enctype="multipart/form-data" class="Form">
                    <div class="NombreMascota">
                        <h2><%=GSM.getNombre()%></h2>
                    </div>
                    <div class="Position_Informacion">
                        <div class="ImagenMascota">
                            <label>
                                <image  src="<%=GSM.getFoto()%>" class="CargarImg">
                                <span class="icon icon-camera-outline ModFoto"></span>
                                <input type="file" name="FotoMascota" value="<%=GSM.getFoto()%>" class="FotoMascota" accept="image/jpeg, image/png, image/gif">
                            </label>
                        </div>
                        <div class="InfoMascota">
                            <input type="text" class="CodigoMascota" name="CodigoMascota" value="<%=GSM.getCodigo()%>" readonly>
                            <select name="Tipo_Mas">
                                <option value="<%=GSM.getTipo_Mascota()%>" selected readonly><%=GSM.getTipo_Mascota()%></option>
                                <option value="Perro">Perro</option>
                                <option value="Gato">Gato</option>
                                <option value="Pajaro">Pajaro</option>
                            </select>
                            <input type="text" class="Nombre_Mascota" name="Nombre_Mascota" value="<%=GSM.getNombre()%>">
                            <input type="date" class="FechaNacimiento" name="FechaNacimiento" value="<%=GSM.getFecha_Nacimiento()%>">
                            <input type="text" class="ColorMascota" name="ColorMascota" value="<%=GSM.getColor()%>">
                            <input type="text" class="RazaMascota" name="RazaMascota" value="<%=GSM.getRaza()%>">
                            <select name="GeneroMascota">
                                <option value="<%=GSM.getSexo()%>" selected readonly><%=GSM.getSexo()%></option>
                                <option value="Macho">Macho</option>
                                <option value="Hembra">Hembra</option>
                            </select>
                        </div>
                    </div>
                    <div class="btns">   
                        <button  class="btn-Actualizar" name="btn-Actualizar"><span class="icon icon-pencil"></span></button>
                        <button  class="btn-Eliminar" name="btn-Eliminar"><span name="btn-Eliminar" class="icon icon-trash btn-Eliminar"></span></button>
                    </div>
                </form>
                <%
                    }
                %>        
            </div>
            
            <form action="Servlet_Mascota" method="Post" enctype="multipart/form-data">
                <div class="Registrar_M"><h2>Insertar Mascota</h2></div>
                <div class="form_Mascota">
                    <div class="LR_Mascota">
                        <div class="Left_Mascota">
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
                                <input type="date" name="FechaNacimiento_M" name="FechaNacimiento_M" required>
                            </label>
                            <label>Color: 
                                <input type="text" name="Color_M" pattern="[A-Za-z]{3,20}" placeholder="Indique el color de su mascota" required>
                            </label>
                        </div>
                        <div class="Rigth_Mascota">
                            <label>Raza: 
                                <input type="text" name="Raza_M" placeholder="Indique la raza de la mascota" pattern="[A-Za-z]{3,20}" required>
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
                                <SPAN class="InsertarFoto icon icon-camera">
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
        </div>
    </body>
</html>
