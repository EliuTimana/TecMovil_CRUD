<?php 
	require '../config.php';
	require '../templates/header.php';
	
	$res = $db->query("CALL spGetPersonas(null);");
	
	if ($res->num_rows > 0){ ?>
	<ul data-role="listview" 
	data-inset="true" 
	data-autodividers="true" 
	data-filter="true" 
	data-filter-placeholder="Buscar"
	data-theme="c">
		<?php while ($item = $res->fetch_assoc()){ ?>
		  <li>
		  	<a href="detalle_persona.php?p=<?php echo $item['ID'] ?>&d=true" data-rel="dialog">
		  		<?php echo $item['NOMBRE']." ".$item['APELLIDOS']; ?>
		  	</a>
		  </li>
		<?php } ?>
	</ul>
<?php 
	} else { die('No se Encontraron Resultados...'); } 
	require '../templates/footer.php';	
?>
