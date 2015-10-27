<?php
	$HOST = '127.0.0.1:3307';
	$BASE = 'tec_movil_crud';
	$USER = 'root';
	$PASS = 'root';
	$dialog = false;
	$confirmar = false;
    
	$db = new mysqli($HOST, $USER, $PASS, $BASE);

	$db->set_charset('UTF8');
	
	if($db->connect_errno > 0){
		die('Ocurrio un error: '.$db->error);
	}
	