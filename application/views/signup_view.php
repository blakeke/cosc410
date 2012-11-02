

<?php echo form_open(base_url() . 'index.php/signup/insert/'); ?>
      
      <ul>
        
            <li>


            
            <label>Username</label>      
                
            <div><?php echo form_input(array('id' => 'username', 'name' => 'username')); ?></div>
           
            </li>
        
        
        
            <li>
            
            <label>Password</label>      
                
            <div><?php echo form_password(array('id' => 'password', 'name' => 'password')); ?></div>   
               
            </li>
            <li><?php echo validation_errors();?></li>
            
            <!--<li><?php echo form_submit(array('name' =>'submit'),'Insert');?> </li>-->
	    <a href= "http://localhost/~kellyblake/cosc410/index.php/login/" > <input type="submit" name="submit" value="Create username and password" /></a>

	    
        
      </ul>
      
      <?php echo form_close(); ?> 
      
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
        
<!--<h2>Create a username and password</h2>


	<label for="username">Username</label> 
	<input type="input" name="username" /><br />

	<label for="password">Password</label>
	<textarea name="text"></textarea><br />-->
	
        <!--<a href= "http://localhost/~kellyblake/cosc410/index.php/login/" > <input type="submit" name="submit" value="Create username and password" /></a>-->
	
        
<!--        <input type="submit" name="submit" value="Create username and password" />

        
        

</form>-->
        