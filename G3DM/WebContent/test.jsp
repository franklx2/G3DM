	<!DOCTYPE html>
<html>
<head>
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
 <!-- 2-26 -->
 <script type="text/javascript" src="resources/javascript/slide-panel.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="resources/css/characters.css">
    <script src="resources/javascript/characters.js"></script>
</head>
    
    

	
<body>
		<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>
		<%@ include file="/resources/includes/navbar.jsp" %>
		<%@ page import="java.util.*" %>
   		<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
		<%@ page import="org.JGDungeons.FLStudios.object.*" %>
   		
   		
<div class="container">
	<div class="row">
        <div class="col-lg-7 col-md-5 col-sm-8 col-sm-9 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-sm-3 bhoechie-tab-menu">
              <div class="list-group">
              	<jsp:setProperty property="pcUsername" name="CharactersBean" value="franklx2"/>
              	<c:set var="characterList" value="${CharactersBean.characters}"/>
					
					<c:forEach items="${characterList}" var="character" varStatus="loop">
						<c:choose>
							<c:when test="${loop.index == 0 }">
								<a href="#" class="list-group-item active text-center">
									<h4 class="glyphicon glyphicon-user"></h4>
									<br />${character.pcName }
								</a>
							</c:when>
							<c:otherwise>
								<a href="#" class="list-group-item text-center">
									<h4 class="glyphicon glyphicon-user"></h4>
									<br />${character.pcName }
								</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

			 </div>
            </div>
		 	<link rel="stylesheet" type="text/css" href="resources/css/editCharacter.css">
            <script src="resources/javascript/div-toggle.js"></script>
            <div class="col-lg-9 col-md-9 col-sm-9 col-sm-9 bhoechie-tab">
				<c:forEach items="${characterList}" var="character" varStatus="loop"
					begin="0" end="10">
					<c:choose>
						<c:when test="${loop.index == 0 }">
								<div class="bhoechie-tab-content active">
										<div class="row">
											<div class="col-sm-12">
												<h5><b>${character.pcUniverse } - Lvl ${character.pcLevel} ${character.pcRace} ${character.pcClass } 
												</b>&nbsp&nbsp
												
												</h5>
												<hr>
												<div class="col-sm-6"">
													<b>Strength:</b>  
													${character.pcStrength }<br>
													<b>Dexterity:</b>
													${character.pcStrength}<br>
													<b>Intuition: </b>
													${character.pcIntuition}<br>
													<b>Constitution: </b>
													${character.pcConstitution}<br>
												</div>
												<div class="col-sm-6">
													<b>Will:</b>
													${character.pcWill}<br>
													<b>Charisma:</b> 
													${character.pcCharisma}<br>
													<b>Evasion: </b>
													${character.pcEvasion}<br><br>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div id="background" class="col-sm-12">
												<b>Character Background</b><br>
												<div >
												At 
													<button style="float:right; position:relative;" class="glyphicon glyphicon-pencil "></button>
												<hr>
												</div>
											</div>
										</div>
									
								</div>
						</c:when>
						<c:otherwise>
						<!-- wtf? -->
								<div class="bhoechie-tab-content">
									<div class="row">
											<div class="col-sm-12">
												<h5><b>${character.pcUniverse } - Lvl ${character.pcLevel} ${character.pcRace} ${character.pcClass } 
												</b>&nbsp&nbsp
												
												</h5>
												<hr>
												<div class="col-sm-6"">
													<b>Strength:</b>  
													${character.pcStrength }<br>
													<b>Dexterity:</b>
													${character.pcStrength}<br>
													<b>Intuition: </b>
													${character.pcIntuition}<br>
													<b>Constitution: </b>
													${character.pcConstitution}<br>
												</div>
												<div class="col-sm-6">
													<b>Will:</b>
													${character.pcWill}<br>
													<b>Charisma:</b> 
													${character.pcCharisma}<br>
													<b>Evasion: </b>
													${character.pcEvasion}<br><br>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div id="background" class="col-sm-12">
												<b>Character Background</b>
												<div >
													At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat
													<button style="float:right; position:relative;" class="glyphicon glyphicon-pencil "></button>
													<hr>
												</div>
											</div>
										</div>
								</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
        </div>
  </div>
</div>		
		
		<%@ include file="resources/includes/jgd-footer-distributed.html" %>
	</body>
</html>