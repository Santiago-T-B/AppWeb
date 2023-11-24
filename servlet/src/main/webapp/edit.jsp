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
        <title>Product | Edit Page</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column min-vh-100" style="margin: 0; padding: 0;">
        <header class="header">
            <%@ include file="header.jsp" %>
        </header>
        <main class="main" style="margin: 0; padding: 0; width: 100vw; display: flex; align-items: center; justify-content: center;">
            <!-- Section-->
            <section class="py-5" style="width: 100%;">

                <%
                    Products editProduct = new Products();
                    try {
                        editProduct = (Products) request.getSession().getAttribute("sendProductEdit"); 
                    } catch (Exception e){
                        System.out.println(e);
                    }    
                            
                %>
                <div class="container floating-box" style="display: flex; flex-direction: column; align-items: center;">
                    <div style="display: flex; justify-content: center; width: 90%">
                        <div class="mb-3" style="width: 100%; display: flex; justify-content: right"> 
                            <form action="ReceiveData" method="post" style="display: flex; flex-direction: column; align-items: flex-end; ">
                                <div style="height: 10px"></div>
                                <input type="submit" class="btn-close" value="" style="align-self: flex-end; margin-top: 10px; margin-right: 10px; background-color: #ff3333">
                            </form>
                        </div>
                    </div>
                    <div style="display: flex; justify-content: center;">
                        <div style="display: inline-block">
                            <h1 style="color: rgba(184,65,217,1); font-weight: bold">
                                Edit Product
                            </h1>
                        </div>
                    </div>

                    <div style="display: flex; justify-content: center; height: 20px"></div>
                    <!-- Id del producto -->
                    <div class="mb-3" style="width: 90%;">
                        <label for="editProductName" class="text-light">Product ID:</label>
                        <input type="number" id="editProductIDNO" name="idEditNo" style="width: 100%;" value="<%=editProduct.getId()%>" readonly >        
                    </div>
                    <!-- Nombre del producto -->
                    <div class="mb-3" style="width: 90%;">
                        <label for="editProductName" class="text-light">New Name:</label>
                        <input type="text" id="editProductName" name="nameEdit" style="width: 100%;" value="<%=editProduct.getName()%>" required>
                    </div>
                    <!-- Descripción del producto -->
                    <div class="mb-3" style="width: 90%;">
                        <label for="editProductDescription" class="text-light">New Description:</label>
                        <textarea id="editProductDescription" name="descriptionEdit" style="width: 100%;" required><%=editProduct.getDescription()%></textarea>
                    </div>
                    <!-- URL del producto -->
                    <div class="mb-3" style="width: 90%;">
                        <label for="editProductURL" class="text-light">New Image URL:</label>
                        <input type="text" id="editProductURL" name="urlEdit" style="width: 100%;" value="<%=editProduct.getUrl()%>" required>
                    </div>
                    <!-- Precio del producto -->
                    <div class="mb-3" style="width: 90%;">
                        <label for="editProductPrice" class="text-light">New Price:</label>
                        <input type="number" id="editProductPrice" name="priceEdit" style="width: 100%;" value="<%=editProduct.getPrice()%>" required>
                    </div>
                    <div style="height: 20px;"></div>
                    <div style="display: flex; justify-content: center; width: 90%">
                        <div class="mb-3" style="width: 100%; display: flex; justify-content: center">
                            <form action="DeleteProduct" method="post">
                                <input type="hidden" name="idDelete" value="<%=editProduct.getId()%>">
                                <input type="submit" class="btn" style="background-color: #ff3333; width: 100%; height: 100%; color:white; " value="Delete From DataBase">
                            </form>
                            <div style="width: 10%"></div>
                            <form action="EditProductA" method="post" onsubmit="updateHiddenFields()">
                                <input type="hidden" id="editProductID" name="idEditA" value="<%=editProduct.getId()%>" >
                                <input type="hidden" id="editProductNameHidden" name="nameEditA" value="">
                                <input type="hidden" id="editProductDescriptionHidden" name="descriptionEditA">
                                <input type="hidden" id="editProductPriceHidden" name="priceEditA">
                                <input type="hidden" id="editProductURLHidden" name="urlEditA">
                                <input type="submit" class="btn" style="background-color:#0d6efd ;width: 100%; height: 100%; color: white" value="Save Changes">                          
                            </form>
                        </div>  
                    </div>
                    <div style="height: 20px;"></div>

                </div>                    
            </section>
        </main>
        <footer class="footer">
            <%@ include file="footer.jsp" %>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>