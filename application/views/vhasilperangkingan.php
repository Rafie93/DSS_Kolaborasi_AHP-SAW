<?php $this->load->view('header'); ?> 

<div class="container"> 
  
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Data Hasil Perangkingan</b>
        </div> 
        <div class="panel-body"> 
           
            <table class="table table-striped myTable"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>Tahun</th>
                        <th>NISN</th>
                        <th>Nama</th> 
                        <th>Nilai Rata</th>
                        <th>Penghasilan Orang Tua</th>
                        <th>Tanggungan Orang Tua</th>
                        <th>Pekerjaan Orang Tua</th>
                        <th>Alat Transportasi</th>
                        <th>Hasil</th>
                        <th>Rangking</th> 
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
                                 <td><?php echo $row->tahun ?></td> 
                                <td><?php echo $row->nis ?></td> 
                                 <td><?php echo $row->nama ?></td> 
                                <td><?php echo number_format($row->nilai_rata,2) ?></td>
                                <td><?php echo $row->penghasilan_ortu ?></td>
                                <td><?php echo number_format($row->tanggungan_ortu) ?></td>
                                <td><?php echo $row->pekerjaan_ortu ?></td>
                                <td><?php echo $row->alat_transportasi ?></td>
                                <td><?php echo number_format($row->hasil,6) ?></td>
                                <td><?php echo $row->rangking ?></td>
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
            <b>Data Hasil Perangkingan 2</b>
        </div> 
        <div class="panel-body"> 
            
                    
            <table class="table table-striped myTable"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>Tahun</th>
                        <th>NISN</th>
                        <th>Nama</th> 
                        <th>Nilai Rata</th>
                        <th>Penghasilan Orang Tua</th>
                        <th>Tanggungan Orang Tua</th>
                        <th>Pekerjaan Orang Tua</th>
                        <th>Alat Transportasi</th>
                        <th>Hasil</th>
                        <th>Rangking</th> 
                    </tr> 
                </thead> 
                <tbody> 
                    <?php if (empty($datahasil)) { ?>
                        <tr> 
                            <td colspan="8">Data tidak ditemukan</td> 
                        </tr> 
                    <?php
                    } else {
                        $no = 0;
                        foreach ($datahasil as $row) {
                            $no++;
                            ?> 
                            <tr> 
                                <td><?php echo $no ?></td>
                                  <td><?php echo $row->tahun ?></td> 
                                <td><?php echo $row->nis ?></td> 
                                 <td><?php echo $row->nama ?></td> 
                               <td><?php echo number_format($row->nilai_rata,6) ?></td>
                                <td><?php echo number_format($row->penghasilan_ortu,6) ?></td>
                                <td><?php echo number_format($row->tanggungan_ortu,6) ?></td>
                                <td><?php echo number_format($row->pekerjaan_ortu,6) ?></td>
                                <td><?php echo number_format($row->alat_transportasi,6) ?></td>
                                <td><?php echo number_format($row->hasil,6) ?></td>
                                <td><?php echo $row->rangking ?></td>
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