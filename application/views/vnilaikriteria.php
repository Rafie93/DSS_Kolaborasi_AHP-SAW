<?php $this->load->view('header'); ?> 

<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default">
        <div class="panel-heading">
             <b>Nilai Kriteria AHP</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
            <a href="<?php echo base_url() ?>nilaikriteria/form/add" class="btn btn-sm btn-primary">
                <i class="glyphicon glyphicon-plus"></i>UPDATE NILAI KRITERIA PEMBANDING</a>

            <table class="table table-striped"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>Kriteria Pertama</th>
                        <th>Penilaian</th> 
                        <th>Kriteria Kedua</th>  
                    </tr> 
                </thead> 
                <tbody> 
                    <?php if (empty($data)) { ?>
                        <tr> 
                            <td colspan="8">Data tidak ditemukan</td> 
                        </tr> 
                    <?php
                    } else {
                        $no = 0;
                        foreach ($data as $row) {
                            $no++;
                            ?> 
                            <tr> 
                                <td><?php echo $no ?></td>
                                <td><?php echo $row->kode ?></td> 
                                 <td><?php echo $row->nama ?></td> 
                                <td><?php echo $row->jenis ?></td>
                               
                                </td> 
                            </tr> 
                            <?php
                        }
                    }
                    ?> 
                </tbody> 
            </table> 
        </div> 
    </div> <!-- /panel --> 
</div> <!-- /container --> 
<?php $this->load->view('footer'); ?> 