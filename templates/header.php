<!DOCTYPE html>
<html>
<head>
	<title>TecMovil_CRUD</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="../css/jquery.mobile-1.4.5.min.css" rel="stylesheet">
	<link href="../css/jquery.mobile.structure-1.4.5.min.css" rel="stylesheet">
	<link href="../css/jquery.mobile.theme.css" rel="stylesheet">
	<script src="../scripts/jquery.min.js"></script>
	<script src="../scripts/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="page">
		<div data-role="header" data-theme="b">
			<h1>jQuery Mobile</h1>
			<div data-role="navbar">
				<ul>
				<?php if(!$dialog) { ?>
					<li><a href="../personas/read.php" data-icon="user">Personas</a></li>
					<li><a href="../paises/read.php" data-icon="location">Paises</a></li>
				<?php 
					  } else {
						  if(!$confirmar){
				 ?>
					<li><a href="../personas/create.php" data-icon="plus">Agregar</a></li>
                    <li>
                        <a href="../personas/update.php?p=<?php echo $id; ?>" data-icon="refresh">
                            Modificar
                        </a>
                    </li>
					<li>
						<a href="../personas/delete.php?p=<?php echo $id; ?>&c=true" 
							data-icon="delete" data-rel="dialog">
							Eliminar
						</a>
					</li>
				<?php }} ?>
				</ul>
			</div>
		</div>
		<div data-role="content">