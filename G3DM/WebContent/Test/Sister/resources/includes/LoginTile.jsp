<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<link href="/resources/css/jgd-jumbotron.css" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<h3>Login</h3>
		<form action="LoginHandler.jsp" method="post">
			
			<fieldset class="form-group">
				<label for="username">Username</label> 
				<input type="text" class="form-control" id="username" name="username" placeholder="Username">
			</fieldset>
			
			<fieldset class="form-group">
				<label for="exampleInputPassword1">Password</label> 
				<input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
			</fieldset>
			 
			<button type="submit" class="btn btn-primary">Login</button>
			<c:set var="loginFailed" value="${param.login}"></c:set>
			
			<c:if test="${loginFailed eq 0}">
				<small class='text-muted' style='color:red;'>Login failed</small>
			</c:if>
			
			</br>
			<small class="text-muted">Click <a href="SignUp.jsp">here</a> to sign up.</small>
		</form>
</div>