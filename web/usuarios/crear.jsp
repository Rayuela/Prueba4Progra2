<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Crear Usuario</title>
        
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
        <br><br><br>
        <h1>CREAR NUEVO USUARIO</h1>
        <hr>
        <br>
        <form method="post" action="../ServletUsuario">
        <table class="table">
            <tr>
                <td>Usuario</td><td><input type="text" name="usuario"></td>
            </tr>
             <tr>
                <td>CLAVE</td><td><input type="password" name="clave"></td>
            </tr>
             <tr>
                <td>FECHA_NACIMIENTO</td><td><input type="date" name="fn"></td>
            </tr>
            <tr>
                <td><input type="submit" name="guardar" value="Guardar"></td>
            </tr> 
        </table>
        </form>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
             <script src="../template/js/bootstrap.min.js"></script>
    </body>
</html>
