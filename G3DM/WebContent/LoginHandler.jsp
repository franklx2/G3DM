<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Login Handler</title>
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
	    
	</head>
	<body>
	
		<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<jsp:setProperty name="UsersBean" property="username" value="${param.username}"></jsp:setProperty>
		<jsp:setProperty name="UsersBean" property="password" value="${param.password}"></jsp:setProperty>
		
		
		<c:out value="${UsersBean.loggedIn }"/>
		<c:if test="${UsersBean.loggedIn eq true}">
					<% response.sendRedirect("Profile.jsp");%>
		</c:if>
		<c:if test="${UsersBean.loggedIn eq false}">					
					<% response.sendRedirect("Login.jsp?login=0"); %>
		</c:if>			
		
	</body>
</html>