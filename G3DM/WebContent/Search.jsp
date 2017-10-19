	<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="utf-8">
<title>Search Users</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>   
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-transition.js"></script>
<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-collapse.js"></script>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

    
</head>
    
    

	
<body>
		<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>
		<%@ include file="/resources/includes/navbar.jsp" %>
		<%@ page import="java.util.*" %>
		
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-2"></div>
				<div class="col-sm-10">
					
					<div class="container">
						<div class="row">
					        <div class="col-md-6">
					    		<h2>Find a user</h2>
					            <div id="custom-search-input">
					                <div class="input-group col-md-12">
					                    <input type="text" class="form-control input-lg" placeholder="Username" />
					                    <span class="input-group-btn">
					                        <button class="btn btn-info btn-lg" type="button">
					                            <i class="glyphicon glyphicon-search"></i>
					                        </button>
					                    </span>
					                </div>
					            </div>
					        </div>
						</div>
					</div>
					
				</div>
			</div>
		
		
		</div>
		
		<br><br><br><br><br>
		<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
</html>