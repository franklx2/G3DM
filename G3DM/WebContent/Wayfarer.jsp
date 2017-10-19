<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Wayfarer</title>
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
	<h2>Wayfarer</h2>
	<ul>
		<li>Ranger focusing on doing damage from long range and pinning enemies down</li>
		<li>main stats: DEX</li>
		<li>Trained to use ranged weapons</li>
	</ul>
	<p>	
		<h3>Daily</h3>
		<ul>
			<li>Trained Finesse – For the next 5 turns, all normal attacks hit and do extra damage equal to player level.</li>
		</ul>
		
		<h3>Abilities</h3>
		Starting Abilities </br>
		<ol style="1">
			<li>Crippling Shot – Fires a shot that can root an enemy in place for a turn. Ranger rolls a d4 a number of times equal to the Power Level used + (2 x DEX mod) vs enemy’s d8 + CON mod. Does the basic damage for ranged attacks.</li>
			<li>Ranger’s Vision – for the next turn, raise the Archer’s DEX stat for his next attack by 1 x the number of 5 ft. intervals between the archer and the furthest away enemy.</li>
		</ol>
		
		Lvl 3 </br>
		<ul>
			<li>Rapid Fire – Attacks a number of times  = power level. Attack success rolls still apply.</li>
		</ul>
		
		Lvl 5 </br> 
		<ul>
			<li>Smoke Bomb – Fires a projectile that lands up to 35 feet away. Projectile releases a smoke cloud that reduces visibility for enemies within a 20 foot range. Enemies within the smoke cloud have their rolls reduced by 2 x Ranger's chosen ability power level.</li>
		</ul>
		
		Lvl 7</br>
		<ul>
			<li>Hasty Retreat – Somersaults backwards 20 feet while firing a shot at the spot where he was standing. Shot explodes doing d# x power level x 1/3 damage to surrounding characters. Can hit friendly players.</li> 
		</ul>
		
		Lvl 9 </br> 
		<ul>
			<li>Rebound – Wayfarer fires a shot at an enemy within ranged distance that</li> 
		</ul>
	</p>	
    </div>
    </div>
</div>
</div>
<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>