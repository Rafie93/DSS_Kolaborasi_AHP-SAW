<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Laporan extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('model');
        $this->load->library('pdfgenerator');
        $this->load->helper('form','url');
         $this->session_data = $this->session->userdata('session_data');
        if ($this->session_data['status'] != "YA"){
               redirect('login');
        }
    }

    // awal tampil index
    public function index() {
        $data['title'] = 'Laporan Laporan';
        $this->load->view('vlaporan', $data);
    }

    public function laporanperangkingan()
    {
        $tahun = $this->input->post('tahun');
         $data['title'] = 'Laporan Penerimaan Beasiswa';
        $data['data'] = $this->model->getdatarangkingawal($tahun);
        $data['tahun'] = $tahun;
        $html = $this->load->view('vcetakperangkingan', $data,true);
        
        $this->pdfgenerator->generate($html,'laporan_penerimaan_beasiswa'.$tahun,'A4','portrait');

    }
    
 

}
