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
        <script src="Estilos/JS/Menus.js"></script>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registros_Administrador.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
        <link rel="stylesheet" href="Iconos/css/fontello.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="BarrMenu">
         <!-- aca carga la barra -->
         </div>
       <div class="Container">
        
            <div class="SAdministrador">
		<p>ADMINISTRADOR</p>
            </div>
            <div class="Registrar_A" >
		<p>REGISTRAR</p>                                       
            </div>
           <form action="Servlet_Administrador" method="post" enctype="multipart/form-data">
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
                            <p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z ]{1,50}" required></p>
                            <p>Apellido: <input type="text" name="Apellido" pattern="[A-Z,a-z ]{1,50}" required></p>
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
                            <p>Foto: <label>
                                    <span class="icon icon-camera"></span>
                                    <input class="Foto_input" type="file" name="Foto"  accept="image/jpg, image/png, image/jpeg">
                                    </label></p>
			</div>
                    </div>

                    <div class="btn_Administrador">
			<p><input name="In_Admin" type="submit" value="Registrar"></p>
                    </div>
		</div>
            </form>
            <div class="Actualizar_A">
		<P>OBSERVAR</P>
            </div>
            <div class="Position_Administrador">
		<div class="Filtro_Admin"> 
                    <input class="Filtro" type="text" name="Filtro" >
                </div>
		<div class="T_Administrador">  
                    <form action="Servlet_Administrador" method="post" enctype="multipart/form-data">
                        <%
                            HttpSession Doc=request.getSession();
                            String Documento=(String)Doc.getAttribute("DocSession");
                            ArrayList<GS_Administrador> Tabla = new ArrayList<>();
                            Administrador_M Admin =new Administrador_M();
                            GS_Administrador GS_A = new GS_Administrador(Documento);
                            Tabla= Admin.Tabla_Admin(GS_A);
                            for(int i=0; i<Tabla.size(); i++){
                                GS_A =Tabla.get(i);
                        %>
                        
                            <div class="Nombre_A" > 
                                <h2><%=GS_A.getNombre()+" "+GS_A.getApellido()%></h2>
                                <input type="hidden" value="<%=GS_A.getNombre()%>" name="Nombre_A">
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                        <img class="Foto_img" src="<%= GS_A.getFoto()%>">
                                         <span class="icon icon-camera"></span>
                                        <input class="Foto_input" name="Foto_A" type="file" value="">
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input name="Documento_A" type="Text" class="Documento" readonly   value="<%= GS_A.getDocumento()%>">
                                    <input name="Tipo_Documento_A" type="Text" class="Tipo_Documento" readonly value="<%= GS_A.getTipo_Documento()%>">
                                    <input name="Genero_A" type="Text" class="Genero" readonly value="<%= GS_A.getGenero()%>">
                                    <input name="Fecha_A" type="Text" class="Fecha" readonly value="<%= GS_A.getFecha_Nacimiento()%>">
                                    <input name="Direccion_A" type="Text" class="Direccion"  value="<%= GS_A.getDireccion()%>">
                                    <input name="Telefono_A" type="Text" class="Telefono" value="<%= GS_A.getTelefono()%>">
                                    <input name="Correo_A" type="Text" class="Correo" value="<%= GS_A.getCorreo()%>">
                                </div>
                                
                            </div>
                                <div class="btn_A_E">
                                    <button name="Act_A"><span class="icon icon-pencil"></span></button>
                                    <button name="Eli_A"><span class="icon icon-trash"></span></button>
                                </div>
                   
                        <%
                        }
                        %>
                         </form>
                </div>
            </div>
		
		<div class="SAmbienteySalud">
			<p>SECRETARIA DE AMBIENTE Y SALUD</p>
		</div>
                <div class="Registrar_AmbienteySalud" >
                    <p>REGISTRAR</p>
                </div>
                <form action="Servlet_Ambiente_Salud" method="POST" enctype="multipart/form-data">
                <div class="form_AmbienteySalud">
                    <div class="LR_AmbienteySalud">
        		<div class="left_AmbienteySalud">
                            <p>Documento: <input type="text" name="Documento_AS" pattern="[0-9]{4,11}" required></p>
                            <p>Tipo de Documento: 
                                <select name="Tipo_Documento_AS" required>
                                    <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                    <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                    <option value="Pasaporte">Pasaporte</option>
                                </select></p>
                            <p>Nombre: <input type="text" name="Nombre_AS" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Apellido: <input type="text" name="Apellido_AS" pattern="[A-Z,a-z]{1,50}" required></p>
                            <p>Genero: 
                                <select name="Genero_AS" required >
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select></p>
                            <p>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento_AS"  required></p>
			</div>
                        <div class="right_AmbienteySalud">
                            <p>Direccion: <input type="text" name="Direccion_AS" required></p>
                            <p>Telefono: <input type="text" name="Telefono_AS" pattern="[0-9]{5,10}" required></p>
                            <p>Correo: <input type="email" name="Correo_AS" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                            <p>Rol:
                                <select name="Rol_AS" required="">
                                    <option value="2">Ambiente</option>
                                    <option value="3">Salud</option>
                                </select>
                            </p>
                            <p>Foto: <label>
                                    <span class="icon icon-camera"></span>
                                    <input class="Foto_input" type="file" name="Foto_AS" value="">
                                    </label></p>
                        </div>
                    </div>
                        <div class="btn_AmbienteySalud">
                            <p><input name="In_Am_Sa" type="submit"  value="Registrar"></p>
                        </div>
                    </div>
                    </form>
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
                            <div class="Nombre">
                                <div class="Nombre_AM">
                                    <h2><%= GS_AM.getNombre()+" "+GS_AM.getApellido()%></h2>
                                    <input type="hidden" name="Nombre_AS" value="<%= GS_AM.getNombre()%>">
                                </div>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                         <img class="Foto_img" src="<%= GS_AM.getFoto()%>">
                                     <input class="Foto_input" type="file" name="Foto_AS" value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento" type="Text" name="Documento_AS" readonly value="<%= GS_AM.getDocumento()%>">
                                     <input class="Tipo_Documento" type="Text" name="Tipo_Documento_AS" readonly value="<%= GS_AM.getTipo_Documento()%>">
                                     <input class="Genero" type="Text" name="Genero_AS" readonly value="<%= GS_AM.getGenero()%>">
                                     <input class="Fecha" type="Text" name="Fecha_Nacimiento_AS" readonly value="<%= GS_AM.getFecha_Nacimiento()%>">
                                     <input class="Direccion" type="Text" name="Direccion_AS"  value="<%= GS_AM.getDireccion()%>">
                                     <input class="Telefono" type="Text" name="Telefono_AS" value="<%= GS_AM.getTelefono()%>">
                                     <input class="Correo" type="Text" name="Correo_AS" value="<%= GS_AM.getCorreo()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <button name="Act_AS"><span class="icon icon-pencil "></span></button>
                                <button name="Eli_AS"><span class="icon icon-trash "></span></button>
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
                            <div class="Nombre">
                                <div class="Nombre_S">
                                    <h2><%= GS_S.getNombre()+" "+GS_S.getApellido()%></h2>
                                    <input type="hidden" name="Nombre_S" value="<%= GS_AM.getNombre()%>">
                                </div>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                         <img class="Foto_img" src="<%= GS_S.getFoto()%>">
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
                         <form action="Servlet_Veterinaria" method="POST" enctype="multipart/form-data">
                            <div class="form_Veterinaria">
                                <div class="LR_Veterinaria">
                                    <div class="left_Veterinaria">
                                        <p>Nit:<input type="text" name="Nit" pattern="[0-9]{4,15}" required></p>
                                        <p>Nombre: <input type="text" name="Nombre" pattern="[A-Z,a-z]{1,50}" required></p>
                                        <p>Representante: <input type="text" name="Representante" pattern="[A-Z,a-z]{1,50}" required></p>
                                        <p>Tipo_Veterinaria 
                                            <select name="Tipo">
                                                <option value="Pet Shop">Pet Shop</option>
                                                <option value="Hospitalizacion">Hospitalizacion</option>
                                            </select>
                                        </p>
                                        <p>Fecha de Fundacion: <input type="date" name="Fecha_Fundacion"  required></p>
                                        <p>Direccion: <input type="text" name="Direccion" required></p>
                                    </div>
                                    <div class="Right_Veterinaria">
                                        <p>Barrio: <input type="text" name="Barrio" pattern="[A-Z,a-z]{1,50}" required></p>
                                        <p>Telefono: <input type="text" name="Telefono" pattern="[0-9]{5,10}" required></p>
                                        <p>Correo: <input type="email" name="Correo" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>                
                                        <p>Estado: 
                                            <select name="Estado">
                                                <option value=4>Activo</option>
                                                <option value=0>Inactivo</option>
                                            </select>
                                        </p>
                                        <p>Foto: <label>
                                            <span class="icon icon-camera"></span>
                                            <input class="Foto_input" type="file" name="Foto" value="">
                                            </label>
                                        </p>
                                    </div>
                                </div>
                                <div class="btn_Veterinaria">
                                    <p><input name="In_Veterinaria" type="submit"  value="Registrar"></p>
                                </div>
                            </div>
                        </form>
                        
                    
                    <div class="Actualizar_V" >
                        <p>OBSERVAR</p>
                    </div>
                        <div class="T_Veterinaria_4">  
                            <form action="Servlet_Veterinaria" method="POST" enctype="multipart/form-data">
                            <%
                                ArrayList<GS_Veterinaria> Tabla_V = new ArrayList<>();
                                Veterinaria_M Veterinaria4 =new Veterinaria_M();
                                GS_Veterinaria GS_V = new GS_Veterinaria();
                                Tabla_V= Veterinaria4.Todo_cuatro();
                                for(int i=0; i<Tabla_V.size(); i++){
                                    GS_V =Tabla_V.get(i);

                            %>
                            <div class="Nombre">
                                <div class="Nombre_4">
                                    <h2 class="Nombre_V4" ><%= GS_V.getNombre()%></h2>
                                    <input type="hidden" name="Nombre" value="<%= GS_V.getNombre()%>">
                                 </div>
                            </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                     <label>
                                         <img class="Foto_img" src="<%= GS_V.getFoto()%>">
                                         <input class="Foto_input FotoV4" name="Foto" type="file"  value="">
                                     </label>
                                 </div>
                                 <div class="Datos">
                                     <input class="Documento_V4" type="Text" name="Nit" readonly value="<%= GS_V.getNit()%>">
                                     <input class="Tipo_Documento_V4" type="Text" name="Tipo_Veterinaria" readonly value="<%= GS_V.getTipo_Veterinaria()%>">
                                     <input class="Genero_V4" type="Text" name="Representante" readonly value="<%= GS_V.getRepresentante()%>">
                                     <input class="Fecha_V4" type="Text" name="Fecha_Fundacion" readonly value="<%= GS_V.getFecha_Fundacion()%>">
                                     <input class="Direccion_V4" type="Text" name="Direccion"  value="<%= GS_V.getDireccion()%>">
                                     <input class="Barrio_V4" type="Text" name="Barrio" value="<%= GS_V.getBarrio()%>">
                                     <input class="Telefono_V4" type="Text" name="Telefono" value="<%= GS_V.getTelefono()%>">
                                     <input class="Correo_V4" type="Text" name="Correo" value="<%= GS_V.getCorreo()%>">
                                 </div>
                            </div>
                            <div class="btn_A_E">
                                <button name="Act_Veterinaria"><span class="icon icon-pencil "></span></button>
                                <button name="Eli_Veterinaria"><span class="icon icon-trash "></span></button>
                            </div>
                            <%
                            }
                            %>
                            </form>
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
                                    <p>Documento: <input type="text" name="Documento_C" pattern="[0-9]{4,11}" required></p>
                                    <p>Tipo de Documento: 
                                        <select name="Tipo_C" required>
                                            <option value="Cedula de Ciudadania">Cedula de Ciudadania</option>
                                            <option value="Cedula de Extranjeria">Cedula de Extranjeria</option>
                                            <option value="Pasaporte">Pasaporte</option>
                                        </select></p>
                                    <p>Nombre: <input type="text" name="Nombre_C" pattern="[A-Z,a-z]{1,50}" required></p>
                                    <p>Apellido: <input type="text" name="Apellido_C" pattern="[A-Z,a-z]{1,50}" required></p>
                                    <p>Genero: 
                                        <select name="Genero_C" required >
                                            <option value="Masculino">Masculino</option>
                                            <option value="Femenino">Femenino</option>
                                        </select></p>
                                </div>
                                <div class="Right_Ciudadano">
                                    <p>Fecha de Nacimiento: <input type="date" name="Fecha_Nacimiento_C"  required></p>
                                    <p>Direccion: <input type="text" name="Direccion_C" required></p>
                                    <p>Telefono: <input type="text" name="Telefono_C" pattern="[0-9]{5,10}" required></p>
                                    <p>Correo: <input type="email" name="Correo_C" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required></p>
                                    <p>Foto: <label>
                                        <span class="icon icon-camera"></span>
                                        <input class="Foto_input" type="file" name="Foto_C" value="">
                                        </label>
                                   </p>
                                </div>
                            </div>
                            <div class="btn_Ciudadano">
                                <p><input class="In_Ciudadano" type="submit" name="In_Ciudadano" value="Registrar"></p>
                            </div>
                        </div>
                    </form>
                    <div class="Actualizar_C" >
                        <p>OBSERVAR</p>
                    </div>
                    <div class="T_Ciudadano">
                        <form action="Servlet_Cliente" method="post" enctype="multipart/form-data">
                        <%
                            ArrayList<GS_Cliente> Tabla_C = new ArrayList<>();
                            Cliente_M Cliente =new Cliente_M();
                            GS_Cliente GS_C = new GS_Cliente();
                            Tabla_C= Cliente.Todo_Cliente();


                            for(int i=0; i<Tabla_C.size(); i++){
                                GS_C =Tabla_C.get(i);

                        %>
                        <div class="Nombre">
                            <div class="Nombre_C">
                                <h2><%= GS_C.getNombre()+" "+ GS_C.getApellido()%></h2>
                                <input type="hidden" name="Nombre_C" value="<%= GS_V.getNombre()%>">
                            </div>
                        </div>
                            <div class="Datos_T">
                                <div class="Foto">
                                    <label>
                                    <img src="<%= GS_C.getFoto()%>">
                                    <input class="Foto_input" type="file" name="Foto_C" value="">
                                    </label>
                                </div>
                                <div class="Datos">
                                    <input class="Documento" type="Text" name="Documento_C" readonly value="<%= GS_C.getDocumento()%>">
                                    <input class="Tipo_Documento" type="Text" name="Tipo_C" readonly value="<%= GS_C.getTipo_Documento()%>">
                                    <input class="Genero" type="Text" name="Genero_C" readonly value="<%= GS_C.getGenero()%>">
                                    <input class="Fecha" type="Text" name="Fecha_Nacimiento_C" readonly value="<%= GS_C.getFecha_Nacimiento()%>">
                                    <input class="Direccion" type="Text" name="Direccion_C"  value="<%= GS_C.getDireccion()%>">
                                    <input class="Telefono" type="Text" name="Telefono_C" value="<%= GS_C.getTelefono()%>">
                                    <input class="Correo" type="Text" name="Correo_C" value="<%= GS_C.getCorreo()%>">
                                </div>
                                
                            </div>
                                <div class="btn_A_E">
                                <button name="Act_Ciudadano"><span class="icon icon-pencil "></span></button>
                                <button name="Eli_Ciudadano"><span class="icon icon-trash "></span></button>
                                 </div>
                        
                        <%
                        }
                        %>
                        </form>
                </div>
	</div>
    </body>
</html>
