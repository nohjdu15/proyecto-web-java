<%-- 
    Document   : empleado
    Created on : 13/09/2022, 11:25:43 a. m.
    Author     : ducua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Empleado</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" href="/css/empleado.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"> 
        <link href="css/empleado.css" type="text/css"/>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a style="color:#FFFFFF; margin-right:120px; font-size: 70px" class="nav-link info" aria-current="page" href="Principal.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                             <a style="color:#000000; margin-top: 50px; margin-right: 20px"class="btn btn-outline-success text-light" href="#" role="buttom">producto</a>
                        </li>
                        <li class="nav-item">
                            <a style="color:#000000; margin-top: 50px; margin-right: 20px"class="btn btn-outline-success text-light" href="empleado.jsp">Agregar Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="color:#000000; margin-top: 50px; margin-right: 20px"class="btn btn-outline-success text-light" href="#">Clientes</a>
                        </li>
                        </li>
                        <li class="nav-item">
                            <a style="color:#000000; margin-top: 50px; margin-right: 20px"class="btn btn-outline-success text-light">Nueva venta</a>
                        </li>
                    </ul>
                    <button style="font-family: cursive" type="button" class="btn btn-lg btn-success mx-auto " disabled>${loggedInUser_textuser}</button>
                    <li class="nav-item">
                        <a style="color:#000000; margin-top: 20px; margin-right: 20px"class="btn btn-lg btn-success text-light" href="index.jsp">log out</a>
                    </li>
                </div>
            </div>
            </nav>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        </header>
        <div class="container">
            <div class="page-header">
                <h1 class="form-group text-center" id="title">Agregar Empleados</h1>
                <p class="form-group text-center text-muted">Favor diligenciar el siguiente formulario, para agregar el empleado.</p>
                <hr class="my-6">
            </div>
            <div class="row align-items-start">
                <div class="col">
                </div>
                <div class="col">
                    <form class="form-sign" action="Validar?accion=añadir" method="POST">
                        <div></div>
                        <div class="form-group">
                          <label for="nombres" class="form-label">Nombres</label>
                          <input type="text" name="textnom" class="form-control" id="nombres" placeholder="Nombre completo del empleado">
                        </div>
                        <div class="form-group">
                          <label for="telefono" class="form-label" >Telefono</label>
                          <input type="text" name="texttel"  class="form-control" id="telefono" placeholder="Telefono del empleado">
                        </div>
                        <div class="form-group">
                          <label for="user" class="form-label">Nombre de Usuario</label>
                          <input type="text" name="textusr" class="form-control" id="user" placeholder="Nombre asignado al usuario">
                        </div>
                        <div class="form-group">
                          <label for="pass" class="form-label">Contraseña</label>
                          <input type="password" name="textdni" class="form-control" id="pass" placeholder="Contraseña del usuario">
                        </div>
                        <div class="form-group">
                            <label for="esta" class="form-label">Seleccione un estado</label>
                            <select id="esta"name="textesta" class="form-control">
                                <option selected disabled>Seleccione un estado</option>
                                <option value="0">0</option>
                                <option value="1">1</option>
                            </select>
                        </div><br/>
                        <%
                        if(request.getAttribute("errorDB")=="datos no insertados"){
                            request.getAttribute("errorDB");
                            out.println("<p id='error'> datos no insertados.</p>");
                        }
                        %>
                        <div class="text-center">
                            <button  style="font-family: cursive"type="submit" name="accion" value="añadir" class="btn btn-success">Ingresar usuario nuevo</button>
                        </div><br/>
                    </form>
     
                </div>
                <div class="col">
                </div>
                  <hr class="my-6">
            </div>
        </div>
    </body>
</html>
