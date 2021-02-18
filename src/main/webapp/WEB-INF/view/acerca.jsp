<%-- 
    Document   : acerca
    Created on : 18/02/2021, 12:59:28 AM
    Author     : ozvsx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Acerca de Nosotros</title>
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
            <div class="header bg-primary pb-6">
                <div class="container-fluid">
                    <div class="header-body">
                        <div class="row align-items-center py-4">
                            <div class="col-lg-6 col-7">
                                <h6 class="h2 text-white d-inline-block mb-0">Acerca de Nosotros</h6>
                                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                        <li class="breadcrumb-item"><a href="./"><i class="fas fa-home"></i></a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Acerca de Nosotros</li>
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
                                                <div class="text-muted text-center mt-2 mb-3">
                                                    <h1>CUANDO EL TEQUILA SE HACE CON AGAVE AZUL, CADA PASO ES UN ARTE</h1>
                                                </div>
                                            </div>
                                            <div class="card-body px-lg-5 py-lg-5">
                                                <h2 class="text-dark text-center"> - 0 % ADITIVOS. 100 % TEQUILA CUERVOZ.</h2>
                                                <br>
                                                <div class="row">
                                                    <h4 class="text-dark text-center">El mejor sabor se produce de forma lenta y natural. Por eso, desde el comienzo, elaboramos tequila de manera difícil: sin jamás acelerar el proceso y utilizando solo ingredientes frescos de alta calidad para desarrollar sabores intensos y complejos.</h4>
                                                </div>
                                                <hr>
                                                <br>
                                                <div class="container-fluid">
                                                    <span class="col col-2"></span>
                                                    <img alt="cuervoz titulo" src="./assets/img/brand/tequila.png" class="img-fluid ">
                                                </div>
                                                <hr>
                                                <h2 class="text-dark text-center">HOGAR DE UN LEGADO ARTESANAL</h2>
                                                <br>
                                                <h4 class="text-dark text-center">Todo nuestro proceso de elaboración del tequila se lleva a cabo en la Hacienda CuervOz, donde solo elaboramos productos CuervOz. Nos enorgullecemos de todo lo que eso conlleva. Desde nuestro sistema ecológico de riego por ósmosis hasta el producto derivado del agave que reciclamos. Y fundamentalmente, de las personas que participan en la elaboración de nuestro tequila de principio a fin.</h4>
                                                <div class="row">
                                                    <img alt="cuervoz titulo" src="./assets/img/brand/hacienda.png" class="img-fluid ">
                                                </div>
                                                <hr>
                                                <h4 class="text-dark text-center">Tequila CuervOz garantia de sabor!</h4>
                                                <div class="container-fluid align-items-center">
                                                    <img alt="cuervoz titulo" src="./assets/img/brand/favicon.png" class="img-fluid img-center">
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
    </body>
</html>
