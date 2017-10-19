<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="resources/css/characters.css">
<script src="resources/javascript/characters.js"></script>
<script src="resources/javascript/test3.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
<%@ page import="org.JGDungeons.FLStudios.object.*" %>
<link rel="stylesheet" type="text/css" href="/resources/css/editCharacter.css">


<div class="container-fluid">
	<div class="row">
        <div class="col-sm-10 bhoechie-tab-container">
            <div class="col-sm-3 bhoechie-tab-menu">
              <div class="list-group">
              
              	<jsp:setProperty property="pcUsername" name="CharactersBean" value="${param.username}"/>
              	<c:set var="characterList" value="${CharactersBean.characters}"/>
					
					<c:forEach items="${characterList}" var="character" varStatus="loop">
						<c:choose>
							<c:when test="${loop.index == 0 }">
								<c:choose>
									<c:when test="${character.avatarEmpty == true }">
										<a href="#" class="list-group-item active text-center">
										
										<h4 class="glyphicon glyphicon-user"></h4>
										<br />${character.pcName }


										</a>
									</c:when>
									<c:otherwise>
										<a href="#" class="list-group-item active text-center">
										<h4 class="glyphicon glyphicon-user"></h4>
										<br />${character.pcName }
										</a>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<c:choose>
									
									<c:when test="${character.avatarEmpty == true }">
										<a href="#" class="list-group-item text-center">
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
								
							</c:otherwise>
						</c:choose>
					</c:forEach>

			 </div>
            </div>
		 	
            <script src="resources/javascript/div-toggle.js"></script>
            <div class="col-lg-9 col-md-9 col-sm-9 col-sm-9 bhoechie-tab">
				<c:forEach items="${characterList}" var="character" varStatus="loop"
					begin="0" end="10">
					<c:choose>
						<c:when test="${loop.index == 0 }">
								<div class="bhoechie-tab-content active">
										<div class="row">
											<div class="col-sm-12">
												
												<div class="col-sm-6 col-sm-offset-3">
													<c:choose>
														<c:when test="${character.avatarEmpty == true }">
															<img src="https://s3.amazonaws.com/flstudios/pics/default_avatar_male.jpg" class="img-thumbnail" alt="avatar" width="350" height="350" >
														</c:when>
														<c:otherwise>
															<img src="${character.avatarLocation }" class="img-thumbnail" alt="avatar" width="500" height="500" > 
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12">
													<h5><b>${character.pcUniverse } - Lvl ${character.pcLevel} ${character.pcRace} ${character.pcClass } 
													</b>&nbsp&nbsp
													
													</h5>
													<hr>
													<div class="col-sm-6">
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
											<div class="background">
												<div class="col-sm-12">
													<b>Character Background</b>
													<br>
													<div >
														<c:choose>
															<c:when test="${character.pcBackground == 'Click the edit button to write your own character background' }">
																There is nothing about this character yet
															</c:when>
															<c:otherwise>
																${character.pcBackground} 
															</c:otherwise>
														</c:choose>
													<hr>
													</div> 
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
												
												<div class="col-sm-6 col-sm-offset-3">
													<c:choose>
														<c:when test="${character.avatarEmpty == true }">
															<img src="https://s3.amazonaws.com/flstudios/pics/default_avatar_male.jpg" class="img-thumbnail" alt="avatar" width="350" height="350" >
														</c:when>
														<c:otherwise>
															<img src="${character.avatarLocation }" class="img-thumbnail" alt="avatar" width="500" height="500" > 
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</div>
									<div class="row">
											<div class="col-sm-12">
												<h5><b>${character.pcUniverse } - Lvl ${character.pcLevel} ${character.pcRace} ${character.pcClass } 
												</b>&nbsp&nbsp
												
												</h5>
												<hr>
												<div class="col-sm-6">
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
											<div class="background">
												<div class="col-sm-12">
													<b>Character Background</b>
													<div >
														<c:choose>
															<c:when test="${character.pcBackground == 'Click the edit button to write your own character background' }">
																There is nothing about this character yet
															</c:when>
															<c:otherwise>
																${character.pcBackground} 
															</c:otherwise>
														</c:choose>
														<hr>
													</div>
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
