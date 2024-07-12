<?php 
    
    require 'config/config2.php';

    require 'config/config.php';



?>

<?php include 'Menu/parte1.php'?>

<?php include 'headerside.php'; ?> <!-- SIDEBAR --> 



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1 class="m-0">Bienvenido al sistema Estefano Macotela </h1>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">

            Contenido del sistema
            <br><br>

            <div class="row">

                <div class="col-lg-3 col-6">
                    <div class="small-box bg-success">
                        <div class="inner">
                            
                            <h3>11</h3>
                            <p>Categorías Registrados</p>
                        </div>
                        <a href="<?php echo ADMIN_URL; ?>Menu/categorias/categorias.php">
                            <div class="icon">
                                <i class="fas fa-tags"></i>
                            </div>
                        </a>
                        <a href="" class="small-box-footer">
                            Más detalle <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>


                
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-info">
                        <div class="inner">
                            
                            <h3>2</h3>
                            <p>Empleados Registrados</p>
                        </div>
                        <a href="<?php echo ADMIN_URL; ?>Menu/CRUDempleados/empleados.php">
                            <div class="icon">
                                <i class="fas fa-address-card"></i>
                            </div>
                        </a>
                        <a href="" class="small-box-footer">
                            Más detalle <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-danger">
                        <div class="inner">
                        
                            <h3>11</h3>
                            <p>Ventas Registrados</p>
                        </div>
                        <a href="Menu/CRUDventas/ventas.php">
                            <div class="icon">
                                <i class="fa fa-shopping-cart"></i>
                            </div>
                        </a>
                        <a href=" " class="small-box-footer">
                            Más detalle <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
                

                <div class="col-lg-3 col-6">
                    <div class="small-box bg-primary">
                        <div class="inner">
                            
                            <h3>13</h3>
                            <p>Productos Registrados</p>
                        </div>
                        <a href="<?php echo ADMIN_URL; ?>Menu/CRUDproductos/productos.php">
                            <div class="icon">
                                <i class="fas fa-list"></i>
                            </div>
                        </a>
                        <a href="" class="small-box-footer">
                            Más detalle <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>




                <!-- 
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-dark">
                        <div class="inner">
                            
                            <h3>3</h3>
                            <p>Proveedores Registrados</p>
                        </div>
                        <a href="Menu/CRUDproveedores/proveedores.php">
                            <div class="icon">
                                <i class="fas fa-car"></i>
                            </div>
                        </a>
                        <a href=""  class="small-box-footer">
                            Más detalle <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                    --> 

            </div>

            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->





<?php include 'footerside.php'; ?> <!--SIDEBAR-->
<script src="<?php echo ADMIN_URL;?>Menu/menu.js"></script>
<?php     include  ('Menu/parte2.php'); ?>




</body>
</html>