function cargarCiudades() {
    let departamentoSeleccionado = document.getElementById("departamento").value;
    let ciudadDropdown = document.getElementById("ciudad");
    
    ciudadDropdown.innerHTML = "";

    if (departamentoSeleccionado !== "") {
        
        let xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
            
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
