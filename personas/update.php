<?php
	require '../config.php';
	require '../templates/header.php';
	
    if(isset($_GET['p'])){
        
        $id = $_GET['p'];

        $per = $db->query("CALL spGetPersonas($id);");

        if($per->num_rows > 0){
            $p = $per->fetch_assoc();
        }

        $db->next_result();

        $res = $db->query("CALL spGetPaises;");
        
    }else{
        header('Location: ../index.php');
    }
    
    if(!empty($_POST)) {
        $p1 = "'".$_POST['nombre']."'";
        $p2 = "'".$_POST['apellidos']."'";
        $p3 = "'".$_POST['direccion']."'";
        $p4 = "'".$_POST['telefono']."'";
        $p5 = "'".$_POST['email']."'";
        $p6 = "'".$_POST['fecha_nacimiento']."'";
        $p7 = "'".$_POST['id_pais']."'";
        $p8 = "'".$_POST['id']."'";

        $db->query("CALL spActualizarPersona($p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8);");
        
        header('Location: ../index.php');
        
    }
?>

<form method="post" autocomplete="off">
<ul data-role="listview" data-inset="false" data-theme="b">
    <input type="hidden" name ="id" value="<?php echo $id?>">
	<li>
		<label for="nombre">Nombre</label>
        <input type="text" name="nombre" placeholder="Armando" required value="<?php echo $p['NOMBRE'];?>">
	</li>
	<li>
		<label for="apellidos">Apellidos</label>
		<input type="text" name="apellidos" placeholder="Paredes" required value="<?php echo $p['APELLIDOS'];?>">
	</li>
	<li>
		<label for="direccion">Dirección</label>
		<input type="text" name="direccion" placeholder="3602 Egestas Avenue" required value="<?php echo $p['DIRECCION'];?>">
	</li>
	<li>
		<label for="telefono">Teléfono</label>
		<input type="text" name="telefono" placeholder="998544786" required value="<?php echo $p['TELEFONO'];?>">
	</li>
	<li>
		<label for="email">Email</label>
		<input type="email" name="email" placeholder="email@dominio.com" required value="<?php echo $p['EMAIL'];?>">
	</li>
	<li>
		<label for="fecha_nacimiento">Fecha de Nacimiento</label>
		<input type="date" name="fecha_nacimiento" required value="<?php echo $p['FECHA_NACIMIENTO'];?>">
	</li>
	<li>
		<label for="id_pais">País de Procedencia</label>
		<select data-native-menu="false" name="id_pais">
		<?php 
			if($res->num_rows > 0){
				while ($row = $res->fetch_assoc()){
		?>
            <option 
                value="<?php echo $row['ID'];?>" 
                <?php if($p['PAIS'] == $row['NOMBRE']) { echo "selected";} ?>>
				<?php echo $row['NOMBRE'];?>
			</option>
		<?php }} ?>
		</select>
	</li>
	<li>
		<input type="submit" value="Actualizar" data-role="button">
	</li>
</ul>
</form>

<?php require '../templates/footer.php'; ?>