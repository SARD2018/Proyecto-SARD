<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Mascota_M"%>
<%@page import="Modelo.GS_Mascota"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Estilos/JS/jquery.js"></script>
        <script type="text/javascript" src="Estilos/JS/Form-Postulacion.js"></script>
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Formulario_Postulacion.css">
        <title></title>
    </head>
    <body>
        <div class="Container">
            <div class="Datos_Mascota">
                <form action="Encuesta_Administrador.jsp" method="POST" enctype="multipart/form-data">
                    <%
                     HttpSession dato=request.getSession();
                     Integer Codigo=(Integer)dato.getAttribute("CodigoM");
                     ArrayList<GS_Mascota> datos = new ArrayList<>();
                     Mascota_M con = new Mascota_M();
                     datos = con.Uno_Mascota(Codigo);
                     GS_Mascota GS = new GS_Mascota();

                        for(int i=0; i<datos.size(); i++){
                        GS = datos.get(i);
                    %>
                    
                    <input class="Nombre" type="text" name="Nombre" value="<%=GS.getNombre()%>">
                    <input type="text" name="Tipo" value="<%=GS.getTipo_Mascota()%>">
                    <input type="text" name="Fecha" value="<%=GS.getFecha_Nacimiento()%>">
                    <input type="text" name="Color" value="<%=GS.getColor()%>">
                    <input type="text" name="Raza" value="<%=GS.getRaza()%>">
                    <input type="text" name="Sexo" value="<%=GS.getSexo()%>">
                    
                    <%
                    }
                    %>
                    <label>Selecciona La Persona que quiere adoptar a <%=GS.getNombre()%></label>
                    <select name="Documento">
                    <%

                     ArrayList<GS_Cliente> Clientes = new ArrayList<>();
                     Cliente_M Cli = new Cliente_M();
                     Clientes = Cli.Todo_Cliente();
                     GS_Cliente GS_C = new GS_Cliente();

                    for(int i=0; i<Clientes.size(); i++){
                        GS_C = Clientes.get(i);
                    %>                    
                       <option value="<%=GS_C.getDocumento()%>"><%=GS_C.getNombre()+" "+GS_C.getApellido()%></option>
                    <% } %>
                    </select>
                    <%
                        HttpSession datt = request.getSession();
                        datt.setAttribute("Documento_C", GS_C.getDocumento());
                        datt.setAttribute("Mascota", GS.getNombre());
                    %>
                    <button class="Boton" name="In_Postulacion">POSTULARSE</button>
                </form>
            </div>
        </div>
    </body>
</html>
