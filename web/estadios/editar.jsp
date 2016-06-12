<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>

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
                    <a class="navbar-brand" href="">Prueba 3 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                </div>
            </div>
        </nav>
        <br><br>
        <h1>Editar Estadio</h1>
        <hr>
        <br>
        <% String estadio_id = request.getParameter("estadio_id"); %>

        <form method="post" action="../ServletEstadio">
            <table class="table-striped">
                <tr><td>ESTADIO_ID</td><td><input type="text" name="estadio_id" readonly value="<% out.println("" + estadio_id); %>"></td></tr>
                        <% Conexion con = new Conexion();
                            con.setConsulta("select * from Estadios where estadio_id='" + estadio_id + "'");
                            while (con.getResultado().next()) {

                        %>

                <tr>
                    <td>NOMBRE</td><td><input type="text" name="nombre" value="<% out.println("" + con.getResultado().getString("nombre"));  %>"></td>
                </tr>
                <td><input type="submit" name="editar" value="Actualizar"></td>
                </tr>

                <% }%>
            </table>

        </form>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>
