<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Create extends CI_Controller {

   function __construct(){
   
   parent::__construct();
   $this->load->model('user','',TRUE);

 }
 
  function index(){
   
   $this->load->helper(array('form', 'url'));
   
   $this->load->view('create_view'); 
 
  }
  
 public function create(){
   $this->load->helper('form');
   $this->load->library('form_validation');
        
	
   $data['title'] = 'Create a username and password';
	
   $this->form_validation->set_rules('username', 'username', 'required');
   $this->form_validation->set_rules('password', 'password', 'required');
	
   if ($this->form_validation->run() === FALSE)
	{
		//$this->load->view('templates/header', $data);
		$this->load->view('login_view');
		//$this->load->view('templates/footer');
		
	}
   else
	{
		$this->user->set_info();
		$this->load->view('login_view');
	}
}

}
?>
