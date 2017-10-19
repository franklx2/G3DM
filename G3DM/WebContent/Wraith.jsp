<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Wraith</title>
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
	<h2>Wraith</h2>
	<ul>
		<li>Stealthy class focused on evading, setting traps, and doing damage using stealth techniques and ancient hexes tattooed on their body.</li>
		<li>main stats: DEX, EVA, WIL</li>
		<li>Trained to use melee weapons</li>
	</ul>
	<p>
		<h3>Daily</h3>
		<ul>
			<li>Hidden Wrath – Wraith utilizes a powerful dark magic hex to become virtually invisible for a number of turns equal to their character level. While cloaked, Wraith releases poison into the air that poisons enemies that are within a 10 ft radius of them.  Poison does damage per turn equal to 1/3 x character level. Poison lasts 5 turns.</li>
		</ul>
		
		<h3>Abilities</h3>
		Starting Abilities</br>
		<ol style="1">
			<li>Muffle – Utilize a sound and light reducing hex to make footsteps much quieter for a number of turns equal 2 x Power Level. Enemies must roll a DC + INT mod vs. Wraith’s d20 + 2 x EVA mod to check if they notice Wraith. Enemies within 5 feet of Wraith roll a DC, enemies within 10 feet of Wraith roll one as well, however, they have their final roll halved. Enemies roll checks during their turn, not during Wraith’s turn. While cloaked, their main accuracy DC’s have their Power Level added to the roll.</li>
			<li>A Touch of Death – Wraith casts a hex upon an enemy within 20 feet. The enemy is cursed, and takes ½ x d# x Power Level damage per turn for 3 turns. Each turn enemies roll d# + WIL mod vs Wraith’s d20 + WIL mod to see if they resist the hex damage for that turn.</li>
		</ol>
		Lvl 3 </br>
		<ul>
			<li>Silent Blessing – Wraith utilizes a hex to curse a spot on the ground within 20 feet of them. Enemies within a 5 foot radius take damage equal to (1/3 x d# x Power Level) + WIL mod. Enemies are unaware of the curse until they take damage equal to 1/3 of their overall health. Cursed spot lasts for 4 turns, or until another Silent Blessing is cast.</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Fleeting Shadows – Wraith utilizes a hex to transform themselves into a half shadow form. This reduces their overall weight and allows them to increase their movement distance by 10 feet for this turn and the next two turns. During this time, any evasion roll Wraith has to make adds their EVA mod and their WIL mod to the roll. Wraith can still move during this turn.</li>
		</ul>
		
		Lvl 7 </br>
		<ul>
			<li>Focused Wrath – Wraith utilizes an impact boosting hex to apply more damage to their next attack. Wraith’s next attack will deal an additional WIL mod x 2 damage and for the accuracy DC roll, add 2 x their WIL mod instead of the normal mod applied if they are 5 feet or closer to their target enemy.</li>
		</ul>
	</p>
    </div>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>