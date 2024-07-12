<?php

require_once '../../Database.php';

$db = new Database2();
$con = $db->conectar();



$idProducto = isset($_POST['idProducto']) ? $_POST['idProducto'] : null;
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : null;
$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : null;
$existencias = isset($_POST['existencias']) ? $_POST['existencias'] : null;
$invminimo = isset($_POST['invminimo']) ? $_POST['invminimo'] : null;
$invmaximo = isset($_POST['invmaximo']) ? $_POST['invmaximo'] : null;
$costo = isset($_POST['costo']) ? $_POST['costo'] : null;
$precio = isset($_POST['precio']) ? $_POST['precio'] : null;
$descuento = isset($_POST['descuento']) ? $_POST['descuento'] : null;
$categoria = isset($_POST['categoria']) ? $_POST['categoria'] : null;


$sql= "UPDATE producto SET Nombre=?,Descripcion=?,idCategoria=?,Costo=?,PrecioVenta=?,descuento=?,Existencias=?,InvMinimo=?,InvMaximo=?
 WHERE idProducto = ?";
$stm = $con->prepare($sql);
if ($stm -> execute([$nombre,$descripcion,$categoria,$costo,$precio,$descuento,$existencias,$invminimo,$invmaximo])){
    //Subir imagen principal

    if($_FILES['imagen_principal']['error'] == UPLOAD_ERR_OK){
        $dir = '../../../../img/productos/'. $id . '/';
        $permitidos = ['jpeg','jpg'];

        $arregloImagen = explode('.',$_FILES['imagen_principal']['name']); 
        $extension = strtolower(end($arregloImagen));

        if(in_array($extension, $permitidos)){
            if(!file_exists($dir)){
                mkdir($dir, 0777, true);
            }
            $ruta_img = $dir . 'principal.' . $extension;
            if(move_uploaded_file($_FILES['imagen_principal']['tmp_name'], $ruta_img)){
                echo"El archivo se cargó correctamente.";
            }else{
                echo "Error al cargar el archivo";
            }
            
        } else{
            echo"Archivo no permitido";
        }
    }else{
        echo"No enviaste archivo";
    }

    //Subir otras imagenes

    if(isset($_FILES['otras_imagenes'])){
        $dir = '../../../../img/productos/'. $id . '/';
        $permitidos = ['jpeg','jpg'];

        if  (!file_exists($dir)){
            mkdir($dir, 0777, true);

        }
         
        $contador = 1;

        foreach($_FILES['otras_imagenes']['tmp_name'] as $key=> $tmp_name){
            $fileName=$_FILES['otras_imagenes']['name'][$key];

            $arregloImagen = explode('.',$fileName); 
            $extension = strtolower(end($arregloImagen));

            if(in_array($extension, $permitidos)){
                
                $ruta_img = $dir . $contador . '.' . $extension;

                if(move_uploaded_file($tmp_name, $ruta_img)){
                    echo"El archivo se cargó correctamente. <br>";
                }else{
                    echo "Error al cargar el archivo";
                }
            }
            $contador++;
        }
    }

}



?>