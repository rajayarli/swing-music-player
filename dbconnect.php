<?php
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$dbname = 'songs';
	
	session_start();
	
	if($mycon = mysqli_connect($host,$user,$pass)){
		if(mysqli_select_db($mycon,$dbname)){
			
		}else{
			echo 'Could not connect to db';
		}
	}else{
		echo 'Couldnot connect to server';
	}
	
?>