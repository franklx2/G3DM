<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Monk</title>
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
	<h2>Monk</h2>
		<ul>
			<li>main stats: STR, DEX</li>
			<li>focuses on hand-to-hand melee combat and does not suffer any penalties for not wielding a weapon. Melee damage is calculated as usual, and the Monk receives a bonus to initiative rolls equal to ¼ their character level. Monk will suffer an initiative roll loss equal to 1/3 their character level if attempting to wield a weapon.</li>
		</ul>
		
		<h3>Daily</h3>
		<ul>
			<li>Focused Chi – Add together (total health – current health) of all player and enemy units currently engaged in combat, and then add the total to the attack of the Monk for the next 3 turns.</li>
		</ul>
		
		<h3>Abilities</h3>
		Starting Ablilities</br>
		<ol style="1">
			<li>Eagle’s Dive: Spring up on to a target up to 10ft away, doing damage equal to d# x Power Level + STR mod and landing 5ft away. If hostile, target must roll a d20 + CON mod against the Monk’s d20 + CON mod to resist knock down. If target successfully resists, target takes half damage.</li>
			<li>Simian Frenzy: 2-5 strikes on a melee range target, each strike doing basic power level damage. To determine how many strikes, roll percentile dice: 10-20 is 2 hits, 20-50 is 3 hits, 60-80 is 4 hits, and 90-100 is 5 hits.</li>
		</ol>
		
		Lvl 3 </br>
		<ul>
			<li>Fist of Thunder: Land a fierce blow on the target, dealing damage according to power level + STR mod. Until the target’s next turn, subsequent physical attacks have a chance to stun the target based on the attacker’s d20 roll + CON mod vs the target’s d20 roll + CON mod.</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Gentle Palm: Dash to a target up to 10ft away, striking out and dealing basic power level damage +DEX mod. Chance to disarm target is calculated as 7 x (Power Level + ½ INT mod).</li>
		</ul>
		
		Lvl 7 </br>
		<ul>
			<li>Ascending Force: Monk launches target into the air, removing them from combat for a number of turns equal to Power Level used. When target lands, Monk rolls for damage using normal melee attack calculations. This second attack does not take up a turn and is calculated before the beginning of the current turn.</li>
		</ul>
	</p>	
    </div>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>