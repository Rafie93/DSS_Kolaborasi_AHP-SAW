<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Normalisasidata extends CI_Controller {
     var $tabel = 'hasil_normalisasi'; //variabel tabel 

    public function __construct() {
        parent::__construct();
        $this->load->model('model');
        $this->load->helper('form','url');
         $this->session_data = $this->session->userdata('session_data');
        if ($this->session_data['status'] != "YA"){
               redirect('login');
        }
    }

    // awal tampil index
    public function index() {
        $data['title'] = 'Data Penerima Beasiswa Ternormalisasi';
        $data['data'] = $this->model->get_all($this->tabel);
        $this->load->view('vnormalisasidata', $data);
    }

   
      public function hapusall() {
        $this->model->deleteall('hasil_normalisasi');
        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Hapus Semua</div>");
        redirect('normalisasidata');
    }
    public function proses()
    {
        $tahun = $this->input->post('tahun');
       $c1=$this->db->get_where('kriteria', array('kode' => "c1"))->row()->jenis;
       $c2=$this->db->get_where('kriteria', array('kode' => "c2"))->row()->jenis;
       $c3=$this->db->get_where('kriteria', array('kode' => "c3"))->row()->jenis;
       $c4=$this->db->get_where('kriteria', array('kode' => "c4"))->row()->jenis;
       $c5=$this->db->get_where('kriteria', array('kode' => "c5"))->row()->jenis;

       $this->db->where('tahun',$tahun);  
       $data = $this->db->get('calon_penerima');
    
       if ($data->num_rows > 0) {
         $this->model->delete_dum('calon_penerima_konversi',$tahun);
            foreach ($data->result() as $row) {
                $nis = $row->nis;
                $nama = $row->nama;
                $jurusan = $row->jurusan;
                $rc1 = $row->nilai_rata;
                $rc2_num = $row->penghasilan_ortu;
                
                // if ($rc2_a =='Kurang dari Rp. 500,000'){
                //     $rc2_num = 500000;
                // }else if ($rc2_a=='Rp. 500,000 - Rp. 999,999'){
                //     $rc2_num = 1000000;
                // }else if ($rc2_a=='Rp. 1,000,000 - Rp. 1,999,999'){
                //     $rc2_num = 2000000;
                // }else if ($rc2_a=='Rp. 2,000,000 - Rp. 4,999,999'){
                //     $rc2_num = 5000000;
                // }else if ($rc2_a=='Tidak Berpenghasilan'){
                //     $rc2_num = 100000;
                // }else{
                //     $rc2_num = 10000000;
                // }

                $rc3 = $row->tanggungan_ortu;

                $rc4_a = $row->pekerjaan_ortu;
 
                if ($rc4_a=='Petani'){
                    $rc4_num = 2;
                }else if ($rc4_a=='PNS'){
                    $rc4_num = 4;
                }else if ($rc4_a=='Wiraswasta'){
                    $rc4_num = 3;
                }else if ($rc4_a=='Wirausaha'){
                    $rc4_num = 3;
                }else if ($rc4_a=='Pedagang Besar'){
                    $rc4_num = 5;
                }else if ($rc4_a=='Nelayan'){
                    $rc4_num = 2;
                }else if ($rc4_a=='Sudah Meninggal'){
                    $rc4_num = 1;
                }
                else{
                    $rc4_num = 5;
                }

                $rc5_a = $row->alat_transportasi;
                
                if ($rc5_a=='Sepeda motor'){
                    $rc5_num = 2;
                }else if ($rc5_a=='Angkutan umum'){
                    $rc5_num = 3;
                }else if ($rc5_a=='Jalan kaki'){
                    $rc5_num = 4;
                }else{
                    $rc5_num = 1;
                }

                $data = array(
                    'tahun'  => $tahun,
                    'nis'   => $nis,
                    'nama'   => $nama,
                    'jurusan'     => $jurusan,
                    'nilai_rata'    => $rc1,
                    'penghasilan_ortu'    => $rc2_num,
                    'tanggungan_ortu'    => $rc3,
                    'pekerjaan_ortu'    => $rc4_num,
                    'alat_transportasi'    => $rc5_num
                      
                );
        
                $this->model->get_insert('calon_penerima_konversi',$data);
            }
        } 

        $this->db->where('tahun',$tahun);  
        $data2 = $this->db->get('calon_penerima_konversi');
        if ($data2->num_rows() > 0) {
            $this->model->delete_dum('hasil_normalisasi',$tahun);

            $max_c1=1;
            $min_c1=1;
            $max_c2=1;
            $min_c2=1;
            $max_c3=1;
            $min_c3=1;
            $max_c4=1;
            $min_c4=1;
            $max_c5=1;
            $min_c5=1;
            
            if($c1=="benefit"){
               $max_c1 = $this->db->query("SELECT max(nilai_rata) as c1  FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c1;
            }else{
               $min_c1 = $this->db->query("SELECT min(nilai_rata) as c1 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c1;
            }

            if($c2=="benefit"){
                 $max_c2 = $this->db->query("SELECT max(penghasilan_ortu) as c2 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c2;
            }else{
                 $min_c2 = $this->db->query("SELECT min(penghasilan_ortu) as c2 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c2;
            }

            if($c3=="benefit"){
                 $max_c3 = $this->db->query("SELECT max(tanggungan_ortu) as c3 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c3;
            }else{
                 $min_c3 = $this->db->query("SELECT min(tanggungan_ortu) as c3 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c3;
            }
            if($c4=="benefit"){
                $max_c4 = $this->db->query("SELECT max(pekerjaan_ortu) as c4 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c4;
            }else{
                 $min_c4 = $this->db->query("SELECT min(pekerjaan_ortu) as c4 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c4;
            }
            if($c5=="benefit"){
                $max_c5 = $this->db->query("SELECT max(alat_transportasi) as c5 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c5;
            }else{
                 $min_c5 = $this->db->query("SELECT min(alat_transportasi) as c5 FROM calon_penerima_konversi WHERE tahun='$tahun'")->row()->c5;
            }

            $tess = array(
               'max_c1' =>  $max_c1,
               'min_c1' =>$min_c1,
               'max_c2' => $max_c2,
                'min_c2'=>$min_c2,
               'max_c3' => $max_c3,
               'min_c3'=> $min_c3,
               'max_c4' => $max_c4,
               'min_c4'=> $min_c4,
               'max_c5' => $max_c5,
               'min_c5'=> $min_c5
            );

      //      print_r($tess);
            foreach ($data2->result() as $row) {
                $nis = $row->nis;
                $nama = $row->nama;
                $jurusan = $row->jurusan;
                $nc1 = $row->nilai_rata;
                $nc2 = $row->penghasilan_ortu;
                $nc3 = $row->tanggungan_ortu;
                $nc4 = $row->pekerjaan_ortu;
                $nc5 = $row->alat_transportasi;

                if($c1=="benefit"){
                  $hc1 = $nc1/$max_c1;
                }else{
                  $hc1= $min_c1/$nc1;
                }

                if($c2=="benefit"){
                  $hc2 = $nc2/$max_c2;
                }else{
                  $hc2= $min_c2/$nc2;
                }

                if($c3=="benefit"){
                  $hc3 = $nc3/$max_c3;
                }else{
                  $hc3= $min_c3/$nc3;
                }

                 if($c4=="benefit"){
                  $hc4 = $nc4/$max_c4;
                }else{
                  $hc4= $min_c4/$nc4;
                }

                if($c5=="benefit"){
                  $hc5 = $nc5/$max_c5;
                 //   $hc5 = 55;
                }else{
                   $hc5= $min_c5/$nc5;
                  
                }

                $data = array(
                    'tahun'  => $tahun,
                    'nis'   => $nis,
                    'nama'   => $nama,
                    'jurusan'     => $jurusan,
                    'nilai_rata'    => $hc1,
                    'penghasilan_ortu'    => $hc2,
                    'tanggungan_ortu'    => $hc3,
                    'pekerjaan_ortu'    => $hc4,
                    'alat_transportasi'    => $hc5
                      
                );
        
                $this->model->get_insert('hasil_normalisasi',$data);

            }
            # code...
        }

          $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil Di Normalisasi</div>");
        redirect('normalisasidata');
    }

}
