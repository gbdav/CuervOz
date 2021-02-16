<%-- 
    Document   : contactanos
    Created on : 16/02/2021, 03:28:02 PM
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
        <title>Contactanos</title>
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
      <img alt="cuervoz titulo" src="./assets/img/brand/cuervoz_titulo.png">
      <div class="navbar-inner">
        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="sidenav-collapse-main">
          <!-- Nav items -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="catalogo.html">
                <i class="ni ni-tv-2 text-primary"></i>
                <span class="nav-link-text">Catalogo</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="tablas.html">
                <i class="fas fa-table text-orange"></i>
                <span class="nav-link-text">Tablas</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profile.html">
                <i class="ni ni-single-02 text-yellow"></i>
                <span class="nav-link-text">Perfil</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="registro.html">
                <i class="fas fa-pen text-dark"></i>
                <span class="nav-link-text">Registro</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="ayuda.html">
                <i class="fas fa-headset text-info"></i>
                <span class="nav-link-text">Ayuda</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contactanos.html">
                <i class="fas fa-phone text-pink"></i>
                <span class="nav-link-text">Contactanos</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="acerca.html">
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
                        <a href="/catalogo" class="col col-2">
                                            <span class="shortcut-media avatar rounded-circle bg-blue">
                                                <i class="fas fa-home"></i>
                                            </span>
                            <small class="text-darker">Home</small>   
                                        </a>
                        <a href="/login" class="col col-2">
                                            <span class="shortcut-media avatar rounded-circle bg-blue">
                                                <i class="fas fa-user"></i>
                                            </span>
                            <small class="text-darker">Login</small>
                                        </a>
                        <a href="mail" class="col col-2">
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
             
         </div>
    </body>
</html>
