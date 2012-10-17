<?php
class Blog extends CI_Controller {

 //public function __construct()
 //{
  //parent::__construct();

 //}

 function index()
 {
	$this->load->model('blog_model');
	$data['records']=$this->blog_model->getAll();
	$this->load->view('blog_view', $data);
	
	//$data['title']= "My Blog Title";
	//$data['heading']= "My Blog Heading";
	//$this->load->view('blog_view', $data);

  
  
 }

}
?>

