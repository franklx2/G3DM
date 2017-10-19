<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Cleric</title>
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
	<h2>Cleric</h2>
	<p>
		<ul>  
			<li>Spell class focused on calling forth the blessings of the Valar for support.</li>
			<li>Main stats: INT, CHR</li>
		</ul>
		 
		<h3>Daily</h3>
		<h3>Abilities</h3>	 
		Starting Abilities: </br>
		<ol style="1">  
			<li>Gift of Manwe – Call upon the light of creation to aid your allies.</br>
		Heal the target by basic power level + INT mod.</li>   
		
			<li>Waters of Ulmo – Sooth your allies with blessed water.  </br>
		Remove a poison, disease, or magic debuff from an ally, replacing it with Ulmo’s Blessing. Target regains HP equivalent to ½ INT mod for # of turns equal to CHR mod. Target cannot be debuffed by poison or magic while retaining Ulmo’s Blessing.</li>   
		</ol>
		Lvl 3:  </br>
		<ul>
			<li>Mercy of Mandos – Pull your allies back from death’s door.</br> 
			Return a fallen ally to combat. Target receives HP equivalent to Cleric’s basic power level x INT bonus.</li>  
		</ul>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/me-footer-distributed.html" %>
</body>
</html>