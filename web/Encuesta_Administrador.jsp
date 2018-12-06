
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Encuesta_M"%>
<%@page import="Modelo.GS_Encuesta"%>
<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.Administrador_M"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Encuesta.css">
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
        <script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Encuesta.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="BarrMenu">
            <!-- aca carga la barra -->
        </div>
        <div class="Container">
            <h1 class="Encabezado">FORMATO DE SOLICITUD DE MASCOTA EN ADOPCION </h1>
            <%
                HttpSession Nom=request.getSession();
                String Documento=(String)Nom.getAttribute("Documento_C");
                String Mascota=(String)Nom.getAttribute("Mascota");
                ArrayList<GS_Cliente> datos = new ArrayList<>();
                Cliente_M con = new Cliente_M();
                datos = con.Uno_Cliente(Documento);
                GS_Cliente Dat = new GS_Cliente();

                for(int i=0; i<datos.size(); i++){
                    Dat = datos.get(i);
            %>
            <div class="Datos_Postulante"> 
                <div class="Left_Datos"> 
                    <label>Nombre y Apellido: <input type="text" name="_C" value="<%=Dat.getNombre()+" "+Dat.getApellido()%>"></label>
                    <label>Documento: <input type="text" name="_C" value="<%=Dat.getDocumento()%>"></label>
                    <label>Lugar de Expedicion: <input type="text" name="_C" value="<%=Dat.getLugar_Expedicion()%>"></label>
                    <label>Edad: <input type="text" name="_C" value="<%=Dat.getFecha_Nacimiento()%>"></label>
                    <label>Barrio: <input type="text" name="_C" value="<%=Dat.getBarrio()%>"></label>
                </div>
                <div class="Right_Datos">
                    <label>Direccion: <input type="text" name="_C" value="<%=Dat.getDireccion()%>"></label>
                    <label>Telefono 1: <input type="text" name="_C" value="<%=Dat.getTelefono1()%>"></label>
                    <label>Telefono 2: <input type="text" name="_C" value="<%=Dat.getTelefono2()%>"></label>
                    <label>E-mail: <input type="text" name="_C" value="<%=Dat.getCorreo()%>"></label>
                    <label>Ocupacion: <input type="text" name="_C" value="<%=Dat.getOcupacion()%>"></label>
                </div>
            </div>
            <%
                }
            %>
            <div class="Otros_Datos">
            <label>Mascota a Adoptar:</label>
            <input type="text" value="<%=Mascota%>" readonly>
            <label>Composicion Nucleo Familiar</label>
            <label>Numero de Personas en la familia</label>
            <input type="text" name="Documento" pattern="[0-9]{1,11}" required>
            </div>
             <%
                ArrayList<GS_Encuesta> Encuesta = new ArrayList<>();
                Encuesta_M Encu = new Encuesta_M();
                Encuesta = Encu.Preguntas();
                GS_Encuesta GS_E = new GS_Encuesta();
                for(int i=0; i<Encuesta.size(); i++){
                    GS_E = Encuesta.get(i);
            %>
            <div class="Preguntas">
                <div class="Text">
                    <label><%=GS_E.getPregunta()%></label>
                </div>
                <div class="Opcion">
                    <label>SI<input type="checkbox" value="Si"></label>
                    <label>NO<input type="checkbox" value="No"></label>
                </div>
            </div>
            <%
            }
            %>
        </div>
    </body>
</html>
