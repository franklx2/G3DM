<!DOCTYPE html>
<html>
	<head>
	<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
	<meta charset="UTF-8">
	<title>Sign Out</title>
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
		<%@include file="/resources/includes/JGDHomeJumbotron.jsp" %>
		<%@include file="/resources/includes/navbar.jsp" %>
		<div class="container-fluid">
    	<div class="row">
    	<!-- cremove used getsession -->
	        <div class="col-md-12">
	           <div class="col-md-2"></div>
	           <div class="col-md-10">
	           		<div class="col-md-5">
           				<h3>You have signed out</h3>
	           			<p>
	           				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	           				Click <a href="JGHome.jsp">here</a> to go home
	           			</p>
	           		</div>
	           </div>
	           </div>
	         </div>
         </div>
         </div>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
</html>