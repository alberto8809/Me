<?php
 require ('lib/conexion.php');
class Ludoteca {
  private $id;
  private $nombre;
  private $cantidad;
  private $disponible;
  private $tipo_juego;
  

  const TABLA = 'Ludoteca';
  /*constructor de la clase user*/
  public function __construct($id,$nombre,$cantidad,$disponible,$tipo_juego) {
     $this->id = $id;
     $this->nombre = $nombre;
     $this->cantidad = $cantidad;
     $this->disponible = $disponible;
     $this->tipo_juego = $tipo_juego;
     

   }


   public static function Recover_Juego(){
   $conection = new Conexion();
   $consult = $conection->prepare('SELECT DISTINCT tipo_juego FROM ' . self::TABLA . ' WHERE disponible=1  ORDER BY tipo_juego ASC ');
   $consult->execute();
   $values = $consult->fetchAll();
   return $values;
   }


   public static function Recover_Name(){
   $conection = new Conexion();
   $consult = $conection->prepare('SELECT DISTINCT nombre FROM ' . self::TABLA . ' WHERE disponible=1  ORDER BY tipo_juego ASC ');
   $consult->execute();
   $values = $consult->fetchAll();
   return $values;
   }

   public static function Recover_Tipo($juego){
   $conection = new Conexion();
   $consult = $conection->prepare('SELECT DISTINCT nombre FROM ' . self::TABLA . ' WHERE tipo_juego="'.$juego.'" AND disponible=1 ORDER BY nombre ASC');
   $consult->execute();
   $values = $consult->fetchAll();
   return $values;
   }


   
    

}



 ?>
