<%-- 
    Document   : index
    Created on : 19/11/2023, 1:11:17 p. m.
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
        <card>
        <h1>Probar</h1>
        <form action="ConnectionDB" method="post">
            <p>Name:</p>
                <input name="name">
                <p>Description:</p>
                <input name="description">
                <p>Price:</p>
                <input type="number" name="price" min="0" max="100">
                <p></p>
                <p></p>
                <p></p>
                <input type="submit" value="Enviar Prueba">
            </form>
        <form action="ReceiveData" method="get">
            <p>Mostrar Productos</p>
            <input type="submit">
        </form>
        </card>
    </body>
</html>
