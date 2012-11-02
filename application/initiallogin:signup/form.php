<?php

class Form extends CI_Controller {
    
        function __construct(){
   
        parent::__construct();
        $this->load->model('form_model','',TRUE);

        }

	function index()
	{
                
		$this->load->helper(array('form'));
		$this->load->library('form_validation');
                
                $this->form_validation->set_rules('username', 'Username', 'callback_username_check');
		$this->form_validation->set_rules('password', 'Password', 'required');
		//$this->form_validation->set_rules('passconf', 'Password Confirmation', 'required');
		//$this->form_validation->set_rules('email', 'Email', 'required');
                //$this->form_validation->set_rules('name', 'Name', 'required');
                //$this->form_validation->set_rules('school', 'School', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('myform');
		}
		else
		{
                        $this->form_model->set_form();
			$this->load->view('formsuccess');
		}
	}
        public function username_check($str)
	{
		if ($str == 'test')
		{
			$this->form_validation->set_message('username_check', 'The %s field can not be the word "test"');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
        
        

}
?>