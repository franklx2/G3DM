<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Titan</title>
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
	<h2>Titan</h2>
	<ul>
		<li>melee class focused on receiving and dishing out large amounts of damage.</li>
		<li>main stats: STR, CON</li>
		<li>recommended defensive focus: Armor Points</li>
		<li>Trained to use melee weapons</li>
	</ul>
	<p>	
		<h3>Daily</h3></br>
		<ul>
			<li>Focused Rage – Uses advanced training to tap into the full potential of his adrenaline. Combat time seemingly slows down, allowing the Titan to attack up to three enemies 5 consecutive times in a row. Normal rolling restrictions still applied.</li> 
		</ul>
		<h3>Abilities</h3>
		Starting Abilities</br> 
		<ol style="1">
			<li>Ravage – Roll d%, then add that % of your base d4 + ½ STR  damage to a normal attack roll. The target takes that much total damage. Percentages are rounded to nearest whole number.</li>
			<li>Focused Distribution – Roll d20 + Power Level + CON. The next two attacks that hit Titan are to have their attacker(s) roll a d20 + STR. If their roll is lower, multiply the attacker’s attack damage by ¾ and split the damage up over the next number of turns equal to the amount of damage points Titan receives.</li>
		</ol>
			
		Lvl 3</br>
		<ul>
			<li>Bulk Up – Roll d# x Power Level, then add ½ that to STR and CON. Bulk up lasts a number of turns equal to 1 + (1/2 x Power Level used.)</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Earthquake – Roll d20 + STR vs all enemies’ d20 + EVA . Roll d3 x Power Level x ½. Any enemy within 2 meters takes this much damage.</li>
		</ul>
		
		Lvl 7 </br>
		<ul>
			<li>Strip the Soul – Transfer however many AP you like to STR stat points. This effect lasts for two turns.</li>
		</ul>
	</p>
    </div>
    </div>
</div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>