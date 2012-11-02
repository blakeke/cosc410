<?php


class Signup_model extends CI_Model{


    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
        $this->load->database();
    }
        
    
    public function set_signup(){
        
	$data = array(
		'username' => $this->input->post('username'),
		'password' => $this->input->post('password')
                );
        
        $this->db->insert('users', $data);
    
    }
   
    
        
    }
    



?> 