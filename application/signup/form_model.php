<?php


class Form_model extends CI_Model{


    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        $this->load->database();
    }
        
    
    public function set_form(){
        
        $this->load->helper(array('url'));
        
	$data = array(
		'email' => $this->input->post('email'),
		'name' => $this->input->post('name'),
		'school' => $this->input->post('school'),
		'password' => $this->input->post('password')
		);
        
        $this->db->insert('user', $data);
    
    }
   
    
		
                
		
        
    }
    



?> 