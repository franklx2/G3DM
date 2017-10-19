<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">

<title>Profile</title>
<!-- 3-1-16  -->

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
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
 <!-- 2-26 -->
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="resources/css/characters.css">
    <script src="resources/javascript/characters.js"></script>
        <script src="resources/javascript/test3.js"></script>
</head>
    
    

	
<body>
		<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>    
		<%@ include file="/resources/includes/navbar.jsp" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   		<!-- 4:18 -->
   		<c:if test="${UsersBean.loggedInStatus eq false}">
   			<jsp:getProperty property="signedOut" name="UsersBean"/>	
			<%response.sendRedirect("NotLoggedIn.jsp"); %>
   		</c:if>
   		<!-- 3:24pm -->
		


	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-2">
					<div class="thumbnail">
						<div>
							<c:set var="user" value="${UsersBean.user }"></c:set>
							<p style="text-align:center; font-size:large;"><b>${UsersBean.username }</b></p>
							<span class="uploadProfilePictureButton"><small>Edit picture</small><a role="button" id="uploadButton" style="float:right; position:relative;" class="glyphicon glyphicon-pencil "></a></span>
							<c:if test="${user.avatarEmpty == true }">
								<img src="https://s3.amazonaws.com/flstudios/pics/default_avatar_male.jpg" class="img-thumbnail" alt="avatar" width="350" height="350">
							</c:if>
							<c:if test="${user.avatarEmpty == false }">
								<img src="${user.avatar_location }" class="img-thumbnail" alt="avatar" width="350" height="350">
							</c:if>
							
							
						</div>
						<div class="uploadProfilePicture" >
								<div style="position:relative;">
									<form class="text-center" action="upload" method="post" enctype="multipart/form-data">
									<div id="kv-avatar-errors" class="center-block" style="width:800px;display:none"></div>
								        <input id="avatar" name="avatar" type="file" class="file-loading" style="max-width:100%;">
									    <span class="cancelUploadProfilePicture"><button type="button" id="cancel" style="float:left; position:relative;" class="btn btn-default" >Cancel</button></span>
									    <button style="float:left; position:relative;" type="submit" class="btn btn-default" >Save</button>
									    <input id="username" name="username" type="text" value="${UsersBean.username }" style="display:none">
									    <input id="type" name="type" type="text" value="user" style="display:none">
									    <!-- include other inputs if needed and include a form submit (save) button -->
									</form>
								</div>
						</div>
						<br>
						<div class="editAboutWrapper">
							<small>About</small><span class="editAboutButton"><a role="button" id="aboutPencil" style="float:right; position:relative;" class="glyphicon glyphicon-pencil "></a></span>
						</div>
						<div class="about well" style="font-size: 12;">
							
							<c:set var="about" value="${user.about }"></c:set>
							<c:if test="${empty about}">
								Click the edit button to write about yourself
							</c:if>
							<c:if test="${not empty about}">
								${about} 
							</c:if>
						</div>
						<div class="editAbout">
							<form id="editBackgroundForm" action='EditUser.jsp' method='post' role='form'>
								<div class='form-group'>
									<textarea name='about' class='form-control' rows='5'></textarea>
									<span class="cancelAbout"><button type="button" id="cancel" style="float:right; position:relative;" class="glyphicon glyphicon-remove "></button></span>
									<button type='submit' class='btn btn-default'>Submit</button>
									
									<input type='hidden' name='username' value='${UsersBean.username}'>
								</div> 
							</form>
						</div>
					<div class="well" style="background-color:white;">
						<a href="AccountSettings.jsp" style="font-size: 15px;">Account Settings</a>
						<br>
						<a href="User.jsp?username=${UsersBean.username }" style="font-size: 15px;">View Profile</a>
					</div>
					</div>

				</div>
				<div class="col-sm-10">
					<div class="col-sm-10">
						<jsp:include page="resources/includes/tabbed-form.jsp" />
					</div>


				</div>
			</div>
		</div>
	</div>


	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
	
</html>