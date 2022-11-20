<%-- 
    Document   : Principal
    Created on : 28/08/2022, 10:24:32 a. m.
    Author     : ducua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRADOR</title>
        <link href="" rel="" type=""/>
        <link href="/css/principal.css" rel="stylesheet" integrity="" crossorigin="">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ">
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
                    <button type="button" class="btn btn-lg btn-success mx-auto" disabled>${loggedInUser_textuser}</button>
                     <li class="nav-item">
                        <a style="color:#000000; margin-top: 20px; margin-right: 20px"class="btn btn-lg btn-success text-light" href="index.jsp">log out</a>
                    </li>
                </div>
            </div>
        </nav>
        <script src="" integrity="" crossorigin=""></script>
    </body>
</html>