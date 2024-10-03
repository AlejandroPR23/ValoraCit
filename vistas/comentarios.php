<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentarios</title>
    <?php
    include "../conexion.php";
    ?>
    <link rel="shortcut icon" href="../img/logo.png" type="image/x-icon">
    <!-- Libreria animación titulo -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
        integrity="sha512-c42qTSw/wPZ3/5LBzD+Bw5f7bSF2oxou6wEb+I/lqeaKV5FDIfMvvRp772y4jcJLKuGUOpbJMdg/BTl50fJYAw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- jQuery CDN  -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <!-- datatables CDN  -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />
    <script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="../styles/styles.css">
</head>

<body>
    <?php
    include('./nav.php')
        ?>
    <main class="mt-5">

        <div class="container-fluid text-center">
            <h1 class=" h1-personal animate__animated animate__fadeInDown animate__slow h1-universal mt-3">Lista de Comentarios</h1>
        </div>
        <br>
        <div class="container">

            <div class="table-responsive">
                <table id="comentario" class="table table-bordered table-striped table-hover shadow_table">
                    <thead class="table-success align-middle">
                        <tr>
                            <th>Departamento</th>
                            <th>Ciudad</th>
                            <th>Comentario</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $comentarios = $con->query("SELECT CO.comentario as 'comentario',CI.nombre as 'ciudad',De.nombre 'departamento' from comentarios CO INNER JOIN ciudades CI ON CO.ciudad_id=Ci.id INNER JOIN departamentos DE ON CI.departamento_id=DE.id; ");
                        foreach ($comentarios as $com) {
                            ?>
                            <tr>
                                <td><?php echo $com['departamento']; ?></td>
                                <td><?php echo $com['ciudad']; ?></td>
                                <td><?php echo $com['comentario']; ?></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <script src="../JS/datatable.js"></script>
</body>

</html>