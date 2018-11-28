<%-- 
    Document   : Registros_Administrador
    Created on : 2/11/2018, 10:09:44 AM
    Author     : SENA
--%>

<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page import="Modelo.Veterinaria_M"%>
<%@page import="Modelo.GS_Veterinaria"%>
<%@page import="Modelo.Ambiente_Salud_M"%>
<%@page import="Modelo.GS_Ambiente_Salud"%>
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
        <script src="Estilos/JS/Filtros_Administrador.js"></script>
        <script src="Estilos/JS/Administrador.js"></script>
        <script src="Estilos/JS/Ambiente_Salud.js"></script>
        <script src="Estilos/JS/Ciudadano.js"></script>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registros_Administrador.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/MNombres_Registros.css">
        <link rel="stylesheet" href="Iconos/css/fontello.css">
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
            
                <div class="form_Administrador">
                    <div class="LR_Administrador">
			<div class="left_Administrador">
                            <p>Documento: <input type="text" class="Documento" pattern="[0-9]{4,11}" required></p>
                            <p>Tipo de Documento: 
                                <select class="Tipo_Documento" required>
                                    <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                    <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                    <option value="Pasaporte">Pasaporte</option>
                                </select>
                            </p>
                            <p>Nombre: <input type="text" class="Nombre" pattern="[A-Z,a-z ]{1,50}" required></p>
                            <p>Apellido: <input type="text" class="Apellido" pattern="[A-Z,a-z ]{1,50}" required></p>
                            <p>Genero: 
                                <select class="Genero" required >
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select>
                            </p>
                        </div>

			<div class="Right_Administrador">
                            <p>Fecha de Nacimiento: <input type="date" class="Fecha_Nacimiento"  required></p>
                            <p>Direccion: <input type="text" class="Direccion" required></p>
                            <p>Telefono: <input type="text" class="Telefono" pattern="[0-9]{5,10}" required></p>
                            <p>Correo: <input type="email" class="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                            <p>Foto: <label>
                                    <span class="icon icon-camera"></span>
                                    <input class="Foto_input" type="file" class=Foto" value="">
                                    </label></p>
			</div>
                    </div>

                    <div class="btn_Administrador">
			<p><input class="In_Admin" type="submit" value="Registrar"></p>
                    </div>
		</div>
            
            <div class="Actualizar_A">
		<P>OBSERVAR</P>
            </div>
            <div class="Position_Administrador">
		<div class="Filtro_Admin"> 
                    <input class="Filtro" type="text" name="Filtro" >
                </div>
		<div class="T_Administrador">  
                    
                        <%
                            ArrayList<GS_Administrador> Tabla = new ArrayList<>();
                            Administrador_M Admin =new Administrador_M();
                            GS_Administrador GS_A = new GS_Administrador();
                            Tabla= Admin.Tabla_Admin();
                            for(int i=0; i<Tabla.size(); i++){
                                GS_A =Tabla.get(i);
                        %>
                        
                            <div class="Nombre_A">  
                                <h2><%=GS_A.getNombre()+" "+GS_A.getApellido()%></h2>    
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                    <label>
                                    <img src="<%= GS_A.getFoto()%>">
                                    <input class="Foto_input Foto_A" type="file" value="">
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input class="Documento_A" type="Text" class="Documento" readonly   value="<%= GS_A.getDocumento()%>">
                                    <input class="Tipo_Documento_A" type="Text" class="Tipo_Documento" readonly value="<%= GS_A.getTipo_Documento()%>">
                                    <input class="Genero_A" type="Text" class="Genero" readonly value="<%= GS_A.getGenero()%>">
                                    <input class="Fecha_A" type="Text" class="Fecha" readonly value="<%= GS_A.getFecha_Nacimiento()%>">
                                    <input class="Direccion_A" type="Text" class="Direccion"  value="<%= GS_A.getDireccion()%>">
                                    <input class="Telefono_A" type="Text" class="Telefono" value="<%= GS_A.getTelefono()%>">
                                    <input class="Correo_A" type="Text" class="Correo" value="<%= GS_A.getCorreo()%>">
                                </div>
                                
                            </div>
                                <div class="btn_A_E">
                                    <span class="icon icon-pencil Act_A"></span>
                                    <span class="icon icon-trash Eli_A"></span>
                                </div>
                        
                        <%
                        }
                        %>
                </div>
            </div>
		
		<div class="SAmbienteySalud">
			<p>SECRETARIA DE AMBIENTE Y SALUD</p>
		</div>
                <div class="Registrar_AmbienteySalud" >
                    <p>REGISTRAR</p>
                </div>
                <div class="form_AmbienteySalud">
                    <div class="LR_AmbienteySalud">
        		<div class="left_AmbienteySalud">
                            <p>Documento: <input type="text" class="Documento_AS" pattern="[0-9]{4,11}" required></p>
                            <p>Tipo de Documento: 
                                <select class="Tipo_Documento_AS" required>
                                    <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                    <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                    <option value="Pasaporte">Pasaporte</option>
                                </select></p>
                            <p>Nombre: <input type="text" class="Nombre_AS" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Apellido: <input type="text" class="Apellido_AS" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Genero: 
                                <select class="Genero_AS" required >
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select></p>
                            <p>Fecha de Nacimiento: <input type="date" class="Fecha_Nacimiento_AS"  required></p>
			</div>
                        <div class="right_AmbienteySalud">
                            <p>Direccion: <input type="text" class="Direccion_AS" required></p>
                            <p>Telefono: <input type="text" class="Telefono_AS" pattern="[0-9]{5,10}" required></p>
                            <p>Correo: <input type="email" class="Correo_AS" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                            <p>Rol:
                                <select class="Rol_AS" required="">
                                    <option value="2">Ambiente</option>
                                    <option value="3">Salud</option>
                                </select>
                            </p>
                            <p>Foto: <label>
                                    <span class="icon icon-camera"></span>
                                    <input class="Foto_input" type="file" class="Foto_AS" value="">
                                    </label></p>
                        </div>
                    </div>
                    <div class="btn_AmbienteySalud">
			<p><input class="In_Am_Sa" type="submit" name="R_AmbienteySalud" value="Registrar"></p>
                    </div>
                    </div>
                    <div class="Actualizar_AmbienteySalud" >
                        <p>OBSERVAR</p>
                    </div>
                    <div class="Ambiente" >
                        <p>AMBIENTE</p>
                    </div>
                        <div class="T_Ambiente">  
                            <%
                                ArrayList<GS_Ambiente_Salud> Tabla_A = new ArrayList<>();
                                Ambiente_Salud_M Ambiente =new Ambiente_Salud_M();
                                GS_Ambiente_Salud GS_AM = new GS_Ambiente_Salud();
                                Tabla_A= Ambiente.Todo_Ambiente();
                                for(int i=0; i<Tabla_A.size(); i++){
                                    GS_AM =Tabla_A.get(i);

                            %>
                            <div class="Nombre_AM">
                                <h2><%= GS_AM.getNombre()+" "+GS_AM.getApellido()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                     <img src="<%= GS_AM.getFoto()%>">
                                     <input class="Foto_input" type="file" name="Foto" value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento" type="Text" name="Documento" readonly value="<%= GS_AM.getDocumento()%>">
                                     <input class="Tipo_Documento" type="Text" name="Tipo_Documento" readonly value="<%= GS_AM.getTipo_Documento()%>">
                                     <input class="Genero" type="Text" name="Genero" readonly value="<%= GS_AM.getGenero()%>">
                                     <input class="Fecha" type="Text" name="Fecha" readonly value="<%= GS_AM.getFecha_Nacimiento()%>">
                                     <input class="Direccion" type="Text" name="Direccion"  value="<%= GS_AM.getDireccion()%>">
                                     <input class="Telefono" type="Text" name="Telefono" value="<%= GS_AM.getTelefono()%>">
                                     <input class="Correo" type="Text" name="Correo" value="<%= GS_AM.getCorreo()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <span class="icon icon-pencil Act_AS"></span>
                                <span class="icon icon-trash Eli_AS"></span>
                            </div>
                            <%
                            }
                            %>
               
                    </div>
                <div class="Salud" >
                        <p>Salud</p>
                    </div>
                        <div class="T_Salud">  
                       

                            <%
                                ArrayList<GS_Ambiente_Salud> Tabla_S = new ArrayList<>();
                                Ambiente_Salud_M Salud =new Ambiente_Salud_M();
                                GS_Ambiente_Salud GS_S = new GS_Ambiente_Salud();
                                Tabla_S= Salud.Todo_Salud();
                                for(int i=0; i<Tabla_S.size(); i++){
                                    GS_S =Tabla_S.get(i);

                            %>
                           <div class="Nombre_S">
                                <h2><%= GS_S.getNombre()+" "+GS_S.getApellido()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                     <img src="<%= GS_S.getFoto()%>">
                                     <input class="Foto_input" type="file" name="Foto" value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento" type="Text" name="Documento" readonly value="<%= GS_S.getDocumento()%>">
                                     <input class="Tipo_Documento" type="Text" name="Tipo_Documento" readonly value="<%= GS_S.getTipo_Documento()%>">
                                     <input class="Genero" type="Text" name="Genero" readonly value="<%= GS_S.getGenero()%>">
                                     <input class="Fecha" type="Text" name="Fecha" readonly value="<%= GS_S.getFecha_Nacimiento()%>">
                                     <input class="Direccion" type="Text" name="Direccion"  value="<%= GS_S.getDireccion()%>">
                                     <input class="Telefono" type="Text" name="Telefono" value="<%= GS_S.getTelefono()%>">
                                     <input class="Correo" type="Text" name="Correo" value="<%= GS_S.getCorreo()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <span class="icon icon-pencil Act_Am_Sa"></span>
                                <span class="icon icon-trash Eli_Am_Sa"></span>
                            </div>
                            <%
                            }
                            %>
                    </div>
		<div class="SVeterinaria">
                    <p>VETERINARIA</p>
		</div>
                    <div class="Registrar_V" >
                        <p>REGISTRAR</p>
                    </div>
                    <div class="T_Veterinaria_0">  
                       

                            <%
                                ArrayList<GS_Veterinaria> Tabla_V0 = new ArrayList<>();
                                Veterinaria_M Veterinaria =new Veterinaria_M();
                                GS_Veterinaria GS_V0 = new GS_Veterinaria();
                                Tabla_V0= Veterinaria.Todo_cero();
                                for(int i=0; i<Tabla_V0.size(); i++){
                                    GS_V0 =Tabla_V0.get(i);

                            %>
                           <div class="Nombre_0">
                               <h2 class="Nombre_V0"> <%= GS_V0.getNombre()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                     <img src="<%= GS_V0.getFoto()%>">
                                     <input class="Foto_input Foto_V0" type="file" value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento_V0" type="Text" name="Documento" readonly value="<%= GS_V0.getNit()%>">
                                     <input class="Tipo_Documento_V0" type="Text" name="Tipo_Documento" readonly value="<%= GS_V0.getTipo_Veterinaria()%>">
                                     <input class="Genero_V0" type="Text" name="Genero" readonly value="<%= GS_V0.getRepresentante()%>">
                                     <input class="Fecha_V0" type="Text" name="Fecha" readonly value="<%= GS_V0.getFecha_Fundacion()%>">
                                     <input class="Direccion_V0" type="Text" name="Direccion"  value="<%= GS_V0.getDireccion()%>">
                                     <input class="Barrio_V0" type="Text" name="Telefono" value="<%= GS_V0.getBarrio()%>">
                                     <input class="Telefono_V0" type="Text" name="Telefono" value="<%= GS_V0.getTelefono()%>">
                                     <input class="Correo_V0" type="Text" name="Telefono" value="<%= GS_V0.getCorreo()%>">
                                     <input class="Rl_V0" type="Text" name="Correo" value="<%= GS_V0.getRol()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <span class="icon icon-pencil Act_V0"></span>
                            </div>
                            <%
                            }
                            %>
                    </div>
                    <div class="Actualizar_V" >
                        <p>OBSERVAR</p>
                    </div>
                        <div class="T_Veterinaria_4">  
                       

                            <%
                                ArrayList<GS_Veterinaria> Tabla_V = new ArrayList<>();
                                Veterinaria_M Veterinaria4 =new Veterinaria_M();
                                GS_Veterinaria GS_V = new GS_Veterinaria();
                                Tabla_V= Veterinaria4.Todo_cuatro();
                                for(int i=0; i<Tabla_V.size(); i++){
                                    GS_V =Tabla_V.get(i);

                            %>
                           <div class="Nombre_4">
                               <h2 class="Nombre_V4" ><%= GS_V.getNombre()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                     <img src="<%= GS_V.getFoto()%>">
                                     <input class="Foto_input FotoV4" type="file"  value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento_V4" type="Text" name="Documento" readonly value="<%= GS_V.getNit()%>">
                                     <input class="Tipo_Documento_V4" type="Text" name="Tipo_Documento" readonly value="<%= GS_V.getTipo_Veterinaria()%>">
                                     <input class="Genero_V4" type="Text" name="Genero" readonly value="<%= GS_V.getRepresentante()%>">
                                     <input class="Fecha_V4" type="Text" name="Fecha" readonly value="<%= GS_V.getFecha_Fundacion()%>">
                                     <input class="Direccion_V4" type="Text" name="Direccion"  value="<%= GS_V.getDireccion()%>">
                                     <input class="Telefono_V4" type="Text" name="Telefono" value="<%= GS_V.getBarrio()%>">
                                     <input class="Telefono_V4" type="Text" name="Telefono" value="<%= GS_V.getTelefono()%>">
                                     <input class="Telefono_V4" type="Text" name="Telefono" value="<%= GS_V.getCorreo()%>">
                                     <input class="Correo_V4" type="Text" name="Correo" value="<%= GS_V.getRol()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <span class="icon icon-pencil Act_V4"></span>
                            </div>
                            <%
                            }
                            %>
                    </div>
                    
                    
                    <div class="SCiudadano">
                        <p>CIUDADANO</p>
                    </div>
                    <div class="Registrar_C" >
                        <p>REGISTRAR</p>
                    </div>
                    
                        <div class="form_Ciudadano">
                            <div class="LR_Ciudadano">
                                <div class="left_Ciudadano">
                                    <p>Documento: <input type="text" class="Documento_C" pattern="[0-9]{4,11}" required></p>
                                    <p>Tipo de Documento: 
                                        <select class="Tipo_Documento_C" required>
                                            <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                            <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                            <option value="Pasaporte">Pasaporte</option>
                                        </select></p>
                                    <p>Nombre: <input type="text" class="Nombre_CI" pattern="[A-Z,a-z]{1,50}" required></p>
                                    <p>Apellido: <input type="text" class="Apellido_C" pattern="[A-Z,a-z]{1,50}" required></p>
                                    <p>Genero: 
                                        <select class="Genero_C" required >
                                            <option value="Masculino">Masculino</option>
                                            <option value="Femenino">Femenino</option>
                                        </select></p>
                                </div>
                                <div class="Right_Ciudadano">
                                    <p>Fecha de Nacimiento: <input type="date" class="Fecha_Nacimiento_C"  required></p>
                                    <p>Direccion: <input type="text" class="Direccion_C" required></p>
                                    <p>Telefono: <input type="text" class="Telefono_C" pattern="[0-9]{5,10}" required></p>
                                    <p>Correo: <input type="email" class="Correo_C" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                                    <p>Foto: <input type="file" class="Foto_C"></p>
                                </div>
                            </div>
                            <div class="btn_Ciudadano">
                                <p><input class="In_Ciudadano" type="submit" name="R_Ciudadano" value="Registrar"></p>
                            </div>
                        </div>
                    </form>
                    <div class="Actualizar_C" >
                        <p>OBSERVAR</p>
                    </div>
                    <div class="T_Ciudadano">
                        <%
                            ArrayList<GS_Cliente> Tabla_C = new ArrayList<>();
                            Cliente_M Cliente =new Cliente_M();
                            GS_Cliente GS_C = new GS_Cliente();
                            Tabla_C= Cliente.Todo_Cliente();


                            for(int i=0; i<Tabla_C.size(); i++){
                                GS_C =Tabla_C.get(i);

                        %>
                        
                            <div class="Nombre_C">
                                <h2><%= GS_C.getNombre()+" "+ GS_C.getApellido()%></h2>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                    <label>
                                    <img src="<%= GS_C.getFoto()%>">
                                    <input class="Foto_input" type="file" name="Foto" value="">
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input class="Documento" type="Text" name="Documento" readonly value="<%= GS_C.getDocumento()%>">
                                    <input class="Tipo_Documento" type="Text" name="Tipo_Documento" readonly value="<%= GS_C.getTipo_Documento()%>">
                                    <input class="Genero" type="Text" name="Genero" readonly value="<%= GS_C.getGenero()%>">
                                    <input class="Fecha" type="Text" name="Fecha" readonly value="<%= GS_C.getFecha_Nacimiento()%>">
                                    <input class="Direccion" type="Text" name="Direccion"  value="<%= GS_C.getDireccion()%>">
                                    <input class="Telefono" type="Text" name="Telefono" value="<%= GS_C.getTelefono()%>">
                                    <input class="Correo" type="Text" name="Correo" value="<%= GS_C.getCorreo()%>">
                                </div>
                                
                            </div>
                                <div class="btn_A_E">
                                    <span class="icon icon-pencil Act_C"></span>
                                    <span class="icon icon-trash Eli_C"></span>
                                </div>
                        
                        <%
                        }
                        %>
                </div>
	</div>
    </body>
</html>
