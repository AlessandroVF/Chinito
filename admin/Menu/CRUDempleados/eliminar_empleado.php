<?php
require '../../../Database.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $idEmpleado = $_GET['id'];
    $db = new Database();
    $con = $db->conectar();

    // Realizar la consulta para eliminar el proveedor con el ID proporcionado
    $sql = $con->prepare("DELETE FROM empleado WHERE idEmpleado = ?");
    $sql->execute([$idEmpleado]);

    // Redireccionar de nuevo a la página de proveedores después de eliminar
    header("Location: Empleados.php");
    exit;
}
