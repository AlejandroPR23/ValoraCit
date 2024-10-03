<?php
if (isset($_SESSION['status'])) {
    $status = $_SESSION['status'];
    if ($status == 'agregado') {
        echo "<script>
                Swal.fire({
                    icon: 'success',
                    title: 'Exito',
                    text: 'El comentario se guardo exitosamente',
                    showConfirmButton: true,  
                    confirmButtonColor:'#62d9d9'
                });
            </script>";
    } elseif ($status == 'error') {
        echo "<script>
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'No se pudo guardar el comentario',
                showConfirmButton: true,  
                confirmButtonColor:'#62d9d9'
                });
            </script>";
    } 
}
unset($_SESSION['status']);
?>