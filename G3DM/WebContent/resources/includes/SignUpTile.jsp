<form action="SignUpHandler.jsp" method="post">
	<fieldset class="form-group">
		<label for="username">Username</label> 
		<input type="text" class="form-control" id="username" name="username" placeholder="Username">
	</fieldset>
	<fieldset class="form-group">
		<label for="exampleInputEmail1">Email address</label> 
		<input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Enter email">
	</fieldset>
	<fieldset class="form-group">
		<label for="exampleInputPassword1">Password</label> 
		<input type="password" data-minlength="6" class="form-control" name="inputPassword" id="inputPassword" placeholder="Password" required>
      <span class="help-block">Minimum of 6 characters</span>
	</fieldset>
	<fieldset class="form-group">
		<label for="exampleInputRe-enterPassword1">Confirm Password</label> 
		<input type="password" class="form-control" name="inputPasswordConfirm" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
      <div class="help-block with-errors"></div>
      
      
	</fieldset>


	<button type="submit" class="btn btn-primary">Submit</button>
</form>