<?php
include('../conexion.php');

if (!empty($_POST['departamento']) && !empty($_POST['ciudad']) && !empty($_POST['comentario'])) {
    $Ciudad = $_POST['ciudad'];
    $Comentario = $_POST['comentario'];

    $stmt = $con->prepare("INSERT INTO comentarios (ciudad_id,comentario) VALUES (?,?)");
    $stmt->bind_param("is", $Ciudad, $Comentario);
    $stmt->execute();

    header('location:../vistas/index.php');
    session_start();
    $_SESSION['status'] = 'agregado';

} else {
    header('Location:../vistas/index.php');
    session_start();
    $_SESSION['status'] = 'error';
}
?>