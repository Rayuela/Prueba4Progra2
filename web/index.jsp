<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Anibal" content="">

        <title>Prueba 4 Progra 2</title>

        <link href="template/css/bootstrap.min.css" rel="stylesheet">
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
                    <form class="navbar-form navbar-right" method="post" action="ServletLogin">
                        <div class="form-group">
                            <input type="text" placeholder="Usuario" name="usuario"class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Contraseña" name="clave" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Entrar</button>

                    </form>
                </div>
            </div>
        </nav>

        <div class="jumbotron">
            <div class="container">
                <h1>Bienvenido</h1>
                <p>Pagina creada por Aníbal Barría para prueba 4 de Programación 2 Java Web Instituto INACAP año 2016.</p>
                <br>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h2>La U tiene estadio</h2>
                    <p>La Universidad de Chile se complace anunciar su primer estadio en el conocido juego Minecraft.<br> <b>Ponto dirección IP.</b></p>
                    <p><a class="btn btn-default" href="http://lalegal.cl/noticia/1345" role="button">View details &raquo;</a></p>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h2>Chile Campeon de Copa America Centenario</h2>
                            <p></p>
                            <p><a class="btn btn-default" href="" role="button">View details &raquo;</a></p>
                        </div>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br>

                        <hr>

                        <footer>
                            <p>&copy; Aníbal Barría.</p>
                        </footer>
                    </div>
                </div>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                <script src="template/js/bootstrap.min.js"></script>
                </body>
                </html>
