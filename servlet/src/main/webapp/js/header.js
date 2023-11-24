// Espera a que el DOM esté completamente cargado
document.addEventListener("DOMContentLoaded", function() {
    // Verifica si la URL actual no contiene "products.jsp"
    if (window.location.href.indexOf("products.jsp") === -1) {
        // Obtiene el elemento con el ID "divHide"
        var divHideElement = document.getElementById("divHide");

        // Agrega la clase "disabled" al elemento
        divHideElement.classList.add("disabled");
    }
});
