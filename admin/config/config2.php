<?php

define('SERVIDOR','bgdzpsteseh5rtu4ktzz-mysql.services.clever-cloud.com');
define('USUARIO','upvqeertk1vs3u4f');
define('PASSWORD','fMkPHobKmaI9Ql6Mnhc9');
define('BD','bgdzpsteseh5rtu4ktzz');

$servidor = "mysql:dbname=".BD.";host=".SERVIDOR;

try{
    $pdo = new PDO($servidor,USUARIO,PASSWORD,array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
    //echo "La conexión a la base de datos fue con exito";
}catch (PDOException $e){
    //print_r($e);
    echo "Error al conectar a la base de datos";
}

$URL = "http://localhost/Pag_rojas";

date_default_timezone_set("America/Caracas");
$fechaHora = date('Y-m-d H:i:s');


