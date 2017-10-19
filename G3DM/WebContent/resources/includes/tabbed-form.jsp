<link rel="stylesheet" type="text/css" href="resources/css/tabbed-form.css">
<script type="text/javascript" src="resources/javascript/tabbed-form.js"></script>


			<div class="col-sm-12">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-3">
								<a href="#" class="active" id="login-form-link">Characters</a>
							</div>
							<div class="col-sm-3">
								<a href="#" id="register-form-link">New Character</a>
							</div>
							
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-12">
								<div id="login-form" action="" method="post"  style="display: block;">
									<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
									 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
									<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
									<jsp:setProperty property="pcUsername" name="CharactersBean" value="${UsersBean.username }"/>
									<%@ page import="org.JGDungeons.FLStudios.object.*" %>
									<c:set var="characters" value="${CharactersBean.characters}"></c:set>
									<c:set var="length" value="${fn:length(characters)}"></c:set>
					              	<!-- 10:52 -->
					              		<c:choose>
					              			<c:when test="${empty characters}">
					              				
							              		<h3 style="padding-left:2em">No characters found. Click on New Character above to create your character.</h3>
					              				<br><br><br><br>
					              			</c:when>
					              			<c:when test="${not empty characters}">
												<jsp:include page="characters.jsp" />
					              			
					              			</c:when>
					              		
					              		</c:choose>
								</div>
								
								
								
								<!-- Form validation -->
								<script type="text/javascript">
								    function validateForm()
								    {
								    var a=document.forms["Form"]["character-name"].value;
								    var b=document.forms["Form"]["universe"].value;
								    var c=document.forms["Form"]["class"].value;
								    var d=document.forms["Form"]["race"].value;
								    var f=document.forms["Form"]["1-roll-attribute"].value;
								    var g=document.forms["Form"]["1-roll-value"].value;
								    var h=document.forms["Form"]["2-roll-attribute"].value;
								    var i=document.forms["Form"]["2-roll-value"].value;
								    var j=document.forms["Form"]["3-roll-attribute"].value;
								    var k=document.forms["Form"]["3-roll-value"].value;
								    var l=document.forms["Form"]["4-roll-attribute"].value;
								    var m=document.forms["Form"]["4-roll-value"].value;
								    var n=document.forms["Form"]["5-roll-attribute"].value;
								    var o=document.forms["Form"]["5-roll-value"].value;
								    var p=document.forms["Form"]["6-roll-attribute"].value;
								    var q=document.forms["Form"]["6-roll-value"].value;
								    var r=document.forms["Form"]["7-roll-attribute"].value;
								    var s=document.forms["Form"]["7-roll-value"].value;
								    var t=document.forms["Form"]["universe"].value;
								    var u=document.forms["Form"]["class"].value;
								    var v=document.forms["Form"]["race"].value;
								    if (a==null || a=="",b==null || b=="",c==null || c=="" || c=="Select",d==null || d=="" || d=="Select",
								    	f==null || f=="",g==null || g=="",h==null || h=="",
								    	i==null || i=="",j==null || j=="",k==null || k=="",l==null || l=="",
								    	m==null || m=="",n==null || n=="",o==null || o=="",p==null || p=="",
								    	q==null || q=="",r==null || r=="",s==null || s=="",t==null || t=="",
								    	u==null || u=="",v==null || v=="")
								      {
								    	console.log("if");
								      alert("Please Fill All Required Fields");
								      return false;
								      }else
								    	  	console.log(b);
								    		if(c=="Select" && d=="Select")
							    			{
							    				console.log("Double whammy");
							    				alert("Please select a class and a race");
							    				return false;
							    			}
										    if(c=="Select")
							    			{
										    	console.log("Got you bitch");
										    	alert("Please select a class");
												return false;					    			
							    			}
										    if(d=="Select")
							    			{
										    	console.log("Got you bitch");
										    	alert("Please select a race");
												return false;					    			
							    			}
										    console.log(c);
										    console.log(d);
								    	 	console.log("else");
									    	return true;
								    }
								    </script>
								<form name="Form" id="register-form" action="CopyCreateCharacterHandler.jsp" onsubmit="return validateForm()" method="post" role="form" style="display: none;">
									
									<div class="col-sm-12">
										<div id="variable" style="display:none">0</div>
										
										<jsp:include page="stat-dropdown.jsp" />
										<input id="username" name="username" value="${UsersBean.username }"  style="display:none">
								</form>
										
								
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
