<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <h1>Editar Equipo</h1>
        <br>
        <% String equipo_id = request.getParameter("equipo_id"); %>

        <form method="post" action="../ServletEquipo">
            <table border="2">
                <tr><td>USUARIO_ID</td><td><input type="text" name="estadio_id" readonly value="<% out.println("" + equipo_id); %>"></td></tr>
                        <% Conexion con = new Conexion();
                            con.setConsulta("select * from Equipos where equipo_id='" + equipo_id + "'");
                            while (con.getResultado().next()) {

                        %>

                <tr>
                    <td>NOMBRE</td><td><input type="text" name="nombre" value="<% out.println("" + con.getResultado().getString("nombre"));  %>"></td>
                </tr>
                <tr>
                    <td>ESTADIO_ID</td><td><input type="text" name="estadio_id" value="<% out.println("" + con.getResultado().getString("estadio_id"));  %>"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="editar" value="Actualizar"></td>
                </tr>

                <% }%>
            </table>

        </form>
    </body>
</html>
