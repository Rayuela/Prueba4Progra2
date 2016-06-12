<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Inicio</title>

        <link href="template/css/bootstrap.min.css" rel="stylesheet">
        <link href="template/css/bootstrap.min.css" rel="stylesheet">
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
                    <a class="navbar-brand" href="#">Prueba 3 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                </div>
            </div>
        </nav>
        <br><br><br><br><br>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"><center>Listas</center></h3>
            </div>
            <div class="panel-body">
                <center>
                    <a href="usuarios/index.jsp"><button type="button" class="btn btn-primary">Usuarios</button></a>
                    <br>
                    <a href="jugadores/index.jsp"><button type="button" class="btn btn-primary">Jugadores</button></a>
                    <br>
                    <a href="estadios/index.jsp"><button type="button" class="btn btn-primary">Estadios</button></a>
                    <br>
                    <a href="equipos/index.jsp"><button type="button" class="btn btn-primary">Equipos</button></a>
                </center>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="template/js/bootstrap.min.js"></script>
</body>
</html>
