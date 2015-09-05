<?php 
	require '../config.php';
	require '../templates/header.php';
	
	$res = $db->query("CALL spGetPaises;");
	
	if ($res->num_rows > 0){ ?>
	<ul data-role="listview" 
	data-inset="true" 
	data-autodividers="true" 
	data-filter="true" 
	data-filter-placeholder="Buscar"
	data-theme="c">
		<?php while ($item = $res->fetch_assoc()){ ?>
		  <li><a><?php echo $item['NOMBRE']; ?></a></li>
		<?php } ?>
	</ul>
<?php 
	} else { 
		die('No se Encontraron Resultados...'); 
	} 
	require '../templates/footer.php';	
?>
