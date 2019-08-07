<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Perangkingan extends CI_Controller {

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
        $data['title'] = 'Proses Perangkingan';
        $this->load->view('vperangkingan', $data);
    }

    public function hapus($gid) {
        $this->model->delete($this->tabel,$gid);
        $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil di Hapus</div>");
        redirect('perangkingan');
    }
    public function proses()
    {
         $tahun = $this->input->post('tahun');

        $c1=$this->db->get_where('hasil_bobot_ahp', array('kode' => "c1"))->row()->bobot;
       $c2=$this->db->get_where('hasil_bobot_ahp', array('kode' => "c2"))->row()->bobot;
       $c3=$this->db->get_where('hasil_bobot_ahp', array('kode' => "c3"))->row()->bobot;
       $c4=$this->db->get_where('hasil_bobot_ahp', array('kode' => "c4"))->row()->bobot;
       $c5=$this->db->get_where('hasil_bobot_ahp', array('kode' => "c5"))->row()->bobot;

      $this->db->where('tahun',$tahun);  
       $data = $this->db->get('hasil_normalisasi');
        if ($data->num_rows > 0) {
           $this->model->delete_dum('hasil_perangkingan',$tahun);
            foreach ($data->result() as $row) {
                $nis = $row->nis;
                $nama = $row->nama;
                $jurusan = $row->jurusan;
                $nc1 = $row->nilai_rata;
                $nc2 = $row->penghasilan_ortu;
                $nc3 = $row->tanggungan_ortu;
                $nc4 = $row->pekerjaan_ortu;
                $nc5 = $row->alat_transportasi;

                $hasil = ($c1*$nc1)+($c2*$nc2)+($c3*$nc3)+($c4*$nc4)+($c5*$nc5);
                  $data = array(
                    'tahun'  => $tahun,
                    'nis'   => $nis,
                    'nama'   => $nama,
                    'jurusan'     => $jurusan,
                    'nilai_rata'    => $nc1,
                    'penghasilan_ortu'    => $nc2,
                    'tanggungan_ortu'    => $nc3,
                    'pekerjaan_ortu'    => $nc4,
                    'alat_transportasi'    => $nc5,
                    'hasil' => $hasil
                      
                );
        
                $this->model->get_insert('hasil_perangkingan',$data);
            }

            $dt_hasil = $this->db->query("SELECT * FROM hasil_perangkingan WHERE tahun = '$tahun' ORDER BY hasil desc");
            if ($dt_hasil->num_rows() > 0) {
                $num = 1;
                foreach ($dt_hasil->result() as $dt) {
                    $idku = $dt->id;
                    $rangking = $num;
                    $this->db->query("UPDATE hasil_perangkingan SET rangking = '$rangking' WHERE id = $idku");
                    $num++;
                }
            }      

        }
    

          $this->session->set_flashdata("Pesan", "<div class=\"alert alert-success\" id=\"alert\"><i class=\"glyphicon glyphicon-ok\"></i> Data berhasil Di Dirangkingkan, Cek Menu Hasil Perangkingan</div>");
        redirect('perangkingan');
    }

}
