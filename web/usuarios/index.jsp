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

        <title>Usuarios</title>

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
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Profile</a></li>
                        <li><a href="#">Help</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="">Overview <span class="sr-only">(current)</span></a></li>
                        <li><a href="crear.jsp">Nuevo Usuario</a></li>
                        <li><a href="#">Reportes</a></li>
                        <br>
                        <li><a href="../inicio.jsp">Regresar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

                    <h2 class="sub-header">Lista Usuarios</h2>

                    <form method="post" action="index.jsp">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="buscador"placeholder="Buscar...">
                                    <span class="input-group-btn">
                                        <button type="sumbit" class="btn btn-default" type="button">Buscar</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </form>

                    <br>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>USUARIO</th>
                                    <th>CLAVE</th>
                                    <th>FECHA NACIMIENTO</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Conexion con = new Conexion();

                                    if (request.getParameter("buscador") != null) {
                                        if (request.getParameter("buscador").isEmpty()) {
                                            con.setConsulta("select * from Usuarios where estado='activo'");
                                        } else {
                                            String usuario = request.getParameter("buscador");
                                            con.setConsulta("select * from Usuarios where usuario like '%" + usuario + "%' and estado='activo'");
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
                                        out.println("<td>" + "<a href='../ServletUsuario?eliminar=" + con.getResultado().getString("usuario_id") + "'><button class='btn btn-danger'>Eliminar</button></a>" + "</td>");
                                        out.println("<td>" + "<a href='editar.jsp?usuario_id=" + con.getResultado().getString("usuario_id") + "'><button class='btn btn-primary'>Editar</button></a>" + "</td>"); 
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