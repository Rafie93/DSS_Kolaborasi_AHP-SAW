<?php $this->load->view('header'); ?> 

<div class="container"> 

    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Kriteria Perbandingan</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
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

    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Hasil Pembobotan</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('pesan') ?> </p> 
             <a href="<?php echo base_url() ?>pembobotan/proses" class="btn btn-sm btn-primary">
                <i class="glyphicon glyphicon-plus"></i> Proses Ulang Pembobotan</a><br> <br>

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
                        <th>Bobot</th>
                    </tr> 
                </thead> 
                <tbody> 
                    <?php if (empty($data_bobot)) { ?>
                        <tr> 
                            <td colspan="8">Data tidak ditemukan</td> 
                        </tr> 
                    <?php
                    } else {
                        $no = 0;
                        foreach ($data_bobot as $row) {
                            $no++;
                            ?> 
                            <tr> 
                                <td><?php echo $no ?></td>
                                <td><?php echo "(".$row->kriteria.") ". $row->nama_kriteria ?></td> 
                                <td><?php echo number_format($row->c1,2) ?></td> 
                                <td><?php echo number_format($row->c2,2) ?></td>
                                <td><?php echo number_format($row->c3,2) ?></td> 
                                <td><?php echo number_format($row->c4,2) ?></td>
                                <td><?php echo number_format($row->c5,2) ?></td>
                                <td><b><?php echo number_format($row->bobot,2) ?></b></td>
                            </tr> 
                            <?php
                        }
                    }
                    ?> 
                </tbody> 
            </table> 
        </div> 
    </div> <!-- /panel --> 

     <div class="panel panel-default">
        <div class="panel-heading">
            <b>Detail Hasil Perhitungan Matrix</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('pesan') ?> </p> 
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
                        <th>Hasil</th> 
                        <th>Total</th>
                        <<th>Eigen Vector</th>
                    </tr> 
                </thead> 
                <tbody> 
                    <?php if (empty($data_eigen)) { ?>
                        <tr> 
                            <td colspan="8">Data tidak ditemukan</td> 
                        </tr> 
                    <?php
                    } else {
                        $no = 0;
                        foreach ($data_eigen as $row) {
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
                                <td><b><?php echo number_format($row->hasil,2) ?></b></td>
                                <td><b><?php echo number_format($row->total_hasil,4) ?></b></td>
                                <td><b><?php echo number_format($row->bobot,2) ?></b></td>
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