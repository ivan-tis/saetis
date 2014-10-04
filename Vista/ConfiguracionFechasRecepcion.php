<?php
    
    error_reporting (5); 	
    include '../Modelo/conexion.php';
    include 'forms/actions/seleccionarDocumentoConfiguracionFechas.php';
  
?>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema de Apoyo a la Empresa TIS</title>

    <!-- Core CSS - Include with every page -->
    <link href="../Librerias/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Librerias/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="../Librerias/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="../Librerias/css/plugins/timeline/timeline.css" rel="stylesheet">
   
    
    <link rel="stylesheet" type="text/css" media="all" href="../Librerias/calendario/daterangepicker-bs3.css" />
     <script type="text/javascript" src="../Librerias/js/jquery.min.js"></script> 
      <script type="text/javascript" src="../Librerias/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="../Librerias/calendario/moment.js"></script>
      
      <script type="text/javascript" src="../Librerias/calendario/daterangepicker.js"></script>

    <!-- SB Admin CSS - Include with every page -->
    <link href="../Librerias/css/sb-admin.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="../Librerias/calendario2/jquery.datetimepicker.css"/>
    <script type="text/javascript" src="js/validacionCamposFecha.js"></script>
    <script type="text/javascript">
      
    </script>
</head>

<body>

   
    <div id="wrapper">
       
        
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
                                            <a href="../Vista/publicar_asesor.php">Nueva Publicaci&oacute;n </a>
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
                                            <a id="Seguimiento" href="#">Seguimiento</a>
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
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header"  > Configurar  Fechas de Recepci&oacute;n de Documentos </h2>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                  <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default" id="configuracionFechas">
                        <div class="panel-heading">
                            <label class=" text-warning" for="descripcionDocumento">Seleccionar un  Documento a Recepcionar para realizar la configuraci&oacute;n de la Fecha </label>
                       
                        
                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            
                            <!-- Button trigger modal -->
                             
                                 
                            <form  method="POST" name="formulario" id="formulario" action="forms/actions/configurarFechaRecepcionCO.php" > 
                            
                        <!--<form id="form1" name="form1" method="post" action="< php  >">-->
                                <p>
                                    <label class="default" > Seleccione el documento al que desea modificar el per&iacute;odo de entrega</label>
                                  </p>
                                  <select class="form-control    h1 " id="documentoRequerido" name="documentoRequerido"  >
                                    <option  class="form-control selected">
                                    Seleccione el documento a Modificar
                                    </option>

                                    <?php
                                     $idDocumento="";
                                        while($var1 =  mysql_fetch_array($a)){

                                            echo "<option>".$var1[0]."</option>";



                                        }
                                        $con->cerrarConexion();
                                    ?>

                                </select>
                        
                                <p>
                                  <label for="fechaInicioE"></label>
                                  </p>
                                  <div class="row show-grid">
                                      <div class="col-md-6">
                                            <label class="default" for="fechaInicioE">Fecha Inicio de  Entrega</label>
                                            <label>
                                              <input class ="form-control" placeholder="AAAA-MM-DD" type="text" name="fechaInicioE" id="fechaInicioE" readonly="readonly" disabled="true" />
                                            </label>
                                        </div>
                                      <div class="col-md-6">
                                            <label class="default">
                                               Hora Inicio de Entrega:<span id="sprytextfield1"></label>
                                            <label for="horaInicioE">
                                            <input  class ="form-control" placeholder="HH:MM"  type="text" name="horaInicioE" id="horaInicioE"  readonly="readonly" disabled="true"/>
                                            </label>
                                        </div>
                                        
                                  </div> 
                                 
                                        
                                  <div class="row show-grid">
                                      <div class="col-md-6">
                                          <label class="default" for="fechaFinalE">Fecha Final de Entrega</label>
                                        <label>
                                          <input  class ="form-control" placeholder="AAAA-MM-DD"  type="text" name="fechaFinalE" id="fechaFinalE" readonly="readonly" disabled="true" />
                                        </label>
                                      </div>
                                       <div class="col-md-6">
                                        <label class="default">
                                            Hora Final de Entrega :<td><span id="sprytextfield2"></label>
                                        <label for="horaLimite">
                                        <input  class ="form-control"  placeholder="HH:MM" type="text" name="horaFinalE" id="horaFinalE" readonly="readonly" disabled="true" />
                                        </label>
                                        </div>
                                  </div>
                                  <p>&nbsp;</p>
                                  <p>
                                      <input type="submit" class="btn btn-primary   " name="aceptarFecha" id="aceptarFecha" value="Aceptar" data-toggle="modal" data-target="#myModal"/>
                                      
                                      
                                      
                                      <input type="reset"class="btn btn-default" name="btnVover2" id="btnVover2" value="Limpiar Formulario" />
                                  </p>
                            
                        
                        </form>    
                            <?php
                                 
                                    include 'forms/actions/configurarFechaRecepcionCO.php';
                                 error_reporting (5); 	
                                
                                 $txtfIni=$fechaIniRegistrado;
                                 $txthIni=$horaIniRegistrado;  
                                 $txtfFin=$fechaFinRegistrado; 
                                 $txthFin=$horaFinRegistrado; 
                                /** echo $txtfIni;
                                 echo $txthIni;
                                 echo $txtfFin;
                                 echo $txthFin;
                                **/
                            ?>     
                            <script type="text/javascript">
                            
                                
                                        
                                        var txtFecIni= "<?php echo $txtfIni; ?>";
                                        var txtHorIni= "<?php echo $txthIni; ?>";
                                        var txtFecFin= "<?php echo $txtfFin; ?>";
                                        var txtHorFin= "<?php echo $txthFin; ?>";
                            $('#documentoRequerido').on('change',function(e){
                                    
                                e.preventDefault(); 

                                
                                                    
                                /**$('#fechaInicioE').val(txtFecIni);
                                $('#horaInicioE').val(txtHorIni);
                                $('#fechaFinalE').val(txtFecFin);
                                $('#horaFinalE').val(txtHorFin);**/
                            });           
                            </script>
                            <script type="text/javascript" src="../Librerias/calendario2/jquery.js"></script>
                            <script type="text/javascript" src="../Librerias/calendario2/jquery.datetimepicker.js"></script>
                            <script type="text/javascript">
                                  
    
                                    /**
                                    $('#fechaFinalE').on('click', function(){
                                        var x = $('#fechaInicioE').val();
                                            $.getScript('js/validacionCamposFecha.js',function(){
                                                evaluarFecha2(x);
                                              });
                                    });
                                    $('#documentoRequirido').on('OnChange', function(){
                                        
                                            alert('hola');
                                            $.getScript('js/validacionCamposFecha.js',function(){
                                            
                                                
                                                activarCampos();
                                              });
                                    });**/
                                            
                                    
                                    
                            </script>
                            
                            
                            
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                
            </div>
                    
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
                
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
   <!-- <script src="js/jquery-1.10.2.js"></script>-->
   
    <script src="../Librerias/js/bootstrap.min.js"></script>
    <script src="../Librerias/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- Page-Level Plugin Scripts - Dashboard -->
    <script src="../Librerias/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="../Librerias/js/plugins/morris/morris.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script src="../Librerias/js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    <script src="../Librerias/js/demo/dashboard-demo.js"></script>

</body>

</html>


