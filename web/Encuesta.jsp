
<%@page import="Modelo.Cliente_M"%>
<%@page import="Modelo.Administrador_M"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.GS_Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <H1>FORMATO DE SOLICITUD DE MASCOTA EN ADOPCION </H1>
        <%
            HttpSession Nom=request.getSession();
            String Documento=(String)Nom.getAttribute("DocSession");
            ArrayList<GS_Cliente> datos = new ArrayList<>();
            Cliente_M con = new Cliente_M();
            datos = con.Uno_Cliente(Documento);
            GS_Cliente Dat = new GS_Cliente();

            for(int i=0; i<datos.size(); i++){
                Dat = datos.get(i);
        %>
    </body>
</html>
