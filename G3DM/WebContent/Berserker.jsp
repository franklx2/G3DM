<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Berserker</title>
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
	<h2>Berserker</h2>
	<p>
		<ul>
			<li>Melee class focused on a powerful array of offensive skills. </li>
			<li>Main stats: STR, DEX</li>
		</ul>		 
		<h3>Daily<h3>
		<h3>Abilities</h3>	 
		Starting Abilities: </br>
		<ol style="1">
			<li>Rend Flesh – A viscous attack which deals a grievous wound to an enemy.</br> 
			Deal basic power level damage + STR mod. Attacked enemy bleeds, taking damage equal to DEX mod for a number of turns equal to (1 x power level).<li>  
			
			<li>Bash – Slams the ground in great fury, sending out a shockwave to the surrounding area.</br>  
			All enemies and allies within 5 feet of the Berserker take damage equal to ½ STR mod.</li>
		</ol>	
		Lvl 3: </br>
		<ul> 
			<li>Furious Strike – Powerful attack unleashed in a bit of rage.</li> 
			<li>Berserker rolls a d4 to determine how angry it is (1 = annoyed, 2 = mad, 3 = fuming, 4 = enraged).</br>  
			Add (this number x basic power level) to STR mod for the turn. Deal basic attack + new STR mod. </li>   
		</ul>
	</p>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/me-footer-distributed.html" %>
</body>
</html>