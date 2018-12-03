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
        <link rel="stylesheet" type="text/css" href="Estilos/CSS/E_Menu_Administrador.css">
        <script src="Estilos/JS/jquery.js"></script>
        <script src="Estilos/JS/Eventos.js"></script>
        <script src="Estilos/JS/Menus.js"></script>
    </head>
    <body>
        <div class="BarrMenu">
         <!-- aca carga la barra -->
        </div>
        <div class="Caja-Eventos">
            <form action="Servlet_Evento" method="post" enctype="multipart/form-data">
                <label>Evento</label>
                <label>Nombre</label><input type="text" name="Nombre" required>
                <label>Tipo</label>
                    <select name="Tipo">
                        <option>Elije una Opcion</option>
                        <option value="Vacunacion">Vacunacion</option>
                        <option value="Adopcion">Adopcion</option>
                    </select>
                <label>Fecha</label><input type="date" name="Fecha" required>
                <textarea name="Descripcion" placeholder="Descripcion del evento"></textarea>
                <label>
                    <input type="file" name="Foto" required>
                    <span class="icon-camera-outline"></span>
                </label>
                <input type="submit" name="BtnEv" value="Ingresar">
            </form>
        </div>
    </body>
</html>
