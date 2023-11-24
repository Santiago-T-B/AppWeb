<%-- 
    Document   : products
    Created on : 21/11/2023, 12:33:03 p. m.
    Author     : gotle
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Products"%>
<%@page import="database.CrudDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Products</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <header class="header">
            <%@ include file="header.jsp" %>
        </header>
        <!-- Section of Products-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"> 

                    <%
                        ArrayList<Products> listProducts = (ArrayList) request.getSession().getAttribute("listProducts");
                       
                        for(Products product: listProducts){
                            
                    %>
                    <div class="col mb-5">

                        <div class="card h-100">

                            <!-- Sale badge-->
                            <div class="badge text-white position-absolute" style="top: 0.5rem; right: 0.5rem; background-color: #0d6efd">ID: <%=product.getId()%></div>
                            <!-- Product image-->
                            <img style="max-width: 400px; max-height: 250px;" src="<%=product.getUrl()%>" alt="..." onerror="this.src='https://dummyimage.com/700x700/696969/ffffff.png&text=Image+Not+Found'; this.onerror=null;" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=product.getName()%></h5>
                                    <!-- Product price-->
                                    <span>$<%=product.getPrice()%></span><br>                                       
                                    <!-- Product description-->
                                    <div class="dropdown-divider"></div>
                                    <div style="text-align: left">
                                        <span><%=product.getDescription()%></span>                                    
                                    </div>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="d-flex justify-content-center">
                                    <div class="text-center">
                                        <a class="btn mt-auto" style="background-color: #009933; color: white;" href="#">
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                     
                    <% }%>                           
                </div>
            </div>
        </section>
        <%@ include file="modals.jsp" %>
        <footer class="footer">
            <%@ include file="footer.jsp" %>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
