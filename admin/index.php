<?php   
        //error_reporting(0);
        
        require("class/ludoteca.php");       
        $juego=Ludoteca::Recover_Juego();
        $juegos=Ludoteca::Recover_Name();


 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">       
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>   
    

    <script type="text/javascript">
    $( document ).ready(function() {
         $("#select").on("change", function(){ 
      value =  $("#select").val();
      //alert(id_entidad);
      $.post("select_juego.php", { value: value }, function(data){
          $("#select2").html(data);
        
        });     
    
    });
  });

    </script>

    </head>
    <body>

<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

      <blockquote class="blockquote">
              <center><h2><p class="bg-info" id="exampleModalLongTitle">Registro</p></h2></center>
            </blockquote>
        
        
          
        
      </div>
      <div class="modal-body">
          <form class="form-horizontal" action="registro" method="post">
            <div class="form-group">
               <label class="control-label col-sm-2" for="nombre">Nombre:</label>
               <div class="col-sm-10">
                <input type="text" class="form-control"  name="nombre" required/>
              </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="apP">Apellido Paterno:</label>
               <div class="col-sm-10">
                <input type="text" class="form-control" name="apP" required/>
              </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="apM">Apellido Materno:</label>
               <div class="col-sm-10">
                <input type="text" class="form-control" name="apM" required/>
              </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="matricula">Matrícula:</label>
               <div class="col-sm-10">
                <input type="text" class="form-control" name="matricula" pattern="^[0|1|2|3|4|5|6|7|8|9]\d{9}$"  placeholder="10 dígitos" required/>
              </div>
            </div>
            <div class="form-group">
               <label class="control-label col-sm-2" for="lic">Licenciatura:</label>
               <div class="col-sm-10">
                <input type="text" class="form-control" name="lic" required/>
              </div>
            </div>
            <center><input type="submit" name="" value="Registrar" class="btn btn-primary"></center>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>



     <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <label class="navbar-brand">Ludoteca</label>  
           <div class="form-inline mt-2 mt-md-0">
            <a href="http://www.cua.uam.mx/" target="_target"><img align="right" src="../img/logo.png" width="" height="50px"></a>
           </div>
        </div>
    </nav>
   


       <div class="container-fluid">
        <div class="row">
          <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
           <ul class="nav nav-pills flex-column">
            <div id="navbar" class="navbar-collapse collapse">           
            <br><br><br><br><br><br><br><br><br><br><br><br>
              <h3>Seleccione Tipo de Juego</h3>
              <select class="form-control" id="select" name="select">
                <option value="Escoge Tipo de Juego ">Escoge Tipo de Juego </option>
                  <?php  foreach ($juego as $value) {?>
                  <option value="<?php echo utf8_encode($value['tipo_juego']); ?>"><?php echo utf8_encode($value['tipo_juego']); ?></option>
                  <?php }?>}
              </select>     
              <br><br><br><br>
              <h3>Escoge Juego</h3>
                 <select class="form-control" id="select2" name="select2" >
                   <option value="Escoge Juego ">Escoge Juego </option>
                       <?php  foreach ($juegos as $value) {?>
                        <option value="<?php echo utf8_encode($value['nombre']); ?>"><?php echo utf8_encode($value['nombre']); ?></option>
                        <?php }?>}                   
                 </select>             
                <br><br><br><br>
                <div class="form-group">
                 <label>Ingresar Matricula</label>
                  <form method="post" action="validaMatricula" >
                  <center>
                    <input class="form-control" type="text" name="matricula" pattern="^[0|1|2|3|4|5|6|7|8|9]\d{9}$" placeholder="21130662221"/><br><br>
                    <button class="btn btn-info btn-lg">Solicitar</button>
                    </center>
                  </form><br>
                  <center>
                  <button class="btn btn-info btn-lg" data-toggle="modal" id="modal" data-target="#exampleModalLong">Registarse</button></center>
                  
                  
                  </div>
                  </div>
                </ul>
              </nav>

           <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
            <blockquote class="blockquote">
              <center><h2><p class="bg-info">Noticias del momento</p></h2></center>
            </blockquote>
              
              
               <div id="myCarousel" class="carousel slide" data-ride="carousel">
      
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img class="first-slide" src="../img/serial.jpg" height="100px" alt="First slide">
                    </div>
                    <div class="item">
                      <img class="second-slide" src="../img/mixto.jpg" height="100px" alt="Second slide">
                    </div>
                    <div class="item">
                      <img class="third-slide" src="../img/torneo.jpg" alt="Third slide">          
                    </div>
                    <div class="item">
                      <img class="third-slide" src="../img/mixto.jpg" alt="Third slide">          
                    </div>
                </div>
              
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="icon-prev"></span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                  <span class="icon-next"></span>
                </a>  

            </div> 
                <br><br><br>
                <blockquote class="blockquote">
                  <center><h2><p class="bg-info">Juegos y Talleres Disponibles</p></h2></center>
                </blockquote>

                <div class="row">
                    <div class="col-xs-6 col-md-3">
                      <a href="#" class="thumbnail">
                        <img src="../img/futbol.jpg" alt="" >
                        <center><label>Fútbol</label></center>
                      </a>
                    </div>
                    <div class="col-xs-6 col-md-3">
                      <a href="#" class="thumbnail">
                        <img src="../img/futbol.jpg" alt=""  >
                        <center><label>Zumba</label></center>
                      </a>
                    </div>
                    <div class="col-xs-6 col-md-3">
                      <a href="#" class="thumbnail">
                        <img src="../img/futbol.jpg" alt="" >
                        <center><label>Yoga</label></center>
                      </a>
                    </div>
                    <div class="col-xs-6 col-md-3">
                      <a href="#" class="thumbnail">
                        <img src="../img/futbol.jpg" alt="Ajedrez" >
                        <center><label>Ajedrez</label></center>
                      </a>
                    </div>
              </div>

              </main>
        </div>       
      </div>
        
    </body>
</html>
