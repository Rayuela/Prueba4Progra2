<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Anibal" content="">

        <title>Editar Estadio</title>

        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
        <link href="../template/css/dashboard.css" rel="stylesheet">
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
                        <li class="active"><a href="">Editar Estadio <span class="sr-only">(current)</span></a></li>
                        <br>
                        <br>
                        <li><a href="index.jsp">Regresar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

                    <h2 class="sub-header">Editar Estadio</h2>
                    <div class="table-responsive">
                        <% String estadio_id = request.getParameter("estadio_id"); %>

                        <form method="post" action="../ServletEstadio">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ESTADIO ID</th>
                                        <th>NOMBRE</th>
                                        <th>CIUDAD ID</th>
                                    </tr>                    
                                </thead>
                                <td><input type="text" name="estadio_id" readonly value="<% out.println("" + estadio_id); %>"></td>
                                    <% Conexion con = new Conexion();
                                        con.setConsulta("select * from Estadios where estadio_id='"+estadio_id+"'");
                                        while (con.getResultado().next()) {

                                    %>

                                <td><input type="text" name="nombre" value="<% out.println("" + con.getResultado().getString("nombre"));  %>"></td>
                                <td><input type="text" name="ciudad_id" value="<% out.println("" + con.getResultado().getInt("ciudad_id")); %>"></td>

                                <td><Button type="submit" class="btn btn-success" name="editar">Actualizar</button></td>


                                <% }%>
                            </table>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>