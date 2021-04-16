<%-- 
    Document   : ayuda
    Created on : 16/02/2021, 03:32:04 PM
    Author     : ozvsx
--%>
<%@page import="dtos.DtoMunicipios"%>
<%@page import="dtos.DtoEstados"%>
<%@page import="dtos.DtoCompra"%>
<%@page import="dtos.DtoProductos"%>
<%
    DtoProductos producto = (DtoProductos) request.getAttribute("producto");
    DtoCompra compra = (DtoCompra) request.getAttribute("compra");
    DtoEstados estado = (DtoEstados) request.getAttribute("estado");
    DtoMunicipios municipio = (DtoMunicipios) request.getAttribute("municipio");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Pago</title>
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
                                                <div class="text-muted text-center mt-2 mb-3"><h1>Forma de pago</h1></div>
                                            </div>
                                            <div class="card-body px-lg-5 py-lg-5">
                                                <form role="form" action="Pagar" method="GET">
                                                    <div class="modal-header">
                                                        <a data-toggle="modal" data-target="#exampleModal" class="btn btn-info btn-lg text-white"><i class="fas fa-shopping-cart"></i>&nbsp;Ver detalles de la compra</a>
                                                        <hr />
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-4">
                                                                <img class="fit-image mx-7" src="https://i.imgur.com/OdxcctP.jpg" width="105px" height="55px">
                                                            </div>
                                                            <div class="col-4">
                                                                <img class="fit-image mx-7" src="https://i.imgur.com/WIAP9Ku.jpg" width="105px" height="55px">
                                                            </div>
                                                            <div class="col-4">
                                                                <img class="fit-image mx-7" src="https://i.imgur.com/cMk1MtK.jpg" width="105px" height="55px">
                                                            </div>
                                                        </div>
                                                        <hr />
                                                        <div class="row justify-content-center">
                                                            <div class="col-2"></div>

                                                            <div class="col-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">Nombre</label>
                                                                    <input class="form-control" type="text" name="name">
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">Numero</label>
                                                                    <input class="form-control" type="text" id="cr_no" name="card-no" placeholder="0000 0000 0000 0000" minlength="19" maxlength="19">
                                                                </div>
                                                            </div>


                                                            <div class="col-2"></div>
                                                        </div>
                                                        <br />
                                                        <div class="row justify-content-center">
                                                            <div class="col-2"></div>

                                                            <div class="col-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">Fecha de vencimiento</label>
                                                                    <input class="form-control" type="text" id="exp" name="expdate" placeholder="MM/YY" minlength="5" maxlength="5">
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class="form-outline">
                                                                    <label class="form-label">CVV</label>
                                                                    <input class="form-control" type="password" name="cvv" placeholder="&#9679;&#9679;&#9679;" minlength="3" maxlength="3">
                                                                </div>
                                                            </div>

                                                            <div class="col-2"></div>

                                                        </div>
                                                    </div>
                                                    <input type="hidden" name="estado" value="<%= estado.getId_estado()%>"/>
                                                    <input type="hidden" name="municipio" value="<%= municipio.getId_municipio()%>"/>
                                                    <input type="hidden" name="ap1" value="<%= compra.getApellido1() %>"/>
                                                    <input type="hidden" name="ap2" value="<%= compra.getApellido2()%>"/>
                                                    <input type="hidden" name="calle" value="<%= compra.getCalle()%>"/>
                                                    <input type="hidden" name="colonia" value="<%= compra.getColonia()%>"/>
                                                    <input type="hidden" name="correo" value="<%= compra.getCorreo()%>"/>
                                                    <input type="hidden" name="noExt" value="<%= compra.getNoExt() %>"/>
                                                    <input type="hidden" name="noInt" value="<%= compra.getNoInt()%>"/>
                                                    <input type="hidden" name="nombre" value="<%= compra.getNombre()%>"/>
                                                    <input type="hidden" name="numero" value="<%= compra.getNumero()%>"/>
                                                    <input type="hidden" name="idprod" value="<%= producto.getIdprod()%>"/>
                                                    <div class="modal-footer">
                                                        <button id="btnCancelarE" onclick="reset()" class="btn btn-outline-secondary"><I class="fas fa-times-circle"></I>&nbsp;Cancelar</button>
                                                        <button class="btn btn-outline-success"><I class="fas fa-check-circle"></I>&nbsp;Continuar</button>
                                                    </div>
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
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Detalles</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-12">
                                    <label class="h5 text-muted">Nombre : </label>
                                    <label class="h4 font-weight-bold"><%= producto.getNombre()%></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label class="h5 text-muted">Precio : </label>
                                    <label class="h4 text-monospace">$<%= producto.getCosto()%></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label class="h5 text-muted">Cantidad : </label>
                                    <label class="h4 text-monospace">1</label>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-12">
                                    <label class="h5 text-muted">Cliente : </label>
                                    <label class="h4 font-weight-bold"><%= compra.getNombre()%> <%= compra.getApellido1()%> <%= compra.getApellido2()%></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label class="h5 text-muted">Direccion : </label>
                                    <label class="h4 font-weight-bold">Calle <%= compra.getCalle()%> #<%= compra.getNoExt()%>_<%= compra.getNoInt()%>, Colonia <%= compra.getColonia()%>, <%= municipio.getMunicipio()%>, <%= estado.getEstado()%></label>
                                </div>
                            </div>
                            <div class="col-1"></div>
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
<script src="assets/js/pago.js"></script>
</body>
</html>
