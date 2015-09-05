<?php
	require '../config.php';
	require '../templates/header.php';
	
	$res = $db->query("CALL spGetPaises;");
	
	$db->next_result();
	
	if(!empty($_POST)) {
		$p1 = "'".$_POST['nombre']."'";
		$p2 = "'".$_POST['apellidos']."'";
		$p3 = "'".$_POST['direccion']."'";
		$p4 = "'".$_POST['telefono']."'";
		$p5 = "'".$_POST['email']."'";
		$p6 = "'".$_POST['fecha_nacimiento']."'";
		$p7 = "'".$_POST['id_pais']."'";
		
		$db->query("CALL spAgregarPersona($p1, $p2, $p3, $p4, $p5, $p6, $p7);");
        
        header('Location: ../index.php');
	}
?>

<form method="post" autocomplete="off">
<ul data-role="listview" data-inset="false" data-theme="b">
	<li>
		<label for="nombre">Nombre</label>
		<input type="text" name="nombre" placeholder="Armando" required>
	</li>
	<li>
		<label for="apellidos">Apellidos</label>
		<input type="text" name="apellidos" placeholder="Paredes" required>
	</li>
	<li>
		<label for="direccion">Dirección</label>
		<input type="text" name="direccion" placeholder="3602 Egestas Avenue" required>
	</li>
	<li>
		<label for="telefono">Teléfono</label>
		<input type="text" name="telefono" placeholder="998544786" required>
	</li>
	<li>
		<label for="email">Email</label>
		<input type="email" name="email" placeholder="email@dominio.com" required>
	</li>
	<li>
		<label for="fecha_nacimiento">Fecha de Nacimiento</label>
		<input type="date" name="fecha_nacimiento" required>
	</li>
	<li>
		<label for="id_pais">País de Procedencia</label>
		<select data-native-menu="false" name="id_pais">
		<?php 
			if($res->num_rows > 0){
				while ($row = $res->fetch_assoc()){			
		?>
			<option value="<?php echo $row['ID'];?>">
				<?php echo $row['NOMBRE'];?>
			</option>
		<?php }} ?>
		</select>
	</li>
	<li>
		<input type="submit" value="Agregar" data-role="button">
	</li>
</ul>
</form>

<?php require '../templates/footer.php'; ?>