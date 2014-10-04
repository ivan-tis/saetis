<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema de Apoyo a la Empresa TIS</title>

    <!-- Core CSS - Include with every page -->
    <link href="../Librerias/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Librerias/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- ComboBox estilizado ;) -->
    
    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="../Librerias/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="../Librerias/css/plugins/timeline/timeline.css" rel="stylesheet">
   

    <!-- SB Admin CSS - Include with every page -->
    <link href="../Librerias/css/sb-admin.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../Librerias/css/jquery-te-1.4.0.css">
    <script type="../Librerias/js/jquery.min.js"></script>
    

</head>

<body>

   
    <div id="wrapper">
       
        
		<!--<h2>design by <a href="#" title="flash templates">flash-templates-today.com</a></h2>-->
        
        
     
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.php">Inicio </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-files-o "></i> Documentos <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                            <a href="../Vista/subirarchivoasesor.php">Subir Documentos</a>
                                </li>
                                
                                <li>
                                    <a href="#">Publicaci&oacute;n Documentos <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        
                                        
                                        <li>
                                            <a href="publicar_asesor.php">Nueva Publicaci&oacute;n </a>
                                        </li>
                                        <li>
                                            <a href="../Controlador/publicaciones.php">Publicaciones </a>
                                        </li>
                                       
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                                <li>
                                    <a href="#">Recepci&oacute;n Documentos <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="documentos_recibidos.php">Documentos Recibidos</a>
                                        </li>
                                        <li>
                                            <a href="ConfiguracionFechasRecepcion.php" ><span class="fa fa-calendar-o"></span> Configuraci&oacute;n de Fechas para la Recepci&oacute;n de Documentos</a>
                                            
                                        </li>
         
                                    </ul>
                                </li>
                               
                            </ul>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        
                         <li>
                            <a href="#"><i class="fa fa-tasks fa-fw"></i> Tareas<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ordendecambioempresas.php">Emitir Orden de Cambio</a>
                                </li>
                                <li>
                                    <a href="notificacion_conformidad.php">Emitir Notificaci&oacute;n de Conformidad</a>
                                </li>
                                <li>
                                    <a href="#">Seguimiento Grupo Empresa <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="CrearModalidadEvaluacion.php"> Modalidad de Evaluaci&oacute;n </a>
                                            
                                        </li>
                                        <li>
                                            <a href="#">Modalidades de Calificaci&oacute;n</a>
                                        </li>
                                        <li>
                                            <a id="Seguimiento" href="../Vista/inicio_asesor.php">Seguimiento</a>
                                        </li>
  
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-warning fa-fw"></i> Notificaciones</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-building-o fa-fw"></i> Actividades<span class="fa arrow"></span></a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-question-circle fa-fw"></i> Ayuda <span class="fa arrow"></span></a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                    <!-- /#side-menu -->
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

