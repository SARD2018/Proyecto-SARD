<%-- 
    Document   : Registro_Eventos
    Created on : 29/11/2018, 11:39:10 AM
    Author     : Yefrin Pacheco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SARD</title>
        <link rel="stylesheet" type="text/css" href="Iconos/css/fontello.css">
    </head>
    <body>
        <div>
            <form action="">
                <label>Evento</label>
                <label>Nombre</label><input type="text" name="Nombre" required>
                <label>Tipo</label>
                    <select>
                        <option>Elije una Opcion</option>
                        <option value="Vacunacion">Vacunacion</option>
                        <option value="Adopcion">Adopcion</option>
                    </select>
                <label>Fecha</label><input type="date" name="Fecha" required>
                <textarea placeholder="Descripcion del evento"></textarea>
                <label>
                    <input type="file" name="Foto" required>
                    <span class="icon-camera-outline"></span>
                </label>
                <input type="submit" name="BtnEv" value="Ingresar">
            </form>
        </div>
    </body>
</html>
