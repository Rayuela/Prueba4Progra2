<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession logeado = request.getSession(true);
    String result = (String) logeado.getAttribute("valido");
    if (result.equals("true") & result!=null ) {

    } else {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Anibal" content="">

        <title>Crear Ciudad</title>

        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
        <link href="../template/css/dashboard.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
        
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
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="">Nueva Ciudad <span class="sr-only">(current)</span></a></li>
                        <br>
                        <br>
                        <li><a href="index.jsp">Regresar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

                    <h2 class="sub-header">Nueva Ciudad</h2>
                    <div class="table-responsive">
                        <form method="post" action="../ServletCiudad">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>PAIS ID</th>
                                        <th>CREADO POR</th>
                                    </tr>
                                </thead>

                                <td><input type="text" name="nombre"></td>
                                <td><input type="text" name="pais_id"</td>
                                <!--
                                <td><div class="form-group">
                                        <select name="pais_id" id="Pais" class="form-control">

                                        </select> 
                                    </div></td>
                                 !-->
                                <td><input type="text" name="creado_por"></td>


                                <td><Button type="submit" class="btn btn-success" name="guardar">Guardar</button></td>

                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="../template/js/bootstrap.min.js"></script>
            <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
            <script>
            $(document).ready(function () {
                $('select').select2();
                $('#Pais').append('<option> Seleccionar Pais</option>');
                $.get("http://localhost:8080/Prueba4Progra2/Tarea", function (data, status) {
                    $.each(data, function (i, item) {
                        $('#Pais').append('<option value=' + item.pais_id + '>' + item.nombre + '</option>');
                    });

                });
            });
            </script>
    </body>
</html>