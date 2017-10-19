<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Warden</title>
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
    



<%@ include file="/resources/includes/MEHomeJumbotron.jsp" %>    
<%@ include file="/resources/includes/navbar.jsp" %>

	<div class="container-fluid">
    <div class="col-md-12">
    <div class="col-md-2"></div>
    <div class="col-md-10">
	<h2>Warden</h2>
	<p>
		<ul>
			<li>Melee class focused on a balance of offensive and defensive capabilities.</li>
			<li>Main stats: STR, CON</li> 
		</ul>
		<h3>Daily</h3>  
		<h3>Abilities</h3>		
		Starting Abilities: </br>
		<ol style="1">
			<li>Heroic Strike – A strong attack dealing great damage to a foe and drawing the attention of surrounding enemies. </br>
			Deal basic power level damage + STR mod. Enemies within 5 feet of the Warden will focus their attention on the class for a # of turns equal to ½ CON mod, unless disrupted by another player.</li> 
			 
			<li>Tower – Raise your shield in stalwart defense.</br> 
			Next time the Warden is attacked, damage is completely negated. Roll d10 + CON mod vs attacker’s d20 + STR. If Warden rolls higher, attacker is stunned for a turn.</li> 
		</ol>
			Lvl 3: </br> 
		<ul>
			<li>Battle Charge – Lead your allies into the fray.</li> 
			<li>Charge rapidly towards a target and quickly strike # of normal attacks equivalent to basic power level.</br>    
			Charged target focuses its attention on Warden for next turn.</li>
		</ul>
	</p>
    </div>
	</div>
	</div>
	<%@ include file="resources/includes/me-footer-distributed.html" %>
</body>
</html>