<?php
$con = new mysqli("localhost", "root", "12345912", "ValoraCity", 3307);
// $con=new mysqli('localhost','root','','ValoraCity');
if ($con->connect_error) {
    die("Error de conexión: " . $con->connect_error);
}
?>
