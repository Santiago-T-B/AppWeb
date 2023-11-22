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


        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Shop
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                                <!-- Formulario 1 -->
                                <form action="ReceiveData" method="get" class="dropdown-item">
                                    <input type="submit" class="custom-input-style" value="All Products">
                                </form>

                                <!-- Separador -->
                                <div class="dropdown-divider"></div>

                                <!-- Formulario 2 -->
                                <form class="dropdown-item">
                                    <button type="button" class="btn btn-primary bg-transparent border-0 text-black text-center" style="color: #000; width: 100%" data-bs-toggle="modal" data-bs-target="#modalProduct">
                                        Create Products
                                    </button>
                                </form>

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


        <div class="modal" id="modalProduct">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Create a Product</h5>
                        <button type="button" class="btn-close" style="background-color: #ff3333; opacity: 0.85" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <form action="CreateProduct" method="get">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Name</label>
                                <input type="text" class="form-control" id="recipient-name" name="nameModal">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Description</label>
                                <input type="text" class="form-control" id="recipient-name" name="descriptionModal">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Image Url</label>
                                <input type="text" class="form-control" id="recipient-name" name="urlModal">
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Price</label>
                                <input type="number" class="form-control" id="recipient-name" min="0" max="10000" name="priceModal">
                            </div>



                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">Create</button>                            
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- Header-->

        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Shop in style</h1>
                <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
            </div>
        </div>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
