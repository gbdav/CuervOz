<%-- 
    Document   : mapa_sitio
    Created on : 16 feb. 2021, 20:15:29
    Author     : luisr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Mapa del sitio</title>
        <!-- Favicon -->
        <link rel="icon" href="./assets/img/brand/favicon.png" type="image/png">
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <!-- Icons -->
        <link rel="stylesheet" href="./assets/vendor/nucleo/css/nucleo.css" type="text/css">
        <link rel="stylesheet" href="./assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
        <link rel="stylesheet" href="./assets/vendor/@fortawesome/fontawesome-free/css/brands.min.css" type="text/css">
        <link rel="stylesheet" href="./assets/vendor/@fortawesome/fontawesome-free/css/solid.min.css" type="text/css">
        <!-- Argon CSS -->
        <link rel="stylesheet" href="./assets/css/argon.css?v=1.2.0" type="text/css">
        <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap-grid.css" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/shortcuts/_shortcut.scss" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/dropdowns/_dropdown.scss" type="text/css"/>
        <link rel="stylesheet" href="./assets/scss/core/utilities/_text.scss" type="text/css"/>
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
                                <h6 class="h2 text-white d-inline-block mb-0">Mapa del Sitio</h6>
                                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                        <li class="breadcrumb-item"><a href="./"><i class="fas fa-home"></i></a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Mapa del Sitio</li>
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
                        <div class="table-responsive">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="card bg-secondary border-0 mb-0">
                                            <div class="card-header bg-transparent">
                                                <div class="text-muted text-center mt-2 mb-3"><h1>Mapa del Sitio</h1></div>
                                            </div>
                                            <div class="card-body px-lg-5 py-lg-5">
                                                <h2 class="text-dark"><i class="fas fa-store text-primary"></i> - Comprar</h2>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./catalogo">
                                                            <i class="ni ni-tv-2 text-primary"></i>
                                                            <span class="nav-link-text">Encontrar un producto</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <h2 class="text-dark"><i class="fas fa-home text-primary"></i> - Empresa</h2>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./acerca">
                                                            <i class="ni ni-app text-primary"></i>
                                                            <span class="nav-link-text">Acerca de Nosotros</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./contactanos">
                                                            <i class="fas fa-phone text-primary"></i>
                                                            <span class="nav-link-text">Contactanos</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./ayuda">
                                                            <i class="fas fa-question text-primary"></i>
                                                            <span class="nav-link-text">Ayuda</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <h2 class="text-dark"><i class="fas fa-info text-primary"></i> - Informacion</h2>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./registrar">
                                                            <i class="fas fa-pen text-primary"></i>
                                                            <span class="nav-link-text">Registro</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <a class="nav-link" href="./login">
                                                            <i class="fas fa-sign-in-alt text-primary"></i>
                                                            <span class="nav-link-text">Login</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxjTYyA4UxArI-BWC3FOctbWJ09l2PzVI"></script>

    </body>
</html>
