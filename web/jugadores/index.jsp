<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Jugador</title>
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
                    <a class="navbar-brand" href="#">Prueba 3 Progra 2</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                </div>
            </div>
        </nav>
        <br><br>
        <h1>Lista Jugadores</h1>
        <hr>
        <br>
        <a href="crear.jsp"><button type="button" class="btn btn-primary">Crear Jugador</button></a>
        <br>
        <form method="post" action="index.jsp">
            <p ALIGN="right"><form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form></P>
    </form>
    <table class="table">
        <thread>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>APEPAT</th>
            <th>APEMAT</th>
            <th>FECHA_NACIMIENTO</th>
            <th>EQUIPO_ID</th>
            <th>ACCIONES</th>
        </thread>
        <tbody>
            <%
                Conexion con = new Conexion();

                if (request.getParameter("buscador") != null) {
                    if (request.getParameter("buscador").isEmpty()) {
                        con.setConsulta("select * from Jugadores where estado='activo'");
                    } else {
                        String nombre = request.getParameter("buscador");
                        con.setConsulta("select * from JUgadores where nombre like '%" + nombre + "%' and estado='activo'");
                    }

                } else {
                    con.setConsulta("select * from Jugadores where estado='activo'");
                }
            %>
            <% while (con.getResultado().next()) { %>
            <tr>
                <%
                    out.println("<td>" + con.getResultado().getString("jugador_id") + "</td>");
                    out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                    out.println("<td>" + con.getResultado().getString("apepat") + "</td>");
                    out.println("<td>" + con.getResultado().getString("apemat") + "</td>");
                    out.println("<td>" + con.getResultado().getString("fecha_nacimiento") + "</td>");
                    out.println("<td>" + con.getResultado().getString("equipo_id") + "</td>");
                    out.println("<td>" + "<a href='../ServletJugador?eliminar=" + con.getResultado().getString("jugador_id") + "'>Eliminar</a>" + "</td>");
                    out.println("<td>" + "<a href='editar.jsp?jugador_id=" + con.getResultado().getString("jugador_id") + "'>Editar</a>" + "</td>");
                %>
            </tr>
            <% }%>
        </tbody>
    </table>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../template/js/bootstrap.min.js"></script>
</body>
</html>
