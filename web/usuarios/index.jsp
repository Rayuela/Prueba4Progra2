<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Anibal">
        <link rel="icon" href="../../favicon.ico">

        <title>Inicio</title>

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
        <h1><center>Lista Usuarios</center></h1>
        <hr>
        <br>
        <a href="crear.jsp"><button type="button" class="btn btn-primary">Crear Usuario</button></a>
        <br>
        <form method="post" action="index.jsp">
            <form class="navbar-form navbar-left" role="search">
                <br>
                <div class="form-group" style="width:20%" aling="right">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" name="buscador" class="btn btn-default">Submit</button>
            </form>
        </form>
        <table class="table">
            <thread>
                <th>ID</th>
                <th>USUARIO</th>
                <th>CLAVE</th>
                <th>FECHA NACIMIENTO</th>
                <th>ACCIONES</th>
            </thread>
            <tbody>
                <%
                    Conexion con = new Conexion();

                    if (request.getParameter("buscador") != null) {
                        if (request.getParameter("buscador").isEmpty()) {
                            con.setConsulta("select * from Usuarios where estado='activo'");
                        } else {
                            String usuario = request.getParameter("buscador");
                            con.setConsulta("select * from Usuarios where nombre like '%" + usuario + "%' and estado='activo'");
                        }

                    } else {
                        con.setConsulta("select * from Usuarios where estado='activo'");
                    }
                %>
                <% while (con.getResultado().next()) { %>
                <tr>
                    <%
                        out.println("<td>" + con.getResultado().getString("usuario_id") + "</td>");
                        out.println("<td>" + con.getResultado().getString("usuario") + "</td>");
                        out.println("<td>" + con.getResultado().getString("clave") + "</td>");
                        out.println("<td>" + con.getResultado().getString("fecha_nacimiento") + "</td>");
                        out.println("<td>" + "<a href='../ServletUsuario?eliminar=" + con.getResultado().getString("usuario_id") + "'>Eliminar</a>" + "</td>");
                        out.println("<td>" + "<a href='editar.jsp?usuario_id=" + con.getResultado().getString("usuario_id") + "'>Editar</a>" + "</td>");
                    %>
                </tr>
                <% }%>
            </tbody>
        </table>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>
