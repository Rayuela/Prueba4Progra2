<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <h1>Editar Estadio</h1>
        <br>
        <% String estadio_id = request.getParameter("estadio_id"); %>

        <form method="post" action="../ServletEstadio">
            <table border="2">
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
    </body>
</html>
