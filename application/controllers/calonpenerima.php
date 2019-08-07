<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Calonpenerima extends CI_Controller {
     var $tabel = 'calon_penerima'; //variabel tabel 

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
        $data['title'] = 'Data Calon Penerima Beasiswa';
        $data['data'] = $this->model->get_all($this->tabel);
        $this->load->view('vcalonpenerima', $data);
    }
    
    // function form
    public function form() {
        // ambil variable url
        $mau_ke = $this->uri->segment(3);
        $idu = $this->uri->segment(4);

        // ambil variabel dari form
        $id = $this->input->post('id');
        $nis = $this->input->post('nis');
        $nama = $this->input->post('nama');
        $jurusan = $this->input->post('jurusan');
        $c1 = $this->input->post('c1');
        $c2 = $this->input->post('c2');
        $c2 = str_replace(',', '', $c2);
        $c3 = $this->input->post('c3');
        $c4 = $this->input->post('c4');
        $c5 = $this->input->post('c5');
        $tahun = $this->input->post('tahun');

      
        // mengarahkan fungsi form sesuai dengan uri segmentnya
        if ($mau_ke == "add") {
            $data['title'] = 'Tambah Calon Penerima';
            $data['aksi'] = 'aksi_add';
            $this->load->view('vformcalonpenerima', $data);
        } 
        elseif ($mau_ke == "edit") {
            $data['qdata'] = $this->model->get_byid($this->tabel,$idu);
            $data['title'] = 'Edit Calon Penerima';
            $data['aksi']  = 'aksi_edit';
            $this->load->view('vformcalonpenerima', $data);
        } 
        elseif ($mau_ke == "aksi_add") {
            // jika uri segmentasinya AKSI_ADD sebagai fungsi untuk insert data
              $data = array(
                'tahun'  => $tahun,
                'nis'   => $nis,
                'nama'   => $nama,
                'jurusan'     => $jurusan,
                'nilai_rata'    => $c1,
                'penghasilan_ortu'    => $c2,
                'tanggungan_ortu'    => $c3,
                'pekerjaan_ortu'    => $c4,
                'alat_transportasi'    => $c5
                  
            );

             $this->db->where('tahun',$tahun);
             $this->db->where('nis',$nis);
             $cek = $this->db->get($this->tabel);
             if ($cek->num_rows()>0) {
                $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data Tahun dan Siswa Tidak Boleh Sama</div>");
               redirect('calonpenerima');
             }else{
    
                $this->model->get_insert($this->tabel,$data);
                $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Simpan</div>");
                redirect('calonpenerima');
            }
        } elseif ($mau_ke == "aksi_edit") {
            // jika uri segmentnya aksi_edit sebagai fungsi untuk update
             $data = array(
                'tahun'  => $tahun,
                'nis'   => $nis,
                'nama'   => $nama,
                'jurusan'     => $jurusan,
               'nilai_rata'    => $c1,
                'penghasilan_ortu'    => $c2,
                'tanggungan_ortu'    => $c3,
                'pekerjaan_ortu'    => $c4,
                'alat_transportasi'    => $c5
                  
            );
    
            $this->model->get_update($this->tabel,$id, $data);
            $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Update</div>");
            redirect('calonpenerima');
        }
    }


    public function hapus($gid) {
        $this->model->delete($this->tabel,$gid);
        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Hapus</div>");
        redirect('calonpenerima');
    }
     public function hapusall() {
        $this->model->deleteall($this->tabel);
        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Hapus Semua</div>");
        redirect('calonpenerima');
    }

}
