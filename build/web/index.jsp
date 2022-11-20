<%-- 
    JSP= JAVA SERVER PAGE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SISTEMAS</title>
        <link href=""/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">-->
        <link href="css/index.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <main class="container">
            <div class="c1"></div>
            <div class="c2" id="cuadro">
                <form class="form-sign" action="Validar?accion=login" method="POST">
                    <img src="image/descarga.png" alt="" id="logo">
                    <br/><br/>
                    <p id="titulo">Login</p>
                    <br/><br/>
                    <label class="labe" id="subt1">Usuario</label>
                    <br/>
                    <input autocomplete="off" type="text" name="textuser" class="entrada" placeholder="Usuario" >
                    <br/><br/>
                    <label class="labe" id="subt2">Contraseña</label>
                    <br/>
                    <input autocomplete="off" type="password" name="textpass" class="entrada" placeholder="Contraseña">
                    <br/><br/>
                    <%
                        if(request.getAttribute("errorMessage")=="El usuario o contraseña son incorrectos"){
                            request.getAttribute("errorMessage");
                            out.println("<p id='error'> El usuario o contraseña son incorrectos.</p>");
                        }
                    %>

                    <br/>
                    <input autocomplete="off" type="submit" name="accion" value="login" id="boton" class="loginbutton">
                </form>
                <br/>
                    <p id="forgot">¿Olvidaste tu contraseña?</p>
            </div>
        <div class="c3"></div>
        </main>     
        
    </body>
</html>