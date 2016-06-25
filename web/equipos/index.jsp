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
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Equipos</title>

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
                    <a class="navbar-brand" href="#">Prueba 4 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Dashboard</a></li>
                        <li><a href="#">Settings</a></li>
                        <li><a href="#">Profile</a></li>
                        <li><a href="#">Help</a></li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Search...">
                    </form>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
                        <li><a href="crear.jsp">Crear Jugador</a></li>
                        <li><a href="#">Reportes</a></li>
                        <br>
                        <li><a href="../inicio.jsp">Regresar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

                    <h2 class="sub-header">Lista Equipos</h2>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NOMBRE</th>
                                    <th>ESTADIO ID</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Conexion con = new Conexion();

                                    if (request.getParameter("buscador") != null) {
                                        if (request.getParameter("buscador").isEmpty()) {
                                            con.setConsulta("select * from Equipos");
                                        } else {
                                            String nombre = request.getParameter("buscador");
                                            con.setConsulta("select * from Equipos where nombre like '%" + nombre + "%'");
                                        }

                                    } else {
                                        con.setConsulta("select * from Equipos");
                                    }
                                %>
                                <% while (con.getResultado().next()) { %>
                                <tr>
                                    <%
                                        out.println("<td>" + con.getResultado().getString("equipo_id") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                                        out.println("<td>" + con.getResultado().getString("estadio_id") + "</td>");
                                        out.println("<td>" + "<a href='../ServletEquipo?eliminar=" + con.getResultado().getString("equipo_id") + "'>Eliminar</a>" + "</td>");
                                        out.println("<td>" + "<a href='editar.jsp?equipo_id=" + con.getResultado().getString("equipo_id") + "'>Editar</a>" + "</td>");
                                    %>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>

    </body>
</html>