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
        <title></title>
    </head>
    <body>
        <div class="Container">
            <div>
                <%
                 HttpSession dato=request.getSession();
                 int Codigo=(Integer)dato.getAttribute("CodigoM");
                 ArrayList<GS_Mascota> datos = new ArrayList<>();
                 Mascota_M con = new Mascota_M();
                 datos = con.Uno_Mascota(Codigo);
                 GS_Mascota GS = new GS_Mascota();

                for(int i=0; i<datos.size(); i++){
                    GS = datos.get(i);
                %>
                <select name="Tipo">
                    <option value="<%=GS.getTipo_Mascota()%>"></option>
                </select>
                <input type="text" name="Nombre" value="<%=GS.getNombre()%>">
                <input type="date" name="Fecha" value="<%=GS.getFecha_Nacimiento()%>">
                <input type="text" name="Color" value="<%=GS.getColor()%>">
                <input type="text" name="Raza" value="<%=GS.getRaza()%>">
                <select name="Genero">
                    <option value="<%=GS.getTipo_Mascota()%>"></option>
                </select>
                
                <%
                }
                %>
            </div>
        </div>
    </body>
</html>
