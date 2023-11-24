<%-- 
    Document   : header
    Created on : 20/11/2023, 11:12:33 p. m.
    Author     : gotle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg" style="background-color: #100E40;">
            <div class="container px-4 px-lg-5 text-light">
                <a class="navbar-brand text-b" href="#!">VideoGames Shop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Shop
                            </a>
                            <div id="btnDropdown" class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <!-- Formulario 1 -->
                                <form action="ReceiveData" method="post" class="dropdown-item">
                                    <input type="submit" class="custom-input-style" value="All Products">
                                </form>
                                <!-- Separador -->
                                <div class="dropdown-divider"></div>
                                <!-- Formulario 2 -->
                                <div id="divHide">
                                    <form class="dropdown-item">
                                        <button id="btnCreateProduct" type="button" class="btn btn-primary bg-transparent border-0 text-black text-center" style="color: #000; width: 100%" data-bs-toggle="modal" data-bs-target="#modalCreateProduct">
                                            Create Products
                                        </button>
                                    </form>                               
                                    <!-- Formulario 3 -->
                                    <form class="dropdown-item">
                                        <button id="btnEditProduct" type="button" class="btn btn-primary bg-transparent border-0 text-black text-center" style="color: #000; width: 100%" data-bs-toggle="modal" data-bs-target="#modalEditProduct">
                                            Edit/Remove Product
                                        </button>
                                    </form>                               
                                </div>
                            </div>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>


        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->

        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="js/header.js"></script>
    </body>
</html>
