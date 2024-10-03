<?php
include '../conexion.php';

$departamento_seleccionado = $_GET['departamento'];

$sql = "SELECT id, nombre FROM ciudades WHERE departamento_id IN (SELECT id FROM departamentos WHERE id = $departamento_seleccionado)";
$result = $con->query($sql);


$ciudades = array();
while ($row = $result->fetch_assoc()) {
    $ciudades[] = $row;
}

echo json_encode($ciudades);
$con->close();
?>