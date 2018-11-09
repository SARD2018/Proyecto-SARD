<%-- 
    Document   : Registros_Administrador
    Created on : 2/11/2018, 10:09:44 AM
    Author     : SENA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.GS_Administrador"%>
<%@page import="Modelo.Administrador_M"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/mainRegistro.js"></script>
        <script src="Estilos/JS/main_Filtro.js"></script>
        <script src="Estilos/JS/main_Filtro.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
       <div class="Container">
            <div class="SAdministrador">
		<p>ADMINISTRADOR</p>
            </div>
            <div class="Registrar_A" >
		<p>REGISTRAR</p>
            </div>
            
           <form action="Servlet_Administrador" method="POST" enctype="multipart/form-data">
		<div class="form_Administrador">
                    <div class="LR_Administrador">
			<div class="left_Administrador">
                            <p>Documento: <input type="text" name="Documento" pattern="[0-9]{4,11}" required></p>
                            <p>Tipo de Documento: 
                                <select name="Tipo_Documento" required>
                                    <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                    <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                    <option value="Pasaporte">Pasaporte</option>
                                </select>
                            </p>
                            <p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Apellido: <input type="text" name="Apellido" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Genero: 
                                <select name="Genero" required >
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select>
                            </p>
                        </div>

			<div class="Right_Administrador">
                            <p>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento"  required></p>
                            <p>Direccion: <input type="text" name="Direccion" required></p>
                            <p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
                            <p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                            <p>Foto: <input type="file" name="Foto"></p>
			</div>
                    </div>

                    <div class="btn_Administrador">
			<p><input class="btn" type="submit" name="R_Administrador" value="Registrar"></p>
                    </div>
		</div>
            </form>
            <div class="Actualizar_A">
		<P>OBSERVAR</P>
            </div>
            <div class="Position_Administrador">
		<div class="Filtro_Administrador"> 
                    <input class="Filtro" type="text" name="Filtro" >
                </div>
		<div class="T_Administrador">  
                    <table id="TablasL">                    
                        <tr>

                            <th>Documento</th>
                            <th>Tipo Documento</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Genero</th>
                            <th>Fecha Nacimiento</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Correo</th>
                            <th>Foto</th>

                        </tr>

                        <%
                            ArrayList<GS_Administrador> Tabla = new ArrayList<>();
                            // String Dato = request.getParameter("dato");
                            Administrador_M Admin =new Administrador_M();
                            GS_Administrador GS_A = new GS_Administrador();
                            Tabla= Admin.Tabla_Admin();


                            for(int i=0; i<Tabla.size(); i++){
                                GS_A =Tabla.get(i);

                        %>

                        <tr>
                            <td><input class="Documento" type="Text" name="Documento" readonly value="<%= GS_A.getDocumento()%>"></td>
                            <td><input class="Tipo_Documento" type="Text" name="Tipo_Documento" readonly value="<%= GS_A.getTipo_Documento()%>"></td>
                            <td><input class="Nombre" type="Text" name="Nombre" readonly value="<%= GS_A.getNombre()%>"></td>
                            <td><input class="Apellido" type="Text" name="Apellido" readonly value="<%= GS_A.getApellido()%>"></td>
                            <td><input class="Genero" type="Text" name="Genero" readonly value="<%= GS_A.getGenero()%>"></td>
                            <td><input class="Fecha" type="Text" name="Fecha" readonly value="<%= GS_A.getFecha_Nacimiento()%>"></td>
                            <td><input class="Direccion" type="Text" name="Direccion"  value="<%= GS_A.getDireccion()%>"></td>
                            <td><input class="Telefono" type="Text" name="Telefono" value="<%= GS_A.getTelefono()%>"></td>
                            <td><input class="Correo" type="Text" name="Correo" value="<%= GS_A.getCorreo()%>"></td>
                            <td><input class="Foto" type="file" name="Foto" value="<%= GS_A.getFoto()%>"></td>
                            <td><input class="Actualizar" type="Submit" value="Actualizar" ></td>
                            <td><input type="Submit" value="Eliminar" name="Eliminar_Admin"></td>
                        </tr>
                        <%
                        }
                        %>
                    </table>
                </div>
            </div>
		
		<div class="SAmbienteySalud">
			<p>SECRETARIA DE AMBIENTE Y SALUD</p>
		</div>
                <div class="Registrar_AmbienteySalud" >
                    <p>REGISTRAR</p>
		</div>
		<form action="Servlet_Ambiente_Salud" method="post" enctype="multipart/form-data">						<div class="form_AmbienteySalud">
                    <div class="LR_AmbienteySalud">
        		<div class="left_AmbienteySalud">
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
			</div>
                        <div class="right_AmbienteySalud">
                            <p>Direccion: <input type="text" name="Direccion" required></p>
                            <p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
                            <p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                            <p>Rol:
                                    <select name="Rol" required="">
                                            <option value="2">Ambiente</option>
                                            <option value="3">Salud</option>
                                    </select>
                            </p>
                            <p>Foto: <input type="file" name="Foto"></p>
                        </div>
                    </div>
                    <div class="btn_AmbienteySalud">
			<p><input class="btn" type="submit" name="R_AmbienteySalud" value="Registrar"></p>
                    </div>
                    </div>
        	</form>

			<div class="Actualizar_AmbienteySalud" >
				<p>OBSERVAR</p>
			</div>
		
				
		<div class="SVeterinaria">
			<p>VETERINARIA</p>
		</div>
			<div class="Registrar_V" >
				<p>REGISTRAR</p>
			</div>
			<div class="Actualizar_V" >
				<p>OBSERVAR</p>
			</div>

		<div class="SCiudadano">
			<p>CIUDADANO</p>
		</div>
			<div class="Registrar_C" >
				<p>REGISTRAR</p>
			</div>
					<form action="Servlet_Cliente" method="post" enctype="multipart/form-data">
						<div class="form_Ciudadano">
							<div class="LR_Ciudadano">
								<div class="left_Ciudadano">
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
								</div>
								<div class="Right_Ciudadano">
									<p>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento"  required></p>
									<p>Direccion: <input type="text" name="Direccion" required></p>
									<p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
									<p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
									<p>Foto: <input type="file" name="Foto"></p>
								</div>
							</div>
							<div class="btn_Ciudadano">
								<p><input class="btn" type="submit" name="R_Ciudadano" value="Registrar"></p>
							</div>
						</div>
					</form>
			<div class="Actualizar_C" >
				<p>OBSERVAR</p>
			</div>
	</div>
    </body>
</html>
