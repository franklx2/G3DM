<!DOCTYPE html>
<html>
	<head>
	<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
		<meta charset="UTF-8">
		<title>Account Settings</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
		     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>   
		<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-transition.js"></script>
		<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-collapse.js"></script>
		<script type="text/javascript" src="/resources/javascript/AccountSettingsjs"></script>  
		<link rel="stylesheet" type="text/css" href="/resources/css/AccountSettings.css">
	    
	</head>
	<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>    
	<%@ include file="/resources/includes/navbar.jsp" %>
	<%
		// If the user is logged in, this page is displayed.
		// Otherwise, redirect to 404 page.
		String fourZeroFour = "404.jsp";
		if(UsersBean.getLoggedIn() == false)
		{
			response.sendRedirect(fourZeroFour);
		}
	%>
	
	    
	<body>
		
		<div class="container-fluid">
		    <div class="row">
		        <div class="col-md-12">
		           <div class="col-md-2"></div>
		           <div class="col-md-10">

					<div class="col-md-3">
						<h4>Account Settings</h4>
						
						<div class="well">
							<button class="btn btn-default btn-block"
								onclick="$('#changePassword').toggle();">
								<small>Change Password</small>
							</button>
							<button class="btn btn-default btn-block"
								onclick="$('#changeUsername').toggle();">
								<small>Change Username</small>
							</button>
							<button class="btn btn-default btn-block"
								onclick="$('#changeEmail').toggle();">
								<small>Change Email</small>
							</button>
						</div>
					</div>
					
					<div class="col-md-7">
							
							<h4>Select an account setting to change</h4>
							<!-- Change password form -->
							<div id="changePassword" style="display: none; width:75%;">
							<h3>Change Password</h3>
							    <form action="ChangePasswordHandler.jsp">
							    	<fieldset class="form-group">
									<label for="Current Password">Current Password</label> 
									<input type="password" class="form-control" id="currentPassword" name="currentPassword" placeholder="Current Password">
									</fieldset>
									
									<fieldset class="form-group">
									<label for="New Password">New Password</label> 
									<input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="New Password">
									</fieldset>
									<button type="submit" class="btn btn-primary">Submit</button>
							    </form>
							</div>
							
							<!-- Change username form -->
							<div id="changeUsername" style="display: none; width:75%;">
							<h3>Change Username</h3>
							    <form action="ChangeUsernameHandler.jsp">
							    	<fieldset class="form-group">
									<label for="Current Username">
										<%
											out.println("Current Username: " + UsersBean.getUser().getUsername());
										%>
									</label> 
									</fieldset>
									
									<fieldset class="form-group">
									<label for="New Username">New Username</label> 
									<input type="text" class="form-control" id="newUsername" name="newUsername" placeholder="New Username">
									</fieldset>
									<button type="submit" class="btn btn-primary">Submit</button>
							    </form>
							</div>
							
							<!-- Change email form -->
							<div id="changeEmail" style="display: none; width:75%;">
							<h3>Change Email</h3>
							    <form action="ChangeEmailHandler.jsp">
							    	<fieldset class="form-group">
									<label for="Current Email">
										<%
											out.println("Current Email: " + UsersBean.getUser().getEmail());
										%>
									</label> 
									
									</fieldset>
									
									<fieldset class="form-group">
									<label for="New Email">New Email</label> 
									<input type="text" class="form-control" id="newEmail" name="newEmail" placeholder="New Email">
									</fieldset>
									<button type="submit" class="btn btn-primary">Submit</button>
							    </form>
							</div>
						</div>
						
		           </div>
		       	</div>
		  	</div>
		</div>
		<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
	
</html>