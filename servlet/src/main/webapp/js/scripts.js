// Verificar si estamos en la página products.jsp
if (window.location.href.indexOf("index.jsp") !== -1) {
    const frases = [
        "La Mejor Tienda de Video Juegos",
        "¡Adquiere el Juego de tu Preferencia Aquí!",
        "¡Los Mejores Juegos al Mejor Precio!"
    ];

    let currentFraseIndex = 0;
    let currentCharacterIndex = 0;
    let isDeleting = false;

    function typeFrase() {
        const frase = frases[currentFraseIndex];
        const fraseContainer = document.getElementById('frase-container');

        if (currentCharacterIndex < frase.length && !isDeleting) {
            fraseContainer.innerHTML += frase.charAt(currentCharacterIndex);
            currentCharacterIndex++;
        } else if (currentCharacterIndex >= frase.length && !isDeleting) {
            isDeleting = true;
            fraseContainer.style.borderRight = 'none'; // Ocultar la barra al borrar
        } else if (currentCharacterIndex > 0 && isDeleting) {
            fraseContainer.innerHTML = frase.substring(0, currentCharacterIndex - 1);
            currentCharacterIndex--;
        } else {
            isDeleting = false;
            currentFraseIndex = (currentFraseIndex + 1) % frases.length;
            fraseContainer.style.borderRight = '2px solid #000'; // Mostrar la barra al escribir
        }

        const typingSpeed = isDeleting ? 100 : 150; // Ajusta la velocidad de escritura y borrado aquí
        setTimeout(typeFrase, typingSpeed);
    }

    window.onload = function () {
        typeFrase();
    };
}

function updateHiddenFields() {
    updateField("editProductName", "editProductNameHidden");
    updateField("editProductDescription", "editProductDescriptionHidden");
    updateField("editProductURL", "editProductURLHidden");
    updateField("editProductPrice", "editProductPriceHidden");
}

function updateField(inputId, hiddenId) {
    var input = document.getElementById(inputId);
    var hiddenInput = document.getElementById(hiddenId);

    if (input && hiddenInput) {
        hiddenInput.value = input.value;
    } else {
        console.error("Error: No se encontró el elemento con ID: " + inputId + " o " + hiddenId);
    }
}