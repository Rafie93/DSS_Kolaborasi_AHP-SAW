<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Nilaikriteria extends CI_Controller {
     var $tabel = 'kriteria'; //variabel tabel 
     var $tabel2 = 'perbandingan_kriteria';

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
        $data['title'] = 'Data Kriteria AHP';
        $data['data'] = $this->model->get_all($this->tabel,"asc");
        $this->load->view('vnilaikriteria', $data);
    }
    //tampilan perbandingan kriteria
     public function proses_perbandingan() {

        $r=$this->db->query("SELECT * FROM nilaikriteria")->row();
           $c1_1=$r->c1_1;
           $c1_2=$r->c1_2;
           $c1_3=$r->c1_3;
           $c1_4=$r->c1_4;
           $c2_1=$r->c2_1;
           $c2_2=$r->c2_2;
           $c2_3=$r->c2_3;
           $c3_1=$r->c3_1;
           $c3_2=$r->c3_2;
           $c4_1=$r->c4_1;
            $this->model->deleteall('perbandingan_kriteria');
        for ($i=1; $i <= 5; $i++) { 
            if ($i==1) {
                $data['kriteria'] = "c1";
                $data['c1']  = 1;
                $data['c2'] = $c1_1;
                $data['c3'] = $c1_2;
                $data['c4'] = $c1_3;
                $data['c5'] = $c1_4;
                $this->model->get_insert("perbandingan_kriteria",$data);
            }else if ($i==2) {
                $data['kriteria'] = "c2";
                $data['c1']  = 1/$c1_1;
                $data['c2']  = 1;
                $data['c3'] = $c2_1;
                $data['c4'] = $c2_2;
                $data['c5'] = $c2_3;
                 $this->model->get_insert("perbandingan_kriteria",$data);
            }
            else if ($i==3) {
                $data['kriteria'] = "c3";
                $data['c1']  = 1/$c1_2;
                $data['c2']  = 1/$c2_1;
                $data['c3']  = 1;
                $data['c4'] = $c3_1;
                $data['c5'] = $c3_2;
                 $this->model->get_insert("perbandingan_kriteria",$data);
            }
            else if ($i==4) {
                $data['kriteria'] = "c4";
                $data['c1']  = 1/$c1_3;
                $data['c2']  = 1/$c2_2;
                $data['c3']  = 1/$c3_1;
                $data['c4']  = 1;
                $data['c5'] = $c4_1;
                 $this->model->get_insert("perbandingan_kriteria",$data);
            }
            else if ($i==5) {
                $data['kriteria'] = "c5";
                 $data['c1']  = 1/$c1_4;
                $data['c2']  = 1/$c2_3;
                $data['c3']  = 1/$c3_2;
                $data['c4']  = 1/$c4_1;
                $data['c5']  = 1;
                 $this->model->get_insert("perbandingan_kriteria",$data);
            }
        }

        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data Perbandingan diperbaharui</div>");
       
       redirect("kriteria/perbandingan");
    }
    
    // function form
    public function form() {
        // ambil variable url
        $mau_ke = $this->uri->segment(3);
        $idu = $this->uri->segment(4);

        // ambil variabel dari form
        $c1_1 = $this->input->post('c1_1');
        $c1_2 = $this->input->post('c1_2');
        $c1_3 = $this->input->post('c1_3');
        $c1_4 = $this->input->post('c1_4');
        $c2_1 = $this->input->post('c2_1');
        $c2_2 = $this->input->post('c2_2');
        $c2_3 = $this->input->post('c2_3');
        $c3_1 = $this->input->post('c3_1');
        $c3_2 = $this->input->post('c3_2');
        $c4_1 = $this->input->post('c4_1');
        
        // mengarahkan fungsi form sesuai dengan uri segmentnya
        if ($mau_ke == "add") {
            $data['title'] = 'UBAH NILAI KRITERIA PEMBANDING';
            $data['aksi'] = 'aksi_add';
            $data['qdata']= $this->model->get_all("nilaikriteria");
            $this->load->view('vformnilaikriteria', $data);
        } 
        elseif ($mau_ke == "edit") {
            $data['qdata'] = $this->model->get_byid($this->tabel,$idu);
            $data['title'] = 'Edit Kriteria';
            $data['aksi']  = 'aksi_edit';
            $this->load->view('vformkriteria', $data);
        } 
        elseif ($mau_ke == "aksi_add") {
            // jika uri segmentasinya AKSI_ADD sebagai fungsi untuk insert data
              $data = array(
                'c1_1'  => $c1_1,
                'c1_2'   => $c1_2,
                'c1_3'     => $c1_3,
                'c1_4'     => $c1_4,
                'c2_1'  => $c2_1,
                'c2_2'   => $c2_2,
                'c2_3'     => $c2_3,
                'c3_1'  => $c3_1,
                'c3_2'   => $c3_2,
                'c4_1'  => $c4_1
            );
    
            $this->model->get_update("nilaikriteria","1",$data);
            $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Simpan</div>");
            redirect('nilaikriteria/form/add');
        } 
    }




}
