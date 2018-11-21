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
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Registro_Denuncias.css">
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
    </head>
    <body>
        <div class="Caja">
            <h2>Denuncias</h2>
            <form action="Servlet_Denuncia" enctype="multipart/form-data" method="post">
                <label>Direccion: <input type="text" name="Direccion" required ></label>
                <label>Evidencia: 
                    <input class="file" type="file" name="Evidencia" required accept="image/jpg, image/jpeg, image/png">
                    <span class="icon-camera"></span>
                </label>
                <label>Fecha: <input type="date" required name="Fecha"></label>
                <textarea name="Descripcion" placeholder="Escriba el caso ocurrido"></textarea>
                <input type="submit" name="BotonDenun" value="Enviar">
            </form>
        </div>
    </body>
</html>
