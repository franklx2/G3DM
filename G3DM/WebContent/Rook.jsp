<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Rook</title>
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
	<h2>Rook</h2>
	<ul>
		<li>melee class focused on taking damage for allies, reflecting damage back at enemies, and intimidation tactics</li>
		<li>main stats: STR, CON, CHR</li>
		<li>recommended defensive focus: Armor Points</li>
		<li>Trained to use melee weapons</li>
	</ul>	
	<p>
		<h3>Daily</h3> </br> 
		<ul>
			<li>Thunderous Shout – Knocks back all enemies currently engages in combat by 10ft, leaving them stunned for a full turn. Enemies also suffer a dramatic decrease of 6 stat points for the turn they are stunned.</li> 
		</ul>
		<h3>Abilities</h3> 
		Starting Abilities </br>
		<ol style="1">
			<li>Phalanx – Raises shield to add d# x Power Level + CON mod as armor to Rook. Up to 2 allies can take cover behind Rook. Any damage taken by allies is transferred to Rook, and allies can still attack from cover. Phalanx ends when total armor points added have been used up. If Rook moves during their turn, allies designated as taking cover using Phalanx will move with them.</li>
			<li>Counter – Next time an enemy attacks Rook, roll a d# x Power Level + d10 + CON vs the attacking enemy’s d20 + STR. If Rook rolls higher, attack damage is negated and enemy takes ½ original attack damage. Counter stays in effect until Rook is attacked. Can be stacked.</li>
		</ol>
		Lvl 3 </br>
		<ul>
			<li>Vulgar Gesture – Rook uses body language to make an obscene gesture to all enemies within 30ft. Rook rolls a d20 + CHR vs all enemies’ d# + WIL. If any enemies roll lower than Rook, they forget about their current target and focus on attacking Rook.</li>
		</ul>
				
		Lvl 5 </br>
		<ul>
			<li>Determined Stance – Roll d# x Power Level, then add ½ that to AP. Armor Points last indefinitely or until they are all used up.</li>
		</ul>
		Lvl 7 </br>
		<ul>
			<li>Steel Gaze – Eyes an enemy with a fearsome gaze. Roll d# x Power Level + d6 + CHR vs enemy’s d20 + WIL. If Rook rolls higher, enemy ceases attacking and retreats for 2 turns.</li>
		</ul>
		
		Lvl 9 </br>
		<ul>
			<li>Steel Blood – Roll d# x Power Level, then add ¾ that to CON. Steel Blood lasts a number of turns equal to 1 + Power Level.</li>
		</ul>
	</p>	
    </div>
</div>
</div>
</div>
<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>