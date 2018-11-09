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
        <div class="Caja-Denuncia">
            <form action="Servlet_Denuncia" enctype="multipart/form-data" method="post">
                <label>Direccion: <input type="text" name="Direccion" required ></label>
                <label>Evidencia: <input type="file" name="Evidencia" required accept="image/jpg, image/jpeg, image/png"></label>
                <label>Fecha: <input type="date" required name="Fecha"></label>
                <textarea name="Descripcion" placeholder="Escriba el caso ocurrido"></textarea>
                <input type="submit" name="BotonDenun" value="Enviar">
            </form>
        </div>
    </body>
</html>
