<%-- 
    Document   : Registro_Denuncia
    Created on : 31/10/2018, 10:37:38 AM
    Author     : Yefrin Pacheco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Servlet_Denuncia" enctype="multipart/form-data" method="post">
            <p>Direccion: <input type="text" name="Direccion" required ></p>
            <p>Evidencia: <input type="file" name="Evidencia" required accept="image/jpg, image/jpeg, image/png"></p>
            <p>Fecha: <input type="date" required name="Fecha"></p>
            <textarea name="Descripcion" placeholder="Escriba el caso ocurrido"></textarea>
            <br><br>
            <input type="submit" name="BotonDenun" value="Enviar">
        </form>
    </body>
</html>
