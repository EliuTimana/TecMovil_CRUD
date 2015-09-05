<?php 

	require '../config.php';
	$dialog = $_GET['d'];
	$id = $_GET['p'];
	require '../templates/header.php';
	

	$res = $db->query("CALL spGetPersonas($id);");
	if ($res->num_rows > 0){ ?>
		
	<ul data-role="listview" data-theme="c">
		<?php while ($item = $res->fetch_assoc()){ ?>
		  <li>
		  	<strong>Nombres:</strong>
		  	<?php echo $item['NOMBRE']; ?>
		  </li>
		  <li>
		  	<strong>Apellidos:</strong>
		  	<?php echo $item['APELLIDOS']; ?>
		  </li>
		  <li>
		  	<strong>Dirección:</strong>
		  	<?php echo $item['DIRECCION']; ?>
		  </li>
		  <li>
		  	<strong>Teléfono:</strong>
		  	<?php echo $item['TELEFONO']; ?>
		  </li>
		  <li>
		  	<strong>Email:</strong>
		  	<?php echo $item['EMAIL']; ?>
		  </li>
		  <li>
		  	<strong>Fecha de Nacimiento:</strong>
		  	<?php echo $item['FECHA_NACIMIENTO']; ?>
		  </li>
		  <li>
		  	<strong>País:</strong>
		  	<?php echo $item['PAIS']; ?>
		  </li>
		  	
		<?php } ?>
	</ul>
<?php 
	} else { die('No se Encontraron Resultados...'); } 
	require '../templates/footer.php';	
?>
