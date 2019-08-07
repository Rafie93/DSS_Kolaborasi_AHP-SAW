<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pembobotan extends CI_Controller {
     var $tabel = 'perbandingan_kriteria'; //variabel tabel 

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
        $data['title'] = 'Data Kriteria';
        $data['data'] = $this->model->get_all($this->tabel,"asc");
         $data['data_eigen'] = $this->model->get_eigen();
        $data['data_bobot'] = $this->model->get_bobot();
        $this->load->view('vpembobotan', $data);
    }

    public function proses()
    {
        $dt = $this->model->get_all($this->tabel,"asc");
        if (!empty($dt)){
            // $this->model->deleteall("hasil_bobot_ahp");
             $matriks_a = array();
             $matriks_b = array();
             // $query="SELECT * FROM perbandingan_kriteria order by id asc";
             // $result=$this->db->query($query)->result_array();
             foreach ($dt as $r) {
                $matriks_a[] = array($r->c1,     $r->c2,      $r->c3,      $r->c4,  $r->c5);
                $matriks_b[] = array($r->c1,     $r->c2,      $r->c3,      $r->c4,  $r->c5);
             }
             $hasil = $this->perkalian_matriks($matriks_a, $matriks_b);
          //   echo "<table border='1' cellspacing='0' cellpadding='5'>";
             $this->model->deleteall("hasil_iterasi_1");

             $urut=1;
             for ($i=0; $i<sizeof($hasil); $i++) {
               // echo "<tr>";
                $nma= "c".$urut;
                $c1 = $hasil[$i][0];
                $c2 = $hasil[$i][1];
                $c3 = $hasil[$i][2];
                $c4 = $hasil[$i][3];
                $c5 = $hasil[$i][4];

                $data = array(
                    'kriteria'=>$nma,
                    'c1'=>$c1,
                    'c2'=>$c2,
                    'c3'=>$c3,
                    'c4'=>$c4,
                    'c5'=>$c5,
                    'hasil'=>$c1+$c2+$c3+$c4+$c5
                      
                );
                $this->model->get_insert("hasil_iterasi_1",$data);
                $urut=$urut+1; 
            }
            //Perhitungan Eigen Vector
            $dt_eigen = $this->db->query("SELECT x.*,x.hasil / x.tot as eigen 
                            FROM
                            (
                            SELECT a.*, (SELECT SUM(hasil)hasil FROM hasil_iterasi_1 )as tot
                             FROM hasil_iterasi_1 a
                            )x")->result();

            if (!empty($dt_eigen)) {
                 $this->model->deleteall("hasil_bobot_ahp");
                foreach ($dt_eigen as $it) {
                    $kode = $it->kriteria;
                    $eigen = $it->eigen;

                    $data_e = array('kode'=>$kode,'bobot'=>number_format($eigen,2));

                     $this->model->get_insert("hasil_bobot_ahp",$data_e);
                }
            }

        }
          $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Pembobotan diperbaharui</div>");

       redirect("pembobotan");
    }
    function perkalian_matriks($matriks_a, $matriks_b) {
        $hasil = array();
        for ($i=0; $i<sizeof($matriks_a); $i++) {
            for ($j=0; $j<sizeof($matriks_b[0]); $j++) {
                $temp = 0;
                for ($k=0; $k<sizeof($matriks_b); $k++) {
                    $temp += $matriks_a[$i][$k] * $matriks_b[$k][$j];
                }
                $hasil[$i][$j] = $temp;
            }
        }
        return $hasil;
}



}
