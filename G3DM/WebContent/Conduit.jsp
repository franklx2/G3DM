<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Conduit</title>
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
	<h2>Conduit</h2>
	<ul>
			<li>magic class focused on dealing large amounts of damage through direct attacks and by powering up their own basic attack.</li>
			<li>main stats: INT, WIL</li>
			<li>recommended defensive focus: either Armor Points or evasion</li>
			<li>trained to use magical artifacts as weapons</li>
	</ul>	
	<p>
		<h3>Daily</h3>
		<ul>
			<li>Phase Shift – Phase a being out of this dimension to the nether. Target takes half their total health as damage and is phased out for a turn. Requires two turns to charge.</li>
		</ul>
		
		<h3>Abilities</h3>
		Starting Abilities</br>
		<ol style="1">
			<li>Instantaneous Arc – Casts arc of arcane energy to deal d# x Power Level. </li>
			<li>Nether Wrath – Opens a portal in the sky to call down a blast of energy that damages all beings within a 15 foot diameter. Conduit rolls a d20 + INT  vs all affected targets d20 + WIL  – number of affected targets. This ability can damage friendly players and characters.</li>
		</ol>
			
		Lvl 3 </br>
		<ul>
			<li>Arcane Meditation – Meditate for a turn so that for the next two following turns, INT and WIL are increased by 2 + ½ x Power Level. Percentages are rounded up.</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Nether Fire – cast an otherworldly flame that burns for d4 + ½ INT . Deals an additional d4 + INT damage over 3 turns.</li>
		</ul>
		
		Lvl 7 </br>
		<ul>
			<li>Dark Shift – Conduit teleports up to 20 feet away to a selected location by opening up two portals to and from the nether. Conduit can attempt to teleport behind a solid object, but cannot tell what is on the other side before stepping through the portal. </li>
		</ul>
		
	</div>
    </div>
    </div>
    </div>
    <%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>