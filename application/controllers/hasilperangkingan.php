<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hasilperangkingan extends CI_Controller {
     var $tabel = 'hasil_perangkingan'; //variabel tabel 

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
        $data['title'] = 'Data Hasil Perangkingan';
        $data['data'] = $this->model->getdatarangkingawal();
        $data['datahasil']= $this->model->gethasilperangkingan();
        $this->load->view('vhasilperangkingan', $data);
    }
   
   

}
