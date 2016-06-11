<%-- 
    Document   : crear
    Created on : 07-06-2016, 16:29:44
    Author     : Anibal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Jugador</title>
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
        <link href="../template/css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="../index.jsp">Prueba 3 Progra 2</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        </div>
      </div>
    </nav>
        <br><br>
        <h1>CREAR NUEVO JUGADOR</h1>
        <br>
        <form method="post" action="../ServletJugador">
        <table class="table">
            <tr>
                <td>NOMBRE</td><td><input type="text" name="nombre"></td>
            </tr>
             <tr>
                <td>APEPAT</td><td><input type="text" name="apepat"></td>
            </tr>
             <tr>
                <td>APEMAT</td><td><input type="text" name="apemat"></td>
            </tr>
            <tr>
                <td>EQUIPO_ID</td><td><input type="text" name="equipo_id"></td>
            </tr>
            <tr>
                <td>FECHA NACIMIENTO</td><td><input type="date" name="fecha_nacimiento"></td>
            </tr>
            <tr>
                <td>CREADO_POR</td><td><input type="text" name="creado_por"></td>
            </tr>
            <tr>
                <td><input type="submit" name="guardar" value="Guardar"></td>
            </tr>
        </table>
        </form>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
             <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>
