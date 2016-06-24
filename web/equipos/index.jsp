<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Anibal">
        <link rel="icon" href="../../favicon.ico">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">
        <link href="../template/css/bootstrap.css" rel="stylesheet">
        <title>Inicio Equipos</title>
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
                    <a class="navbar-brand" href="">Prueba 4 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                </div>
            </div>
        </nav>
        <br><br>
        <h1>Lista Equipos</h1>
        <hr>
        <br>
        <a href="crear.jsp"><button type="button" class="btn btn-primary">Crear Equipo</button></a>
        <br>
        <form method="post" action="index.jsp">
            <form class="navbar-form navbar-left" role="search">
                <br>
                <div class="form-group" style="width:20%" aling="right">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Buscar</button>
            </form>
        </form>
        <table class="table">
            <thread>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>ESTADIO_ID</th>
                <th>ACCIONES</th>
            </thread>
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
            <a href="../inicio.jsp"<button type="button" class="btn btn-success">Regresar</button></a>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>
