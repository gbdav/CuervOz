<%-- 
    Document   : ayuda
    Created on : 16/02/2021, 03:32:04 PM
    Author     : ozvsx
--%>

<%@page import="dtos.DtoEstados"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
    List<DtoEstados> listaReq = (List) request.getAttribute("datos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Compra</title>
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
                                <h6 class="h2 text-white d-inline-block mb-0">&nbsp;</h6>
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
                                                <div class="text-muted text-center mt-2 mb-3"><h1>Ingrese sus datos</h1></div>
                                            </div>
                                            <div class="card-body px-lg-5 py-lg-5">
                                                <a data-toggle="modal" data-target="#exampleModal" class="btn btn-info btn-lg text-white"><i class="fas fa-shopping-cart"></i>&nbsp;Ver carrito de compra</a>
                                                <hr />
                                                <form name="aForm" id="basic-form" class="form-auth-small" novalidate>
                                                    <div class="modal-header">
                                                        <h3 id="mdH" class="modal-title text-center align-middle"></h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row mb-6">
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Nombre</label>
                                                                    <input type="text" id="nombre" name="nombre" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Apellido 1</label>
                                                                    <input type="text" id="ap1" name="ap1" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">&nbsp;Apellido 2</label>
                                                                    <input type="email" id="ap2" name="ap2" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row mb-6">
                                                            <div class="col-md-6">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Correo electronico</label>
                                                                    <input type="text" id="mail" name="mail" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Numero de telefono</label>
                                                                    <input type="text" id="numero" name="numero" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row mb-6">
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Calle</label>
                                                                    <input type="text" id="mail" name="mail" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Numero exterior</label>
                                                                    <input type="text" id="noExt" name="noExt" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">&nbsp;Numero interior</label>
                                                                    <input type="text" id="noInt" name="noInt" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row mb-6">
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Colonia</label>
                                                                    <input type="text" id="colonia" name="colonia" class="form-control" required autocomplete="off" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Estado</label>
                                                                    <select class="form-control" id="estado" name="estado">
                                                                        <% for (int i = 0; i < listaReq.size(); i++) {%>
                                                                            <option> <%= listaReq.get(i).getEstado()%> </option>
                                                                        <%}%>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-outline">
                                                                    <label class="text-danger"><i class="fas fa-asterisk fa-xs"></i></label><label class="form-label">&nbsp;Municipio</label>
                                                                    <select class="form-control" id="municipio" name="municipio"></select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a id="btnCancelarE" onclick="reset()"  class="btn btn-outline-secondary"><I class="fas fa-times-circle"></I>&nbsp;Cancelar</a>
                                                        <a href="./pago" class="btn btn-outline-success"><I class="fas fa-check-circle"></I>&nbsp;Continuar</a>
                                                    </div>
                                                    <input type="hidden" id="idD" name="idD" />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Detalles</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-4">
                                    <label class="h5 text-muted">Nombre : </label>
                                    <label class="h4 font-weight-bold">Siete Golpes</label>
                                </div>
                                <div class="col-4">
                                    <label class="h5 text-muted">Precio : </label>
                                    <label class="h4 text-monospace">$19999</label>
                                </div>
                                <div class="col-4">
                                    <label class="h5 text-muted">Cantidad : </label>
                                    <label class="h4 text-monospace">1</label>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-10">
                                    <label class="h5 font-italic text-break">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</label>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <label id="prod" class="text-justify"></label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
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
