<%@page import="java.sql.Date"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Modelo.GS_Mascota"%>
<%@page import="Modelo.Mascota_M"%>
<%@page import="Modelo.GS_Postulaciones"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.RegistroEstado_M"%>
<%@page import="Modelo.Estado_M"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Postulacion.css">
        <link rel="stylesheet" href="Iconos/css/fontello.css">
        <script type="text/javascript" src="Estilos/JS/jquery.js"></script>
        <script type="text/javascript" src="Estilos/JS/Postulacion.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
        
        <title>SARD</title>
    </head>
    <body>
        <div class="BarrMenu">
                <!-- Aca carga el menu -->
        </div>
        <div class="BloqPantalla">
            <div class="Form-Postulacion">
                <!-- Aca carga lo que oprima -->
            </div>
        </div>
        <div class="Container">
            <h1>Mascotas Disponibles</h1>
            <div class="AgregarPostulaciones">
            <%
                RegistroEstado_M REM = new RegistroEstado_M();
                ArrayList<GS_Mascota> Disponibles = new ArrayList<>();
                GS_Mascota GSM = new GS_Mascota();
                Disponibles = REM.Disponibles();
                for (int i = 0; i < Disponibles.size();i++){
                    GSM = Disponibles.get(i);
                    
            %>
                <div class="Disponibles">
                    <div class="CuadroDisponibles">
                        <img src="<%=GSM.getFoto()%>" class="ImgDisponibles">
                        <div class="H2Disponibles">
                            <h2><%=GSM.getNombre()%></h2>
                        </div>
                    </div>
                    <div class="Info-Mascota">
                        <input type="text" value="<%=GSM.getCodigo()%>" class="Cod">
                        <label><%=GSM.getTipo_Mascota()%></label>
                        <label><%= GSM.getSexo()%></label>
                        <label><%=GSM.getFecha_Nacimiento() %></label>
                        <label><%= GSM.getRaza()%></label>
                    </div>
                </div>
                
            <%
                } 
            %>
            
            </div>
            
            <!-- Esta es la tabla de postulaciones -->
            <div class="Postulaciones">
            <%
                
                ArrayList<GS_Postulaciones> MasPostulado = new ArrayList<GS_Postulaciones>();
                GS_Postulaciones GSP = new GS_Postulaciones();
                MasPostulado = REM.MascotasPostuladas();
                
                for (int i = 0; i< MasPostulado.size(); i++) {
                        GSP = MasPostulado.get(i);
                        
                    
            %>
                <div class="Postulados">
                    <img src="<%=GSP.getFotoMascota()%>" class="ImgPostulacion">
                    <h2 class="H2Postulados"><%=GSP.getNombrePostulado()%> <%=GSP.getApellidoPostulado()%></h2>
                    <h2 class="H2Postulados"><%=GSP.getTipo_Mascota()%> <%=GSP.getNombreMascota()%></h2>
                </div>
            <%
                }
            %>
            </div>
        </div>
    </body>
</html>
