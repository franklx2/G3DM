<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<title><c:set var="username" value="${param.username}"></c:set>
	<c:if test="${not empty username}">
	${param.username}
</c:if> <c:if test="${empty username}">
	Error
</c:if></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://twitter.github.io/bootstrap/assets/js/bootstrap-transition.js"></script>
<script type="text/javascript"
	src="http://twitter.github.io/bootstrap/assets/js/bootstrap-collapse.js"></script>



</head>




<body>




	<%@ include file="resources/includes/JGDHomeJumbotron.jsp"%>
	<%@ include file="resources/includes/navbar.jsp"%>


	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-3">
					<div class="thumbnail">
						<p style="text-align:center; font-size:large;"><b>${param.username }</b></p>
						<jsp:setProperty property="targetUsername" name="UsersBean" value="${param.username}"/>
						<c:set var="currentUser" value="${UsersBean.targetUser}"></c:set>
						<c:if test="${currentUser.avatarEmpty == true or empty currentUser.avatarEmpty}">
							<img src="https://s3.amazonaws.com/flstudios/pics/default_avatar_male.jpg" class="img-thumbnail" alt="avatar" width="350" height="350">
						</c:if>
						<c:if test="${currentUser.avatarEmpty == false }">
							<img src="${currentUser.avatar_location }" class="img-thumbnail" alt="avatar" width="350" height="350">
						</c:if>
						<br>
						<div class="well" style="background-color:white;">
						<c:if test="${currentUser.aboutEmpty == true or empty currentUser.aboutEmpty  }">
							There is nothing about this user yet
						</c:if>
						<c:if test="${currentUser.aboutEmpty == false }">
							${currentUser.about }
						</c:if>
						</div>		
					</div>
					
				</div>
				
				<div class="col-md-9">
					<div class="col-md-10">
						<%@include file="/resources/includes/user-tabbed-form.jsp"%>
					</div>




				</div>
			</div>
		</div>


	</div>
	<br>
	<br>
	<%@ include file="resources/includes/jgd-footer-distributed.html"%>

</body>
</html>