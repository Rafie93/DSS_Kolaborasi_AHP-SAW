<?php $this->load->view('header'); ?> 

<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default">
        <div class="panel-heading">
            <b>Daftar Calon Penerima Beasiswa</b>
        </div> 
        <div class="panel-body"> 
            <p><?php echo $this->session->flashdata('Pesan') ?> </p> 
             <a href="<?php echo base_url() ?>calonpenerima/form/add" class="btn btn-sm btn-primary">
                <i class="glyphicon glyphicon-plus"></i> Tambah Calon Penerima</a> 
              

                 <a href="<?php echo base_url() ?>calonpenerima/hapusall" class="btn btn-sm btn-danger" onclick="return confirm('Anda Yakin ingin menghapus semua data ini?')">
                <i class="glyphicon glyphicon-trash"></i> Hapus Semua Data</a> 
                <br><br>

            <table class="table table-striped myTable"> 
                <thead> 
                    <tr> 
                        <th>No</th> 
                        <th>NISN</th>
                        <th>Nama</th> 
                        <th>Jurusan</th>
                        <th>Nilai Rata</th>
                        <th>Penghasilan Orang Tua</th>
                        <th>Tanggungan Orang Tua</th>
                        <th>Pekerjaan Orang Tua</th>
                        <th>Alat Transportasi</th>
                        <th>Tahun</th> 
                        <th>Aksi</th> 
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
                                <td><?php echo $row->jurusan ?></td>
                                <td><?php echo $row->nilai_rata ?></td>
                                <td><?php echo number_format($row->penghasilan_ortu) ?></td>
                                <td><?php echo $row->tanggungan_ortu ?></td>
                                <td><?php echo $row->pekerjaan_ortu ?></td>
                                <td><?php echo $row->alat_transportasi ?></td>
                                <td><?php echo $row->tahun ?></td>
                                <td><a href="<?php echo base_url() ?>calonpenerima/form/edit/<?php echo $row->id ?>" class="btn btn-info btn-sm"><i class="glyphicon glyphicon-pencil"></i></a> 
                                <a href="<?php echo base_url() ?>calonpenerima/hapus/<?php echo $row->id ?>" class="btn btn-danger btn-sm" onclick="return confirm('Anda Yakin menghapus data ini?')"><i class="glyphicon glyphicon-trash"></i></a>
                                   
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