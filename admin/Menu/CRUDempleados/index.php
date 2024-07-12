<?php
    require '../../config/Database.php';
    require './admin/header.php';
    
    $db=new Database();
    $con = $db -> conectar();

?>

<main>
    <div >
        <h1 class="mt-4">Empleados</h1>
        <button id="show-form-btn" class="show-form-button">Registrar Empleado</button>
    </div>
</main>


<?php include '../../footer.php'; ?>