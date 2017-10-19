<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
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
    
<link rel="stylesheet" type="text/css" href="tabbed-form.css">
<script type="text/javascript" src="tabbed-form.js"></script>
	
	</head>
	<body>
	<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>    
<%@ include file="/resources/includes/navbar.jsp" %>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="col-md-2"></div>
			<div class="col-md-10">
	
				<div>
			
				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
				    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
				    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
				    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
				  </ul>
				
				  <!-- Tab panes -->
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="home">asdfasdf</div>
				    <div role="tabpanel" class="tab-pane" id="profile">...</div>
				    <div role="tabpanel" class="tab-pane" id="messages">...</div>
				    <div role="tabpanel" class="tab-pane" id="settings">...</div>
				  </div>
				
				</div>
			</div>
			</div>
	</div>
	
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="col-md-2"></div>
			<div class="col-md-10">
	
				<div>
				<div class="col-md-6">
				  <!-- Tab panes -->
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="password">
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
				    </div>
				    <div role="tabpanel" class="tab-pane" id="username">
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
				    </div>
				    <div role="tabpanel" class="tab-pane" id="email">
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
			</div>
	</div>


</body>
</html>