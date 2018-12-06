
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
                String Documento=(String)Nom.getAttribute("DocSession");
                String Docu="1003560890";
                ArrayList<GS_Cliente> datos = new ArrayList<>();
                Cliente_M con = new Cliente_M();
                datos = con.Uno_Cliente(Docu);
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
            
            
        </div>
    </body>
</html>
