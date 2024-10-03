function cargarCiudades() {
    let departamentoSeleccionado = document.getElementById("departamento").value;
    let ciudadDropdown = document.getElementById("ciudad");
    // Limpiar opciones actuales
    ciudadDropdown.innerHTML = "";
    // Mostrar el dropdown solo si se selecciona una clasificación
    if (departamentoSeleccionado !== "") {
        // Realizar solicitud Ajax para obtener las descripciones relacionadas
        let xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                // Parsear la respuesta JSON y agregar opciones al dropdown de descripciones
                let opciones = JSON.parse(this.responseText);
                opciones.forEach(function (opcion) {
                    let option = document.createElement("option");
                    option.value = opcion.id;
                    option.text = opcion.nombre;
                    ciudadDropdown.appendChild(option);
                });
            }
        };
        xmlhttp.open("GET", "../validaciones/obtenerciudad.php?departamento=" + departamentoSeleccionado, true);
        xmlhttp.send();
    } else {
        alert("Error al cargar las ciudades. Por favor, inténtelo de nuevo.");
    }
}
