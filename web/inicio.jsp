<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Anibal" content="">

        <title>Inicio</title>

        <link href="template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">Prueba 4 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                </div>
            </div>
        </nav>
        <br><br><br><br><br>
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title"><center>Listas</center></h3>
            </div>
            <div class="panel-body">
                <center>
                    <a href="usuarios/index.jsp"><button type="button" class="btn btn-default">Usuarios</button></a>
                    <a href="jugadores/index.jsp"><button type="button" class="btn btn-default">Jugadores</button></a>
                    <a href="estadios/index.jsp"><button type="button" class="btn btn-default">Estadios</button></a>
                    <a href="equipos/index.jsp"><button type="button" class="btn btn-default">Equipos</button></a>
                <button type="button" class="btn btn-default">Paises</button>
                <button type="button" class="btn btn-default">Ciudades</button>
                </center>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="template/js/bootstrap.min.js"></script>
</body>
</html>
