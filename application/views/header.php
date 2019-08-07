<!DOCTYPE html> 
<html lang="en"> 
    <head> <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content=""> <meta name="author" content="FaberNainggolan"> 
        <title><?php  echo $title; ?></title> 
        <!-- Bootstrap core CSS --> 
        <link href="<?php echo base_url()?>Asset/Css/bootstrap.css" rel="stylesheet"> 
        <!-- Custom styles for this template --> 
        <link href="<?php echo base_url()?>Asset/Css/top-fixed-navbar.css" rel="stylesheet"> 
        <script src="<?php echo base_url()?>Asset/Js/jquery-3.1.0.js"></script>
        <link rel="stylesheet" href="<?php echo base_url()?>Asset/Css/jquery.dataTables.min.css">
        <script src="<?php echo base_url()?>Asset/Js/jquery.dataTables.min.js" type="text/javascript" charset="utf-8" async defer></script>
        <script src="<?php echo base_url()?>Asset/Js/global.js" type="text/javascript"></script>

        <script>
            $(document).ready( function () {
                $('.myTable').DataTable();
            } );
        </script>
    </head> 

    <body>
        
        <!-- Static navbar --> 
        <nav class="navbar navbar-default navbar-fixed-top"> 
            <div class="container">
                <div class="navbar-header"> 
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                    </span> <span class="icon-bar"></span> 
                <span class="icon-bar"></span> 
            </button>
                    <a class="navbar-brand" href="<?php echo base_url(); ?>home">SPK Penerima Beasiswa</a> 
        </div> 
        <div id="navbar" class="navbar-collapse collapse"> 
            <ul class="nav navbar-nav"> 
                <li><a href="<?php echo base_url() ?>home"><i class="glyphicon glyphicon-home"></i> Home</a></li> 
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Kriteria <span class="caret"></span></a> <ul class="dropdown-menu" role="menu">
                        <li><a href="<?php echo base_url() ?>kriteria">Kriteria</a></li>
                        <li><a href="<?php echo base_url() ?>nilaikriteria/form/add">Nilai Kriteria</a></li>
                        <li><a href="<?php echo base_url() ?>kriteria/perbandingan">Perbandingan Kriteria</a></li> 
                        <li><a href="<?php echo base_url() ?>pembobotan"">Pembobotan Kriteria AHP</a></li> 
                       
                    </ul> 
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Data Siswa <span class="caret"></span></a> <ul class="dropdown-menu" role="menu">
                        <li><a href="<?php echo base_url() ?>calonpenerima">Calon Penerima</a></li>
                        <li><a href="<?php echo base_url() ?>normalisasidata">Normalisasi Data Penerima</a></li>
                    </ul> 
                </li>
                <li><a href="<?php echo base_url() ?>perangkingan"><i class="glyphicon glyphicon-refresh"></i> Proses Perangkingan</a></li>
                <li><a href="<?php echo base_url() ?>hasilperangkingan"><i class="glyphicon glyphicon-list"></i> Hasil Perangkingan</a></li>
                <li><a href="<?php echo base_url() ?>laporan"><i class="glyphicon glyphicon-list"></i> Laporan</a></li>
               
                <li><a href="<?php echo base_url() ?>user"><i class="glyphicon glyphicon-wrench"></i>User</a></li>  
                   <li><a href="<?php echo base_url() ?>login/keluar"><i class="glyphicon glyphicon-exit"></i>Logout</a></li>

                
            </ul>
           
        </div>
        <!--/.nav-collapse --> 
    </div> 
</nav> 