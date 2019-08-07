<?php $this->load->view('header'); ?> 

<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Data Calon Penerima Beasiswa Ternormalisasi</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
               <form action="<?php echo base_url() ?>normalisasidata/proses" method="post">
                     <input type="submit" class="btn btn-sm btn-primary" value="Proses Normalisasi"> 
                      <a href="<?php echo base_url() ?>normalisasidata/hapusall" class="btn btn-sm btn-danger" onclick="return confirm('Anda Yakin ingin menghapus semua data ini?')">
                    <i class="glyphicon glyphicon-trash"></i> Hapus Semua Data</a> 
                
                    <br><br>

                      <div class="col-md-6">
                        <label for="">Pilih Tahun Data Normalisasi</label>
                    </div>
                    <div class="col-md-6">
                         <select name="tahun" class="form-control" >
                            <option value="2019">2019</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                        </select>
                    </div>

            </form>

            <table class="table table-striped myTable"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>NISN</th>
                        <th>Nama</th> 
                        <th>Nilai Rata</th>
                        <th>Penghasilan Orang Tua</th>
                        <th>Tanggungan Orang Tua</th>
                        <th>Pekerjaan Orang Tua</th>
                        <th>Alat Transportasi</th>
                        <th>Tahun</th> 
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
                                <td><?php echo $row->nis ?></td> 
                                 <td><?php echo $row->nama ?></td> 
                                <td><?php echo number_format($row->nilai_rata,6) ?></td>
                                <td><?php echo number_format($row->penghasilan_ortu,6) ?></td>
                                <td><?php echo number_format($row->tanggungan_ortu,6) ?></td>
                                <td><?php echo number_format($row->pekerjaan_ortu,6) ?></td>
                                <td><?php echo number_format($row->alat_transportasi,6) ?></td>
                                <td><?php echo $row->tahun ?></td>
                              
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