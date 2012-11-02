<?php

class Signup extends CI_Controller {
 
  public function __construct()
       {
            parent::__construct();
            $this->load->model('signup_model');
            
       }


  public function index ()
  {
  
  $this->load->helper('form');  
  $this->load->view('signup_view'); 
  }

  public function insert()
{
    //$data = array('username' => $this->input->post('username', TRUE),'password' => sha1($this->input->post('password', TRUE)));

    // See if we are getting input post data.
    // If this is empty then your form_open url is wrong.
    //var_dump($data);
    echo 'FOO!';
    //echo $this->input->post('username');
    $this->signup_model->set_signup(); // this should forward them to the Model
}
 

}
?> 