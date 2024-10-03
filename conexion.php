<?php
$con=new mysqli('localhost','root','','ValoraCity');
if ($con->connect_error) {
    die("Error de conexión: " . $con->connect_error);
}
?>
