	<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="utf-8">
<title>Middle Earth Home</title>
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

    
</head>
    
    

	
<body>
		<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>
		<%@ include file="/resources/includes/navbar.jsp" %>
		<%@ page import="java.util.*" %>
		<!-- before -->
   		<c:out value="${param.background }"></c:out><br>
   		<c:out value="${param.pc_id }"></c:out><br>
		<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
		<jsp:setProperty property="pcUsername" name="CharactersBean" value="${UsersBean.username }"/>
		<jsp:setProperty property="editId" name="CharactersBean" value="${param.pc_id}"/>
		<jsp:setProperty property="editBackground" name="CharactersBean" value="${param.background}"/>
		<!--  after bean  1130-->
		${CharactersBean.editId}
		${CharactersBean.editBackground}
		<%response.sendRedirect("Profile.jsp"); %>
		
		
		<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
</html>