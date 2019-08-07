<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('model'));
        $this->session_data = $this->session->userdata('session_data');
		if ($this->session_data['status'] != "YA"){
        	   redirect('login');
        }

	}

    public function index() {
        $data['title'] = 'SPK Penerimaan Beasiswa';
        $this->load->view('home', $data);
    }

}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

