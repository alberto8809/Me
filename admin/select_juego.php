<?php

require("class/ludoteca.php");    
$select_ = $_REQUEST['value'];
$values=Ludoteca::Recover_Tipo(utf8_decode($select_));
?>
	<option value="Escoge Juego ">Escoge Juego </option>
		<?php  foreach ($values as $value) {	?>
	<option value="<?php echo  utf8_encode($value['nombre']);?>"><?php echo  utf8_encode($value['nombre']);?></option>
		<?php 	}?>



