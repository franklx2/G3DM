<link rel="stylesheet" type="text/css" href="resources/css/tabbed-form.css">
<script type="text/javascript" src="resources/javascript/tabbed-form.js"></script>


			<div class="col-sm-12" >
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-3">
								<a href="#" class="active" id="login-form-link">Characters</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body" >
						<div class="row">
							<div class="col-sm-12">
								<div id="login-form" action="" method="post"  style="display: block;">
									<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
									 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
									<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
									<jsp:setProperty property="pcUsername" name="CharactersBean" value="${param.username }"/>
									<%@ page import="org.JGDungeons.FLStudios.object.*" %>
									<c:set var="characters" value="${CharactersBean.characters}"></c:set>
									<c:set var="length" value="${fn:length(characters)}"></c:set>
					              	<!-- 10:52 -->
					              		<c:choose>
					              			<c:when test="${empty characters}">
					              				
							              		<h3 style="padding-left:2em">This user has no characters</h3>
					              				<br><br><br><br>
					              			</c:when>
					              			<c:when test="${not empty characters}">
												<jsp:include page="/resources/includes/user-detail.jsp" />
					              			
					              			</c:when>
					              		
					              		</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
