<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Califica Ciudades</title>
    <link rel="shortcut icon" href="../img/logo.png" type="image/x-icon">
    <?php
    // Conexión a la base de datos
    include "../conexion.php";
    session_start();

    // Consulta para obtener departamentos
    $Departamento_con = $con->query('SELECT * FROM departamentos');
    if (!$Departamento_con) {
        die("Error en la consulta: " . $con->error);
    }
    ?>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- Sweet alert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="../styles/styles.css">
</head>

<body class="body-1">
    <?php
    include('./nav.php');
    ?>

    <main class="d-flex align-items-center justify-content-center p-5">
        <?php
        include('../validaciones/validaciones.php');
        ?>
        <form class="bg-form p-4 rounded-3" method="POST" action="../validaciones/guardar.php">
            <h3>Valora Una Ciudad</h3>
            <hr>
            <label for="departamento" class="form-label">Departamento:</label>
            <div class="mb-3">
                <select id="departamento" name="departamento" class="form-select-sm select-universal"
                    onchange="cargarCiudades()" required>
                    <option value="">Seleccione un departamento</option>
                    <?php
                    while ($Departamento_fi = $Departamento_con->fetch_assoc()) {
                        ?>
                        <option value="<?php echo $Departamento_fi['id'] ?>">
                            <?php echo $Departamento_fi['nombre'] ?>
                        </option>
                        <?php
                    }
                    ?>
                </select>
            </div>

            <label for="ciudad" class="form-label">Ciudad:</label>
            <div class="mb-3">
                <select id="ciudad" name="ciudad" class="form-select-sm select-universal">
                    <option disabled selected value="">Seleccione una ciudad</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="comentario" class="form-label">Comentario:</label>
                <textarea id="comentario" name="comentario" class="form-control"
                    placeholder="Escribe tu comentario aquí..."></textarea>
            </div>


            <button type="submit" class="btn btn-success btn-sm shadow shadow-3">Enviar Comentario</button>

        </form>
    </main>


    <script src="../JS/obtenerciudad.js"></script>

</body>

</html>