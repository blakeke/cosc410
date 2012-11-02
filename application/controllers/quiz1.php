<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

session_start(); //we need to call PHP's session object to access it through CI

class Quiz1 extends CI_Controller {

 function __construct() {

   parent::__construct();

 }

 function index() {

   if($this->session->userdata('logged_in'))

   {

     $session_data = $this->session->userdata('logged_in');

     $data['name'] = $session_data['name'];

     $this->load->view('quiz1_view', $data);
     
     //$this->load->view('quiz_view', $data);
 
   }

   else

   {

     //If no session, redirect to login page

     redirect('login', 'refresh');

   }

 }

 function logout() {

   $this->session->unset_userdata('logged_in');

   session_destroy();

   redirect('home', 'refresh');

 }

}

?>
