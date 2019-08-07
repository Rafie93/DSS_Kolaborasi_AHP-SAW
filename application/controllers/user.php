<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User extends CI_Controller {
     var $tabel = 'login'; //variabel tabel 

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
        $data['title'] = 'Data User Aplikasi';
        $data['data'] = $this->model->get_all($this->tabel,"asc");
        $this->load->view('vuser', $data);

    }
   
    
    // function form
    public function form() {
        // ambil variable url
        $mau_ke = $this->uri->segment(3);
        $idu = $this->uri->segment(4);

        // ambil variabel dari form
        $id = $this->input->post('id');
        $username = $this->input->post('username');
        $nama_lengkap = $this->input->post('nama');
        $jabatan = $this->input->post('jabatan');
        $password  = $this->input->post('password');
        $newpassword = md5($password);

      
        // mengarahkan fungsi form sesuai dengan uri segmentnya
        if ($mau_ke == "add") {
            $data['title'] = 'Tambah User';
            $data['aksi'] = 'aksi_add';
            $this->load->view('vformuser', $data);
        } 
        elseif ($mau_ke == "edit") {
            $data['qdata'] = $this->model->get_byid($this->tabel,$idu);
            $data['title'] = 'Edit User';
            $data['aksi']  = 'aksi_edit';
            $this->load->view('vformuser', $data);
        } 
        elseif ($mau_ke == "aksi_add") {
            // jika uri segmentasinya AKSI_ADD sebagai fungsi untuk insert data
              $data = array(
                'username'  => $username,
                'nama_lengkap'   => $nama_lengkap,
                'jabatan'     => $jabatan,
                'password'=> $password
            );

            $this->db->where('username',$username);
            $dt = $this->db->get($this->tabel);
            if ($dt->num_rows()>0) {
                $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Username Tidak Valid</div>");
            redirect('user');
            }else{
                  $this->model->get_insert($this->tabel,$data);
            $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Simpan</div>");
            redirect('user');
            }
    
          
        } elseif ($mau_ke == "aksi_edit") {
            // jika uri segmentnya aksi_edit sebagai fungsi untuk update
            $data = array(
                'username'  => $username,
                'nama_lengkap'   => $nama_lengkap,
                'jabatan'     => $jabatan,
                'password'=> $password
            );
    
            $this->model->get_update($this->tabel,$id, $data);
            $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Update</div>");
            redirect('user');
        }
    }

    public function hapus($gid) {
        $this->model->delete($this->tabel,$gid);
        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Hapus</div>");
        redirect('user');
    }




}
