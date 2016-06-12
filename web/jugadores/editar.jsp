<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
        <h1>Editar Jugador</h1>
        <br>
        <% String jugador_id = request.getParameter("jugador_id"); %>

        <form method="post" action="../ServletJugador">
            <table border="2">
                <tr><td>JUGADOR_ID</td><td><input type="text" name="jugador_id" readonly value="<% out.println("" + jugador_id); %>"></td></tr>
                        <% Conexion con = new Conexion();
                            con.setConsulta("select * from Jugadores where jugador_id='" + jugador_id + "'");
                            while (con.getResultado().next()) {

                        %>

                <tr>
                    <td>JUGADOR</td><td><input type="text" name="jugador" value="<% out.println("" + con.getResultado().getString("jugador"));  %>"></td>
                </tr>
                <tr>
                    <td>NOMBRE</td><td><input type="text" name="nombre" value="<% out.println("" + con.getResultado().getString("nombre"));  %>"></td>
                </tr>
                <tr>
                    <td>APELLIDO PATERNO</td><td><input type="text" name="apepat" value="<% out.println("" + con.getResultado().getString("apepat"));  %>"></td>
                </tr>
                <tr>
                    <td>APELLIDO MATERNO</td><td><input type="text" name="apemat" value="<% out.println("" + con.getResultado().getString("apemat"));  %>"></td>
                </tr>
                <tr>
                    <td>FECHA NACIMIENTO</td><td><input type="text" name="fecha_nacimiento" value="<% out.println("" + con.getResultado().getString("fecha_nacimiento"));  %>"></td>
                </tr>
                <tr>
                    <td>EQUIPO ID</td><td><input type="text" name="equipo_id" value="<% out.println("" + con.getResultado().getString("equipo_id"));  %>"></td>
                </tr>
                <tr>
                    <td>CREADO POR</td><td><input type="text" name="creado_por" value="<% out.println("" + con.getResultado().getString("creado_por"));  %>"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="editar" value="Actualizar"></td>
                </tr>

                <% }%>
            </table>

        </form>
    </body>
</html>
