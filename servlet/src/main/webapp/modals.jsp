<%-- 
    Document   : modals
    Created on : 23/11/2023, 2:30:20 p. m.
    Author     : gotle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Modal para crear el producto -->
        <div class="modal fade" id="modalCreateProduct">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Create a Product</h5>
                        <button type="button" class="btn-close" style="background-color: #ff3333; opacity: 0.85" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <form action="CreateProduct" method="post">
                            <div class="form-group mb-3">
                                <label for="recipient-name" class="col-form-label">Name</label>
                                <input type="text" class="form-control" id="recipient-name" name="nameCreateModal" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="recipient-name" class="col-form-label">Description</label>
                                <textarea type="text" class="form-control" id="recipient-name" name="descriptionCreateModal" style="max-height: 60px; min-height: 60px" required></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label for="recipient-name" class="col-form-label">Image Url</label>
                                <input type="text" class="form-control" id="recipient-name" name="urlCreateModal" required>
                            </div>
                            <div class="form-group mb-3">
                                <label for="recipient-name" class="col-form-label">Price</label>
                                <input type="number" class="form-control" id="recipient-name" min="0" max="10000" name="priceCreateModal" required>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Create</button>                            
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal para editar el producto -->
        <div class="modal fade" id="modalEditProduct">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalProductEditLabel">Edit a Product</h5>
                        <button type="button" class="btn-close" style="background-color: #ff3333; opacity: 0.85" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Formulario para editar el producto -->
                        <form action="SendEditValues" method="post">
                            <!-- Id del producto -->
                            <div class="mb-3">
                                <label for="editProductName" class="form-label">Product ID:</label>
                                <input type="number" class="form-control" id="editProductID" name="idEditModal" required>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Select</button>                           
                            </div>                          
                        </form>
                    </div>
                </div>
            </div>
        </div>    
    </body>
</html>
