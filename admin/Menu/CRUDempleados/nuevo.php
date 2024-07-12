<?php
    require '../../config/Database.php';
    
    $db=new Database();
    $con = $db -> conectar();

?>
<?php include 'header.php'; ?>
<main>
    <div class="employee-container">
        <h2>Nuevo empleado</h2>
        <form id="employee-form" action="guarda.php" method="post" autocomplete="off">

            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>

            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>

            <div class="form-group">
                <label for="salario">Salario:</label>
                <input type="number" id="salario" name="salario" required>
            </div>

            <div class="form-group">
                <label for="telefono">Teléfono:</label>
                <input type="tel" id="telefono" name="telefono" required>
            </div>

            <div class="form-group">
                <label for="dni">DNI:</label>
                <input type="text" id="dni" name="dni" required>
            </div>

            <div class="form-group">
                <label for="cargo">Cargo:</label>
                <input type="text" id="cargo" name="cargo" required>
            </div>

            <div class="form-group">
                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="correo" required>
            </div>

            <!-- Botón "Guardar" --> 
            <button type="submit" class="save-button">Guardar</button>

            <!-- Botón "Cancelar" -->
            <button type="button" class="cancel-button" id="cancel-button">Cancelar</button> 

        </form>
    </div>
</main>


<?php require '../../footer.php'; ?>