<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index()
	{
			if ($this->session->userdata('login')==TRUE) {
			$data['konten']='dashboard';
			$this->load->view('template', $data);
		}
		else{
			$this->load->view('login');
		}
	}

}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */