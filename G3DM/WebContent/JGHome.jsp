<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="utf-8">
<title>J.G. Dungeons</title>
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


</head>




<body>



	
	<%@ include file="resources/includes/JGDHomeJumbotron.jsp"%>
	<%@ include file="resources/includes/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-5">
				<div class="container-fluid">
					<div class="panel panel-default">
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-10">
					
									<div class="col-sm-12">
						            		<h2>Find a user</h2>
						            		<form action="SearchHandler.jsp" method="post">
									            <div id="custom-search-input">
									                <div class="input-group col-md-12">
									                    <input name="username" type="text" class="form-control input-md" placeholder="Username" />
									                    <span class="input-group-btn">
									                        <button class="btn btn-info btn-md" type="submit">Search</button>
									                            <i class="glyphicon glyphicon-search"></i>
									                        </input>
									                    </span>
									                </div>
									            </div>
									            <c:if test="${param.found eq 0 }">
										            <small class='text-muted' style='color:red;'>User not found</small>
									            </c:if>
								            </form>
									</div>
								</div>
							</div>
						</div>
					<br>
					</div>
					
					<div class="panel panel-default">
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-10">
					
									<div class="col-sm-12">
								        
								    	<div class="col-sm-6">
									        <h3>Role Playing Information</h3>   
									           
								            <p>
								            	<a href="BasicsGuide.jsp">Basics Guide</a>
								            </p>
								            
								            <p>
								            	<a href="PlayerCharacterSheet.jsp">Player Character Sheet</a>
								            </p>
								            
								            <p>
								            	<a href="PowerLevel.jsp">Power Level</a>
								            </p>
								            
						            	</div>
						            	
						            	<div class="col-sm-6">
						            		<h3>Universes</h1>   
								           
								            <p>
								            	<a href="MEHome.jsp">Middle Earth</a>
								            </p>
								            
								            <p>
								            	<a href="GalaxyHome.jsp">Lausanne Galaxy</a>
								            </p>
						            	</div>
						            	
						            	
									</div>
		            			</div>
		            		
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<c:if test="${UsersBean.loggedInStatus eq false}">
			<div class="col-sm-5">
				<div class="container-fluid">
					
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-6">
								<div class="well" style="background-color:white;">
						            	<%@ include file="/resources/includes/JGDHomeLoginTile.jsp" %>
				            	</div>
								</div>
							</div>
						</div>
				</div>
			</div>
           	</c:if>
		</div>
	</div>

			<br><br>
			<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>