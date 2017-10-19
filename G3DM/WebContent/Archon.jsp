<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="UTF-8">
<title>Archon</title>
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
	<h2>Archon</h2>
	<ul>
		<li>A frontline mage capable of conducting the flow of magic on the battlefield, the Archon focuses on STR and INT. Well versed in physical combat.</li>
		<li>main stats: STR, INT</li>
		<li>trained to use melee weapons</li>
	</ul>
		
	<p>
		<h3>Daily</h3>
		<ul>
			<li>Polarity Overload – Chains a volatile current of magic through a group of enemies, capping at 5 x the total number of Daily’s that the Archon knows. Initial damage is 20% of the first target’s total health. This damage is multiplied by the Archon’s INT each time it jumps. (ex: a mod of 2 would double initial 20% to 40% to 80% to 160% to 320%)</li>
		</ul>
		<h3>Abilities</h3>
		Starting abilities</br>
		<ol style="1">
			<li>Polarity Shift – Takes a magic debuff from a friendly player and places it on an enemy of choice, multiplying the number of enemies targetable by power level.</li>
			<li>Spell block – Envelopes the Archon in a shield capable of redirecting any magical ability a number of times equal to Power Level. Redirection success relies on Archon d20 + INT mod vs enemy ability roll. The shield makes no distinction between friend and foe.</li>
		</ol>
		
		Lvl 3 </br>
		<ul>
			<li>Polarity Absorption – For two turns, all magical attacks against the Archon are halved. Negated damage is stored until the third turn, at which point it is added to a physical attack. The Archon is unable to use other abilities whilst channeling Polarity Absorption.</li>
		</ul>
		
		Lvl 5 </br>
		<ul>
			<li>Null-Arcane Shell – Until the Archon’s next turn, summon a shell of magical energy encompassing a 10 + (5ft x basic power level) diameter, with the focal point of the shell up to 15 + (5ft x basic power level) away from the Archon. All magic damage within the shell is reduced by the Archon’s INT . DOT damage is reduced by half so long as it falls within the shell. Stun duration caused by magic is halved. The shell makes no distinction between friend and foe and is not channeled.</li>
		</ul>
		
		Lvl 7 </br>
		<ul>
			<li>Arcane Reversal – Archon casts a spell that reduces an enemy’s INT mod by the Archon’s INT mod for two turns.</li>
		</ul>
	</p>	
	
    </div>
    </div>
    </div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>