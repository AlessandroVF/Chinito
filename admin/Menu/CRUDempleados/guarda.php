<?php 

require '../../../Database.php';
require '../../../config/config.php';

$db = new Database();
$con = $db ->conectar();

$nombre = $_POST['nombre'];
$apellido =$_POST['apellido'];
$salario = $_POST['salario'];
$telefono =$_POST['telefono'];
$dni =$_POST['dni'];
$cargo =$_POST['cargo'];
$correo =$_POST['correo'];


$sql = $con->prepare("INSERT INTO empleado (nombre,apellido,cargo,telefono,correo,dni,salario) 
VALUES (?,?,?,?,?,?,?)");


$sql->execute([$nombre, $apellido, $cargo, $telefono, $correo, $dni, $salario]);

?>