<?php
require '../../../Database.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $idProducto = $_GET['id'];
    $db = new Database();
    $con = $db->conectar();

    // Realizar la consulta para eliminar el proveedor con el ID proporcionado
    $sql = $con->prepare("DELETE FROM producto WHERE idProducto = ?");
    $sql->execute([$idProducto]);

    // Redireccionar de nuevo a la página de proveedores después de eliminar
    header("Location: productos.php");
    exit;
}
