<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession logeado = request.getSession(true);
    String result = (String) logeado.getAttribute("valido");
    if (result.equals("true") & result != null) {

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

        <title>Editar Usuario</title>

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
                        <li class="active"><a href="">Editar Usuario <span class="sr-only">(current)</span></a></li>
                        <br>
                        <br>
                        <li><a href="index.jsp">Regresar</a></li>
                    </ul>

                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

                    <h2 class="sub-header">Editar Usuario</h2>
                    <div class="table-responsive">
                        <% String usuario_id = request.getParameter("usuario_id"); %>

                        <form method="post" action="../ServletUsuario">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>USUARIO ID</th>
                                        <td><input type="text" name="usuario_id" readonly value="<% out.println("" + usuario_id); %>"></td>
                                            <% Conexion con = new Conexion();
                                                con.setConsulta("select * from Usuarios where usuario_id='" + usuario_id + "'");
                                                while (con.getResultado().next()) {

                                            %>
                                    </tr>
                                    <tr>
                                        <th>NOMBRE</th>
                                        <td><input type="text" name="usuario" value="<% out.println("" + con.getResultado().getString("usuario"));  %>"></td>
                                    </tr>
                                    <tr>
                                        <th>CLAVE</th>
                                        <td><input type="password" name="clave" value="<% out.println("" + con.getResultado().getString("clave"));  %>"></td>
                                    </tr>
                                    <tr>
                                        <th>FECHA NACIMIENTO</th>
                                        <td><input type="text" name="fn" value="<% out.println("" + con.getResultado().getString("fecha_nacimiento"));  %>"></td>
                                    </tr>
                                    <tr>
                                        <th><a href="usuarios/index.jsp"><button type="submit" class="btn btn-danger" name="cancelar">Cancelar</button></a></th>
                                        <td><Button type="submit" class="btn btn-success" name="editar">Actualizar</button></td>
                                    </tr>
                                    <% }%>
                                </thead>
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