<?php $this->load->view('header'); ?> 

<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Perbandingan Kriteria Berpasangan</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
            <a href="<?php echo base_url() ?>nilaikriteria/proses_perbandingan" class="btn btn-sm btn-primary">
                <i class="glyphicon glyphicon-plus"></i>PROSES ULANG</a>

            <table class="table table-striped"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>Kriteria</th>
                        <th>C1</th> 
                        <th>C2</th> 
                        <th>C3</th> 
                        <th>C4</th>
                        <th>C5</th> 
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
                                <td><?php echo $row->kriteria ?></td> 
                                <td><?php echo number_format($row->c1,2) ?></td> 
                                <td><?php echo number_format($row->c2,2) ?></td>
                                <td><?php echo number_format($row->c3,2) ?></td> 
                                <td><?php echo number_format($row->c4,2) ?></td>
                                <td><?php echo number_format($row->c5,2) ?></td>
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