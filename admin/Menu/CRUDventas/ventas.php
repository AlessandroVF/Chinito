<?php
require '../../config/config2.php';
require '../../config/config.php';
require '../../config/Database.php';

include ('../../config/controladores/ventas/listado_venta.php');

include  ('../parte1.php'); 


?>


<?php include '../../headerside.php'?>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1 class="m-0">Listado de ventas</h1>
                </div><!-- /.col -->
                
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


<div class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Ventas registradas</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                </button>
                                
                            </div>

                        </div>

                        <div class="card-body" style="display: block;">
                            <div class="table table-responsive">
                                <table id="example1" class="table table-bordered table-striped table-sm">
                                    <thead>
                                    <tr>
                                        <th><center>Nro</center></th>
                                        <th><center>Nro de venta</center></th>
                                        <th><center>Codigo </center></th>
                                        <th><center>Metodo de Pago</center></th>
                                        <th><center>Total</center></th>
                                        <th><center>Fecha</center></th>
                                        <th><center>Estado</center></th>
                                        <th><center>Acciones</center></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php $contador = 0; ?>
                                        <?php foreach($ventas_datos as $venta_dato){?>
                                            <tr>
                                                <td><center><?php echo $contador = $contador + 1;?></center></td>
                                                <td><center><?php echo $venta_dato['id']?></center></td>
                                                <td><center><?php echo $venta_dato['id_transaccion']?></center></td>
                                                <td><center>Paypal</center></td>
                                                <td><center><?php echo $venta_dato['total']?></center></td>
                                                <td><center><?php echo $venta_dato['fecha']?></center></td>
                                                <td><center><?php echo $venta_dato['status']?></center></td>
                                                <td><center>
                                                    <div class="btn-group">
                                                        <a href="show.php?id=<?php echo $venta_dato['id'];?>&id_cliente=<?php echo $venta_dato['id_cliente'];?>" type="button" class="btn btn-info btn-sm"><i class="fa fa-eye"></i> </a>
                                                        <a href="delete.php?id=<?php echo $venta_dato['id'];?>" type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i> </a>
                                                    </div>
                                                </td></center>
                                            </tr>
                                       <?php } ?>
                                     </tbody>
                                    </tfoot>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->



<?php include ('../parte2.php'); ?>

<script src="<?php echo ADMIN_URL;?>Menu/menu.js"></script>


<script>
    $(function () {
        $("#example1").DataTable({
            "pageLength": 5,
            "language": {
                "emptyTable": "No hay información",
                "info": "Mostrando _START_ a _END_ de _TOTAL_ Ventas",
                "infoEmpty": "Mostrando 0 a 0 de 0 Ventas",
                "infoFiltered": "(Filtrado de _MAX_ total Ventas)",
                "infoPostFix": "",
                "thousands": ",",
                "lengthMenu": "Mostrar _MENU_ Ventas",
                "loadingRecords": "Cargando...",
                "processing": "Procesando...",
                "search": "Buscador:",
                "zeroRecords": "Sin resultados encontrados",
                "paginate": {
                    "first": "Primero",
                    "last": "Ultimo",
                    "next": "Siguiente",
                    "previous": "Anterior"
                }
            },
            "responsive": true, "lengthChange": true, "autoWidth": false,
            buttons: [{
                extend: 'collection',
                text: 'Reportes',
                orientation: 'landscape',
                buttons: [{
                    text: 'Copiar',
                    extend: 'copy',
                }, {
                    extend: 'pdf'
                },{
                    extend: 'csv'
                },{
                    extend: 'excel'
                },{
                    text: 'Imprimir',
                    extend: 'print'
                }
                ]
            },
                {
                    extend: 'colvis',
                    text: 'Visor de columnas',
                    collectionLayout: 'fixed three-column'
                }
            ],
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
</script>

</script>