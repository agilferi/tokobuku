<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function index()
	{
		if ($this->session->userdata('login')==TRUE) {
			$data['konten']='admin';
			$this->load->view('template', $data);
		}
		else{
			$this->load->view('login');
		}
	}

}
/* End of file Admin.php */
/* Location: ./application/controllers/Admin.php */