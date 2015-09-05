<?php
    require '../config.php';
    $confirmar = $_GET['c'];
    $id = $_GET['p'];
    require '../templates/header.php';

    if(isset($_GET['ok'])){
        if($_GET['ok']){
            $db->query("call spEliminarPersona($id);");
            header('Location: ../index.php');
        }
    }
?>
	<p>¿Está seguro que desea eliminar este registro?</p>
	
	<a href="?ok=true&p=<?php echo $id?>" data-role="button" data-theme="b">Eliminar</a>
	<a href="" data-rel="back" data-role="button">Cancelar</a>


			