<!-------------------------------------------NUEVAS PUBLICACIONES------------------------------------------>
<div id="page-wrapper">
           
    <form id = "publicar" method = "POST" action="../Controlador/publicar.php" onsubmit = "return validarCampos(this);">
        <div class ="form-horizontal">
                <div class="row">
              <div class="col-lg-12">
                <h2> Publicar Recursos</h2>
                 
                </div>
            </div><!-- /.row -->
               
                <!--Descripcion de la publicacion-->                 
                <fieldset class="campos-border">
                  <legend class="campos-border">Informaci&oacute;n</legend>
                    
                      <div class="form-group">
                      <label class="col-sm-2 control-label">Titulo</label>
                        <div class="col-xs-2">
                              <input id= "campoTitulo" type="text" name= "campoTitulo"  class="form-control"  data-toggle="tooltip" data-placement="right" title="T&iacute;tulo con el que se mostrar&aacute; el recurso">
                        </div>
                      </div>
                  </br>
                      <!--Campo de descripcion-->
                      <div class="form-group">
                        <label class="col-sm-2 control-label">Descripcion</label>
                        <div class="col-sm-8">
                        <textarea class="jqte-test" name="campoDescripcion" id="campoDescripcion" rows="4" style="overflow: auto;"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-sm-2 control-label">Adjuntar Recurso</label>
                        <div class="col-sm-8">
                        
                              <input id= "recurso" type="text" name= "recurso"  class="form-control"   data-toggle="tooltip" data-placement="right" title="Adjuntar un recurso" readonly="readonly">
                         
                        </textarea>
                        <br>
                        <a data-toggle="modal" class="link-dos" href="javascript:void('')" data-target="#myModal"><span class="glyphicon glyphicon-folder-open"></span>
                        Adjuntar</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="btn-primary" type="submit" value= "Publicar" id= "publicar"name="enviar" onClick()="update()"  >      </input> 
                       </div>
                        </div>
                           
                                <div class="form-group">
                                
                                <div class="col-sm-8">
                                </div>
                                </div>
                                
                                </fieldset>
                                </div>
    </form>
    <!--Modal para adjuntar recursos/documentos-->
                         
                        <div style="display: none;" aria-hidden="true" class="modal fade" id="myModal">
                        <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                        <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Buscador</h4>
                        </div>
                        <div class="modal-body" style="padding:0px; margin:0px; width: 560px;">
                        <iframe src="../Librerias/filemanager/dialogo.php?type=2&amp;field_id=recurso" style="overflow: scroll; overflow-x: hidden; overflow-y: scroll; " frameborder="0" height="500" width="896"></iframe>
                        </div>
                        </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->
     
                   <div class="form-group">
                        <div class="col-sm-8">
                         <button class="btn-primary" onclick="location='../Controlador/publicaciones.php'">Salir</button>
                    </div>
                                
                               
                
                <!-- /.col-lg-12 -->
             
            <!-- /.row -->
         
</div>
                                    
    <!-- /#wrapper -->

    <!--Comprobar campos-->
<script type="text/javascript">

   function validarCampos(formulario) {
        var permitidos = /^[0-9a-zA-Z\s/]+$/
        
        //Controlar campos vacios y caracteres invalidos
        if(formulario.campoTitulo.value.length==0) {  
            formulario.campoTitulo.focus();    
            alert('Por favor, ingresa un titulo');  
        return false;  
        }
        if(!formulario.campoTitulo.value.match(permitidos)) {
            
        alert('Caracteres no validos:_a,¿?()*,"" ');
        return false;
        }

        if(formulario.campoDescripcion.value.length >= 200) {
            formulario.campoDescripcion.focus();
            alert('Descripcion demasiado larga(max 200 caracteres)')
        return false;
        }
        if(formulario.campoDescripcion.value.length==0){
            formulario.campoDescripcion.focus();
            alert('Por favor, ingrese una descripcion');
        return false;
        }
        if(formulario.recurso.value.length==0){
            formulario.recurso.focus();
            alert('Por favor, ingrese un documento');
        return false;
        }


        return true; 
    
    }

    </script>


    <!-- Core Scripts - Include with every page -->
 
 

   <script src="../Librerias/js/jquery-1.10.2.js"></script>
    <script src="../Librerias/js/bootstrap.min.js"></script>
    <script src="../Librerias/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Dashboard -->
    <script src="../Librerias/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="../Librerias/js/plugins/morris/morris.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="../Librerias/js/sb-admin.js"></script>
    <script src="../Librerias/js/jquery-te-1.4.0.min.js"></script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <script src="../Librerias/js/demo/dashboard-demo.js"></script>
    <!-- Combo Box scripts -->
  
 
    <script>
  $('.jqte-test').jqte();
  
  // settings of status
  var jqteStatus = true;
  $(".status").click(function()
  {
    jqteStatus = jqteStatus ? false : true;
    $('.jqte-test').jqte({"status" : jqteStatus})
  });
</script>

</body>

</html>
