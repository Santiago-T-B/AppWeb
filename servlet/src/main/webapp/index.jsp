<%-- 
    Document   : index
    Created on : 20/11/2023, 9:37:29 p. m.
    Author     : gotle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column min-vh-100">
        <header class="header">
            <%@ include file="header.jsp" %>
            <!-- Header-->
            <div>
                <h1>
                    STGames Shop
                </h1>
            </div>
            <div class="typewriter-container" style="height: 300px; max-width: 100%; width: 100%; display: flex; justify-content: center; align-items: center; overflow: hidden;">
                <div class="text-center text-white typewriter-container" style="max-width:100%; width: 100%">
                    <div id="frase-container" class="frase-container"></div>
                </div>
            </div>
        </header>
        <main class="main">
            <div>
                <!-- Section-->
                <section class="py-5">
                    <div class="container px-4 px-lg-5 mt-5">
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"> 
                            <h1>Test</h1>                         
                        </div>
                    </div>
                </section>
            </div>
            <%@ include file="modals.jsp" %>
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

