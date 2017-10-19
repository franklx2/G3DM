<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-transition.js"></script>
<script type="text/javascript" src="http://twitter.github.io/bootstrap/assets/js/bootstrap-collapse.js"></script>
<link rel="stylesheet" href="resources/css/navbar.css">
<script src="resources/javascript/navbar.js"></script>
<jsp:useBean id="UsersBean" class="org.JGDungeons.FLStudios.bean.UsersBean" scope="session"></jsp:useBean>
<!-- 4:14 -->
<div id="navbar">    
  <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              	<a class="navbar-brand" href="index.jsp">FL</a>
            	</div>
            
	            <div class="collapse navbar-collapse" id="navbar-collapse-1">
	            	
	                <ul class="nav navbar-nav">
	                	<li>
	                	<a href="JGHome.jsp">Home</a>
	                	</li>
	                
	                    <li>
	                    <a href="RPInfo.jsp" >Role Playing Information</a>
	                    </li>
	                  
	                    <li>
	                      <a href="MEHome.jsp">Middle Earth</a> 
	                    </li>
	                    <li>
	                    <a href="GalaxyHome.jsp">Lausanne Galaxy</a>
	                    </li>
	                    
	                </ul>
	                <!-- definitely -->
	                <ul class="nav navbar-nav ">
	                		<c:if test="${UsersBean.loggedInStatus eq false}">
	                					<li>
	                						
			                				<a href='Login.jsp'>Sign in</a>
			                			</li>
			               	</c:if>
			               	
	                		<c:if test="${UsersBean.loggedInStatus eq true}">
	                					<li>
			                				<a href='Profile.jsp'> Profile</a>
			                			</li>	
			                			<li>
			                				<a href='SignOutHandler.jsp'> Sign out</a>
			                			</li>
               				</c:if>
	                			
	                			
	                			
	                		
	    					 
	            	</ul>
	            </div>
            </div>
        </div>
                
                
    </nav>
</div>