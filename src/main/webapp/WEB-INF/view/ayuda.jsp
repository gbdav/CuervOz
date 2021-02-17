<%-- 
    Document   : ayuda
    Created on : 16/02/2021, 03:32:04 PM
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
        <title>Ayuda</title>
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
        <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
            <div class="scrollbar-inner">
                <!-- Brand -->
                <img alt="cuervoz titulo" src="assets/img/brand/cuervoz_titulo.png">
                <div class="navbar-inner">
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Nav items -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="./catalogo">
                                    <i class="ni ni-tv-2 text-primary"></i>
                                    <span class="nav-link-text">Catalogo</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./tablas">
                                    <i class="fas fa-table text-orange"></i>
                                    <span class="nav-link-text">Tablas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./profile">
                                    <i class="ni ni-single-02 text-yellow"></i>
                                    <span class="nav-link-text">Perfil</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./registrar">
                                    <i class="fas fa-pen text-dark"></i>
                                    <span class="nav-link-text">Registro</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./ayuda">
                                    <i class="fas fa-headset text-info"></i>
                                    <span class="nav-link-text">Ayuda</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./contactanos">
                                    <i class="fas fa-phone text-pink"></i>
                                    <span class="nav-link-text">Contactanos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./acerca">
                                    <i class="ni ni-send text-dark"></i>
                                    <span class="nav-link-text">Acerca de Nosotros</span>
                                </a>
                            </li>
                        </ul> 
                    </div>
                </div>
            </div>
        </nav>
        <!-- Main content -->
        <div class="main-content" id="panel">
            <!-- Topnav -->
            <nav class="navbar navbar-top navbar-expand navbar-dark bg-white border-bottom">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <span class="col-2"></span>
                        <a href="./catalogo" class="col col-2">
                            <span class="shortcut-media avatar rounded-circle bg-blue">
                                <i class="fas fa-home"></i>
                            </span>
                            <small class="text-darker">Home</small>   
                        </a>
                        <a href="./login" class="col col-2">
                            <span class="shortcut-media avatar rounded-circle bg-blue">
                                <i class="fas fa-user"></i>
                            </span>
                            <small class="text-darker">Login</small>
                        </a>
                        <a href="./mail" class="col col-2">
                            <span class="shortcut-media avatar rounded-circle bg-blue">
                                <i class="fas fa-mail-bulk"></i>
                            </span>
                            <small class="text-darker">Buzon</small>
                        </a>


                        <!-- Navbar links -->
                        <span class="col-2"></span>
                        <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <span class="avatar avatar-sm rounded-circle">
                                            <img alt="Image placeholder" src="assets/img/theme/team-4.jpg">
                                        </span>
                                        <div class="media-body  ml-2  d-none d-lg-block">
                                            <span class="mb-0 text-sm  font-weight-bold" style="color: rgb(94,114,228)">John Snow</span>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-menu  dropdown-menu-right ">
                                    <div class="dropdown-header noti-title">
                                        <h6 class="text-overflow m-0">Welcome!</h6>
                                    </div>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-single-02"></i>
                                        <span>My profile</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-settings-gear-65"></i>
                                        <span>Settings</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-calendar-grid-58"></i>
                                        <span>Activity</span>
                                    </a>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-support-16"></i>
                                        <span>Support</span>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a href="login" class="dropdown-item">
                                        <i class="ni ni-user-run"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Header -->
            <div class="header bg-primary pb-6">
                <div class="container-fluid">
                    <div class="header-body">
                        <div class="row align-items-center py-4">
                            <div class="col-lg-6 col-7">
                                <h6 class="h2 text-white d-inline-block mb-0">Ayuda</h6>
                                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                        <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="#">Catalogo</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Ayuda</li>
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
                                                <div class="text-muted text-center mt-2 mb-3"><h1>Centro de ayuda</h1></div>
                                            </div>
                                            <div class="card-body px-lg-5 py-lg-5">
                                                <h1 class="text-dark">Preguntas Frecuentes</h1>
                                                <hr>
                                                <p class="text-lead font-weight-bold">
                                                    ¿Dónde se elabora el tequila?
                                                </p>
                                                <p class="text-lead text-dark">
                                                    Para calificar como tequila, la bebida alcohólica debe elaborarse en Jalisco, México y en muy pocas áreas vecinas. Para determinar si el tequila se elaboró en México, busque la etiqueta “Hecho en México” (“Made in Mexico” en inglés).
                                                </p>
                                                <br>
                                                <p class="text-lead font-weight-bold">
                                                    ¿Qué es un tequila reposado?                                                    </p>
                                                <p class="text-lead text-dark">
                                                    Reposado es un estilo de tequila añejado. Para calificar como reposado, el tequila debe añejarse en barriles o tanques de almacenamiento entre 2 y 11 meses. La mayoría de las marcas de tequila usan una gran variedad de barriles de madera para añejar el reposado, pero los más populares son el roble americano y el roble francés.                                                    </p>
                                                <br>
                                                <p class="text-lead font-weight-bold">
                                                    ¿Qué es un tequila añejo?                                                    </p>
                                                <p class="text-lead text-dark">
                                                    Añejo es un estilo de tequila añejado. Añejo significa que el tequila ha sido añejado en cualquier recipiente de uno a tres años, normalmente barriles de roble. La mayoría de las destilerías usan una gran variedad de barriles de madera para añejar el tequila Añejo, pero los más populares son el roble americano y el roble francés.                                                    </p>
                                                <br>
                                                <p class="text-lead font-weight-bold">
                                                    ¿Cómo se agita en seco?                                                    </p>
                                                <p class="text-lead text-dark">
                                                    Agitar en seco un cóctel es esencial al preparar cócteles que requieren huevos, claras de huevos o crema espesa. Primero, combine los ingredientes en una coctelera sin hielo y agite. Agregue hielo y agite vigorosamente para enfriar y diluir el cóctel, y luego sirva.                                                    </p>
                                                <br>
                                                <p class="text-lead font-weight-bold">
                                                    ¿Cómo se prepara el jarabe simple?                                                    </p>
                                                <p class="text-lead text-dark">
                                                    Para preparar un jarabe simple para cócteles, combine una taza de agua y una taza de azúcar en una olla y cueza sobre fuego medio-alto, revolviendo ocasionalmente hasta que se disuelva totalmente el azúcar. No permita que hierva. Retire la mezcla del fuego, enfríe y refrigere por hasta cuatro semanas.                                                    </p>
                                                <br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <footer class="footer pt-0">

            </footer>
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
        <script src="assets/js/argon.js?v=1.2.0"></script>
</body>
</html>
