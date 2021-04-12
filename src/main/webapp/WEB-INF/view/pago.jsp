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
                                                <form name="aForm" id="basic-form" method="POST" class="form-auth-small" novalidate>
                                                    <div class="modal-header">
                                                        <h3 id="mdH" class="modal-title text-center align-middle"></h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row justify-content-center mb-4 radio-group">
                                                            <div class="col-4">
                                                                <div class='radio mx-auto' data-value="visa"> <img class="fit-image" src="https://i.imgur.com/OdxcctP.jpg" width="105px" height="55px"> </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class='radio mx-auto' data-value="master"> <img class="fit-image" src="https://i.imgur.com/WIAP9Ku.jpg" width="105px" height="55px"> </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <div class='radio mx-auto' data-value="paypal"> <img class="fit-image" src="https://i.imgur.com/cMk1MtK.jpg" width="105px" height="55px"> </div>
                                                            </div> <br>
                                                        </div>
                                                        <hr />
                                                        <div class="row justify-content-center">
                                                            <div class="col-2"></div>
 
                                                                    <div class="col-4">
                                                                        <div class="form-outline">
                                                                            <label class="form-label">Nombre</label>
                                                                            <input class="form-control" type="text" name="Name" placeholder="John Doe">
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
                                                    <div class="modal-footer">
                                                        <a id="btnCancelarE" onclick="reset()" class="btn btn-outline-secondary"><I class="fas fa-times-circle"></I>&nbsp;Cancelar</a>
                                                        <a href="./catalogo" class="btn btn-outline-success"><I class="fas fa-check-circle"></I>&nbsp;Continuar</a>
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
