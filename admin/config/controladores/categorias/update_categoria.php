<?php
$path = dirname(__FILE__);

require_once $path . '/../../config2.php';

if (isset($_GET['nombre_categoria']) && isset($_GET['id_categoria'])) {
    $nombre_categoria = $_GET['nombre_categoria'];
    $id_categoria = $_GET['id_categoria'];

$sentencia = $pdo->prepare("UPDATE categoria
    SET nombre_categoria=:nombre_categoria,
        fechaactualizacion_categoria=:fechaactualizacion_categoria 
    WHERE id_categoria = :id_categoria ");

$sentencia->bindParam('nombre_categoria',$nombre_categoria);
$sentencia->bindParam('fechaactualizacion_categoria',$fechaHora);
$sentencia->bindParam('id_categoria',$id_categoria);

}else{
    echo "Los parámetros nombre_categoria e id_categoria no están presentes en la solicitud.";

}
