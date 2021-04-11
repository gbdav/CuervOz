<%-- 
    Document   : Productos
    Created on : 08-abr-2021, 23:34:59
    Author     : david
--%>
<%@page import="dtos.DtoUsuarios"%>
<%@page import="dtos.DtoProductos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
    request.getAttribute("correo");
    List<DtoProductos> listaReq = (List)request.getAttribute("datos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>CuervOz</title>
        <!-- Favicon -->
        <link rel="icon" href="./assets/img/brand/favicon.png" type="image/png">
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <!-- Icons -->
        <link rel="stylesheet" href="./assets/vendor/nucleo/css/nucleo.css" type="text/css">
        <link rel="stylesheet" href="./assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
        <!-- Argon CSS -->
        <link rel="stylesheet" href="./assets/css/argon.css?v=1.2.0" type="text/css">
        <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap-grid.css" type="text/css"/>
        <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap-grid.css" type="text/css">
        <link rel="stylesheet" href="./assets/scss/core/shortcuts/_shortcut.scss" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/shortcuts/_shortcut.scss" type="text/css">
        <link rel="stylesheet" href="./assets/scss/core/dropdowns/_dropdown.scss" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/dropdowns/_dropdown.scss" type="text/css">
        <link rel="stylesheet" href="./assets/scss/core/utilities/_text.scss" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/utilities/_text.scss" type="text/css">
        
    </head>

    <body>
        <!-- Sidenav -->
        <%@ include file="./sideNav.jspf" %>
        <!-- Main content -->
        <div class="main-content" id="panel">
            <!-- Topnav -->
            <%@ include file="./topNav.jspf" %>
            <!-- Header -->
            <div class="header bg-primary pb-6">
                <div class="container-fluid">
                    <div class="header-body">
                        <div class="row align-items-center py-4">
                            <div class="col-lg-6 col-7">
                                <h6 class="h2 text-white d-inline-block mb-0">Tables</h6>
                                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                        <li class="breadcrumb-item"><a href="./"><i class="fas fa-home"></i></a></li>
                                        <li class="breadcrumb-item active">Catálogo</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page content -->
            <div class="container-fluid mt--6">
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <!-- Light table -->
                            <!-- Search form -->
                            <div class="table-responsive">
                                <div class="form-group mb-0">
                                    <div class="input-group input-group-alternative input-group-merge">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-search"></i></span>
                                        </div>
                                        <input id="searchbar" onkeyup="buscar_prods()" name="search" class="form-control" placeholder="Buscar productos" type="text">
                                    </div>
                                </div>
                                <button type="button" class="close" data-action="search-close" data-target="#navbar-search-main" aria-label="Close">
                                </button>
                                <table>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Descripcion</th>
                                        <th>Costo</th>
                                        <th>Acciones</th>
                                    </tr>
                                    <tr>
                                        <% for(int i=0; i<listaReq.size();i++){ %>
                                        <td><%= listaReq.get(i).getNombre() %></td>
                                        <td><%= listaReq.get(i).getDecripcion() %></td>
                                        <td><%= listaReq.get(i).getCosto() %></td>
                                        <td>
                                            <button class="btn btn-sm btn-info btn-edit">Editar</button>
                                            <button class="btn btn-sm btn-danger btn-delete">Eliminar</button>
                                        </td>
                                        <%}%>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <footer class="footer pt-0">

                </footer>
            </div>
        </div>
        <!-- Argon Scripts -->
        <!-- Core -->
        <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/js-cookie/js.cookie.js"></script>
        <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
        <!-- Argon JS -->
        <script src="assets/js/argon.js"></script>
    </body>

</html>
