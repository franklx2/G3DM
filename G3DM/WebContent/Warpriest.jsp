<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Warpriest</title>
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
    



<%@ include file="/resources/includes/LGHomeJumbotron.jsp" %>    
<%@ include file="/resources/includes/navbar.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
           <div class="col-md-2"></div>
           <div class="col-md-10">
	<h2>Warpriest</h2>
	<ul>
		<li>A combatant priest sworn to a deity that can restore health to the wounded and dole last rites unto enemies.</li>
		<li>main stats: INT, CON</li>
		<li>Trained to use melee weapons</li>
	</ul>	
	<p>	
		<h3>Daily</h3>
		<ul>
			<li>Envoy of the End – Call forth a 10ft tall avatar of the Warpriest’s deity. Deity fights alongside Warpriest for 3 turns. Damage deity does = Warpriest’s cantrip + 4 x INT mod. Being within 10 feet of Deity grants + 2 to INT, WIL, and STR stats.</li> 
		</ul>
		
		<h3>Abilities</h3>
		Starting Abilities:</br> 
		<ol style="1">
			<li>Sanctify – Heal the target based on basic power level + INT mod.</li> 
			<li>Adulation of the Fervent – The Warpriest is cloaked with an aura that doubles CON or INT until the end of the next turn, while temporarily halving the other.</li>
		</ol>
		
		Lvl 3</br>
		<ul>
			<li>Smiting Blow – A mighty swing that deals basic power level damage + ½ STR mod  + ½ INT mod. If Smiting Blow kills, the next physical attack against the Warpriest is reduced by a number equivalent to ½ the CON mod.</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Resurrection – Pull back a recently departed soul to the mortal plane, as long as the recipient’s body is mostly intact. Resurrected comes back with hit points equivalent to percentage of total health equivalent to power level (ex: 1 = 10%, 2 = 20%, etc.)</li>
		</ul>
	</p>	
    </div>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>