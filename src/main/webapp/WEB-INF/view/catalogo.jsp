<%-- 
    Document   : catalogo
    Created on : 16 feb. 2021, 12:46:51
    Author     : luisr
--%>
<%@page import="dtos.DtoProductos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
    List<DtoProductos> listaReq = (List) request.getAttribute("datos");
    //Object listaReq = request.getAttribute("lista");
    //List listaReq = (List)request.getAttribute("datos");

    // for( int i=0; i<listaReq.size(); i++ ){
    //     System.out.print("i: " + i);
    //     System.out.print( listaReq.get(i).getIdprod() );
    // }
    // System.out.print("req: ");
    // System.out.print(listaReq);
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
        <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap.min.css" type="text/css"/>
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
                                <table class="table align-items-center table-flush">
                                    <tbody class="list">
                                    <div class="album py-5 bg-light">
                                        <div class="container">
                                            <div id="items" class="row">
                                                <!--aqui-->
                                                <% for (int i = 0; i < listaReq.size(); i++) {%>
                                                <div class="productos col-md-4" onmouseenter="mostrarStock('<%= listaReq.get(i).getIdprod()%>');" onmouseleave="quitarStock('<%= listaReq.get(i).getIdprod()%>');">
                                                    <div class="card mb-4 box-shadow item">
                                                        <div class="card-header border-0">
                                                            <div class="row align-items-center">
                                                                <h3 class="m-0"><%= listaReq.get(i).getNombre()%></h3>
                                                            </div>
                                                        </div>
                                                        <img class="img-fluid" src="<%= listaReq.get(i).getImgprod()%>">
                                                        <div class="card-body">
                                                            <span id="<%= listaReq.get(i).getIdprod()%>" class="text-monospace text-danger">Stock disponible <span class="font-weight-bold" ><%= listaReq.get(i).getStock()%></span></span>
                                                        </div>
                                                        <div class="card-footer border-0">
                                                            <div class="row align-items-center">
                                                                <div class="col">
                                                                    <h3 class="mb-0">$<%= listaReq.get(i).getCosto()%></h3>
                                                                </div>
                                                                <div class="col text-right">
                                                                    <a onclick="abrirDetalles('<%= listaReq.get(i).getDecripcion()%>');" data-toggle="modal" data-target="#exampleModal" class="btn btn-sm btn-secondary">Detalles</a>
                                                                </div>
                                                                <div class="col text-right">
                                                                    <a href="./compra" class="btn btn-sm btn-primary">Comprar</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                            </div>
                                        </div>
                                    </div>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Detalles</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <label id="desc" class="text-justify"></label>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="position-fixed bottom-0 right-0 p-3" style="z-index: 5; right: 0; bottom: 0;">
                    <div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true" data-delay="5000">
                        <div class="toast-header">
                            <strong class="mr-auto">Cuervoz</strong>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="toast-body h2">
                            <i id="toast-icon"></i>&nbsp;Bienvenido, <span id="toast-mssg"></span>
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
        <script src="./assets/vendor/jquery/dist/jquery.min.js"></script>
        <script src="./assets/js/catalogo.js"></script>
        <script src="./assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/vendor/js-cookie/js.cookie.js"></script>
        <script src="./assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="./assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
        <!-- Argon JS -->
        <script src=".assets/js/argon.js"></script>
    </body>

</html>