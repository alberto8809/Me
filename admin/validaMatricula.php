<?php

	require("class/user.php");
	$matricula=$_REQUEST['matricula'];	
	$user=User::Recover_All($matricula);
	$content=array();
	$i=0;
	foreach ($user as $value) {
			
		 $content[$i]=$value['matricula']."-".$value['nombre']."-".$value['apPaterno']."-".$value['apMaterno']."-".utf8_encode($value['licenciatura']);
		 $i++;

	}
	$valid = json_encode($user);
	

		if ($valid=="[]") {
			echo "<script> alert('Matrícula Invalida');window.location.href='../admin/index';</script>";		
			
		}else{
			foreach ($user as  $value) {
			
				 if ($value['matricula']=="125588") {
				 	$encript=base64_encode($matricula);			 		
			 		$con=serialize($content);
			 		$encript2=base64_encode($con);
				  	header("location:dynamic/admin?admin=$encript&all=$encript2");
				 }else if($value['matricula']==$matricula){
				 	/*se encripta la variable*/
			 		$encript=base64_encode($matricula);			 		
			 		$con=serialize($content);
			 		$encript2=base64_encode($con);
					header("location:dynamic/user?user=$encript&all=$encript2");
				 }
			}
		}
?>	