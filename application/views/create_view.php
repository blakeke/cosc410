<h2>Create a username and password</h2>

<?php echo validation_errors(); ?>
<?php echo form_open('login') ?>

	<label for="username">Username</label> 
	<input type="input" name="username" /><br />

	<label for="password">Password</label>
	<textarea name="text"></textarea><br />
	
	<input type="submit" name="submit" value="Create username and password" /> 

</form>