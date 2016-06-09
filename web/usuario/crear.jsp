<%-- 
    Document   : crear
    Created on : 07-06-2016, 4:23:23
    Author     : Anibal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Usuario</title>
    </head>
    <body>
        <h1>CREAR NUEVO USUARIO</h1>
        <br>
        <form method="post" action="ServletUsuario">
        <table class="1">
            
            <tr>
                <td>Usuario</td><td><input type="text" name="usuario"></td>
            </tr>
             <tr>
                <td>CLAVE</td><td><input type="text" name="clave"></td>
            </tr>
             <tr>
                <td>FECHA_NACIMIENTO</td><td><input type="text" name="fn"></td>
            </tr>
            <tr>
                <td><input type="submit" name="guardar" value="Guardar"></td>
            </tr>
            
        </table>
    </body>
</html>
