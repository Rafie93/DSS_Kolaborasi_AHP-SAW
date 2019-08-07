<?php $this->load->view('header'); ?> 

<?php
if ($aksi == 'aksi_add') {
    $id = "";
    $nis = "";
    $nama = "";
    $jurusan = "";
    $c1 = "";
    $c2 = "";
    $c3 = "";
    $c4 = "";
    $c5 = "";
    $tahun = "";
} else {
    foreach ($qdata as $rowdata) {
        $id = $rowdata->id;
        $nis = $rowdata->nis;
        $nama = $rowdata->nama;
        $jurusan = $rowdata->jurusan;
        $c1 = $rowdata->nilai_rata;
        $c2 = $rowdata->penghasilan_ortu;
        $c3 = $rowdata->tanggungan_ortu;
        $c4 = $rowdata->pekerjaan_ortu;
        $c5 = $rowdata->alat_transportasi;
        $tahun = $rowdata->tahun;
    }
}
?> 
<div class="container"> 
    <!-- Main component for a primary marketing message or call to action --> 
    <div class="panel panel-default"> 
        <div class="panel-heading">
            <b>Form Calon Penerima Beasiswa</b>
        </div> 
        <div class="panel-body"> 
            <?php echo $this->session->flashdata('Pesan'); ?> 
            <form action="<?php echo base_url() ?>calonpenerima/form/<?php echo $aksi ?>" method="post">
                <table class="table table-striped">
                    <tr> 
                        <td style="width:15%;">Tahun</td> 
                        <td> 
                            <div class="col-sm-2"> 
                                <input type="hidden" name="id" class="form-control" value="<?php echo $id; ?>"> 
                                 <select name="tahun" required class="form-control">
                                    <option value="2019">2019</option>
                                    <option value="2018">2018</option>
                               </select>
                            </div> 
                        </td> 
                    </tr> 

                    <tr> 
                        <td style="width:15%;">NIS</td> 
                        <td> 
                            <div class="col-sm-3"> 
                                <input type="text" name="nis" required class="form-control" value="<?php echo $nis; ?>"> 
                            </div> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td>Nama</td> 
                        <td> 
                            <div class="col-sm-6"> 
                                <input type="text" name="nama" required class="form-control" value="<?php echo $nama ?>"> 
                            </div>
                        </td>
                    </tr> 
                    <tr>
                        <td>Jurusan</td> 
                        <td> 
                            <div class="col-sm-6"> 
                               <input type="text" name="jurusan" required class="form-control" value="<?php echo $jurusan ?>"> 
                            </div> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td>Nilai Rata-Rata</td> 
                        <td> 
                            <div class="col-sm-4"> 
                                <input type="text" onkeyup="FormatCurrency(this)"  required name="c1" class="form-control" value="<?php echo $c1 ?>" placeholder="contoh : 85.8"> 
                            </div> 
                        </td>
                    </tr> 
                    <tr> 
                        <td>Penghasilan Orang Tua</td> 
                        <td> 
                             <div class="col-sm-4">
                            <input type="text" required name="c2" onkeyup="FormatCurrency(this)"  class="form-control" value="<?php echo $c2 ?>" placeholder="contoh : 500000"> 

                            </div>
                        </td>
                    </tr> 
                    <tr> 
                        <td>Tanggungan Orang Tua</td> 
                        <td> 
                            <div class="col-sm-2"> 
                                <input required type="text" onkeyup="FormatCurrency(this)"  name="c3" placeholder="minimal = 1" class="form-control" value="<?php echo $c3 ?>"> 
                            </div> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td>Pekerjaan Orang Tua</td> 
                        <td> 
                             <div class="col-sm-4">
                               <select name="c4" class="form-control" required>
                                 <?php if ($c4!=''){?>
                                     <option value="<?php echo $c4 ?>" selected><?php echo $c4 ?></option>
                                  <?} ?>
                                  <option value="Sudah Meninggal">Sudah Meninggal (1)</option>
                                   <option value="Petani">Petani (2)</option>
                                   <option value="Nelayan">Nelayan (2)</option>
                                   <option value="Wiraswasta">Wiraswasta (3)</option>
                                   <option value="Wirausaha">Wirausaha (3)</option>
                                    <option value="PNS">PNS (4)</option>
                                   <option value="Pedagang Besar">Pedagang Besar (5)</option>
                                   
                               </select>
                            </div>
                        </td> 
                    </tr> 
                      <tr> 
                    <td>Alat Transportasi</td> 
                        <td> 
                             <div class="col-sm-4">
                               <select name="c5" class="form-control" required>
                                 <?php if ($c5!=''){?>
                                     <option value="<?php echo $c5 ?>" selected><?php echo $c5 ?></option>
                                  <?} ?>
                                   <option value="Jalan kaki">Jalan kaki (4)</option>
                                   <option value="Angkutan umum">Angkutan umum (3)</option>
                                   <option value="Sepeda motor">Sepeda motor (2)</option>
                                   <option value="Mobil">Mobil (1)</option>
                               </select>
                            </div>
                        </td> 
                    </tr> 
                    <tr> 
                        <td colspan="2">
                            <input type="submit" class="btn btn-success" value="Simpan"> 
                            <button type="reset" class="btn btn-default">Batal</button> 
                        </td> 
                    </tr> 
                </table> 
            </form> 
        </div> 
    </div> 
    <!-- /panel --> 
</div>
<!-- /container --> 

<?php $this->load->view('footer'); ?> 