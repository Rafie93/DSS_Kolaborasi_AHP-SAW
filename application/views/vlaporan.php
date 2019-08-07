<?php $this->load->view('header'); ?> 

<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Silahkan Cetak Laporan</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
               <form action="<?php echo base_url() ?>laporan/laporanperangkingan" method="post">
                     
                      <div class="col-md-6">
                        <label for="">Pilih Tahun Data Yang Akan Dicetak</label>
                    </div>
                    <div class="col-md-6">
                         <select name="tahun" class="form-control" >
                            <option value="2019">2019</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                        </select>
                    </div><br><br>
                    <input type="submit" class="btn btn-sm btn-primary" value="LAPORAN HASIL PERANGKINGAN "> 

            </form>

         
        </div> 
    </div> <!-- /panel --> 
</div> <!-- /container --> 
<?php $this->load->view('footer'); ?> 