<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://s3.amazonaws.com/flstudios/pics/FL.png">
<meta charset="utf-8">
<title>Basics Guide</title>
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
    



<%@ include file="/resources/includes/JGDHomeJumbotron.jsp" %>    
<%@ include file="/resources/includes/navbar.jsp" %>
	<div class="container-fluid">
		<div class="col-md-12">
		<div class="col-md-2"></div>
		<div class="col-md-10">
		<h2>General Information for Players</h2>
		
		
		<h3>Character Stats:</h3> 
		<p>
			Strength (STR) - a measure of how physically strong a character is. Affects melee attack damage. </br>
			Dexterity (DEX) - a measure of the amount of how precise a character's physical actions are. Used in determining the accuracy of basic melee and ranged attacks. </br>
			Intuition (INT) - a measure of how perceptive a character is at figuring out complex situations. Also represents how adept a character is at using magic and arcane arts. Used in determining the accuracy of basic magic attacks. </br>
			Constitution (CON) - a measure of how much stamina a character has. Determines a characters ability to resist physical ailments. Affects the total HP of a character. </br>
			Willpower (WIL) - a measure of a character's mental fortitude and their ability to resist magical and mental effects. Affects defense rolls against magic/arcane basic attacks. Affects damage of basic magic/arcane attacks. </br>
			Charisma (CHR) - a measure of a character's ability to persuade other sentient beings. Rarely used in combat, except for certain class abilities. </br>
			Evasion (EVA) - a measure of a character's ability to avoid physical harm. Affects defense rolls against melee and ranged basic attacks. </br>
		</p>
			
		<p>
			<h3>Creating a Player Character:</h3>
			<ol type="1">
				<li>Decide which race and class you want your character to be. These choices depend on what kind of playstyle that you want to go for, both in and out of combat.</li>
				<li>Now you will create the initial numbers for each of your character's seven stats. Start by rolling four d6's at the same time, then add up the three highest values of the numbers you rolled, and write this number down. For example, say you rolled a 3, 5, 2, and 5. You would add up the 5, 3, and second 5 to get 13.</li> 
				<li>Repeat step 2 until you have seven values.</li>
				<li>Assign each of the seven values to the stats in any way you see fit, assigning one value to each stat. Which values you assign to each stat will depend on what kind of character you want to play. For example, if you are playing a melee character, you will probably want to assign one of the greater values to the STR stat, etc.</li>
				<li>Name your character, and come up with some basic background information about them. This will allow both you and the DM to flesh out your character as the campaign progresses. You are now done creating your character. Sweet.</li>
			</ol>
			The page <a href="PlayerCharacterSheet.jsp">��Player Character Sheet</a> offers a download for an excel sheet that�� gives you input boxes in which to write all your character's information, and will then calculate all your dice modifiers, as well as total HP and XP required to level up.
		</p>	
			
		<p>	
			<h3>Dice Roll Modifiers</h3>
			
			Your character's stats determine the modifiers that are applied to each dice roll you make. For example, if you attempt an action that requires a DEX check, you will roll a d20 and add your DEX modifier to that dice roll. When you state that you want to attempt an action, the DM will generate a number that you have to roll higher than in order to successfully complete the action. For the sake of immersion, the DM cannot tell you the exact number you will have to beat, however they will tell you how difficult the action will be in relation to your skill level (easy, moderate, difficult, very difficult, etc.) You can then either choose to continue with your attempt, or pursue a different course of action. </br>
			It is easier to show how different values for stats correspond to dice modifiers through a table: </br></br>
			
	        <table style="width:100%">
	            <tr><td>Stat Value</td><td>11-12</td><td>13-14</td><td>15-16</td><td>17-18</td><td>19-20</td><td>21-22</td><td>23-24</td></tr>
	            <tr><td>Dice Modifier</td><td>+0</td><td>+1</td><td>+2</td><td>+3</td><td>+4</td><td>+5</td><td>+6</td></tr>
	        </table>
	        </br>
				
	        This pattern continues both past 24 and below 11, however once the values fall below 11, they become negative numbers that actually subtract from your roll instead of adding to it, so 9-10 would give a modifier of -1, a 7-8 would give -2, and so on. </br>
	    </p>
			<h3>Ability Power Level System</h3>
		<p>	
				In order to both balance a player’s ability use with their current level and allow general ability potency to scale with the player, the Ability Power Level System (APLS) was created. These are the basic guidelines for APLS:
	        <ol>
	            <li>Each power level has a certain number of available uses per level.</li>	
	            <li>The number of uses of each power level and which power levels are available depends on the current level of the player’s character.</li>	
	            <li>Every use of an ability in combat consumes one use or “slot” of the selected power level./li>	
	            <li>The player’s character cannot use any more abilities in combat once they have used up all of their power level slots.</li>	
	            <li>A character's available amount of slots resets and refills at the end of every combat encounter.</li>	
	            <li>Almost every ability scales in potency with the power level that is used. The greater the power level, the more potent the ability will be.</li>	
	        </ol>
			APLS can be thought of as a way to set the amount of “charges” that power a character's abilities in combat. Using an ability uses up one charge, and any charge that is used up in combat is refilled at the end of that combat encounter. Almost all abilities </br>
	    </p>
	
	    <h3>XP, Leveling, and HP</h3>
	    <p>    
	        <ul>
	            <li>XP needed to level up = (player level)^2 x 100, XP is awarded to the players by the DM for successful actions, defeating enemies, etc. XP is usually awarded at the end of an encounter.</li>
	            <li>Upon leveling up, the XP needed to level up is subtracted from the XP that the player has gained, and any remaining XP left over will count towards the progression to the next level.</li>	
	            <li>Gain a new ability every odd level</li>	
	            <li>Add 1 stat point per level</li>
	            <li>Total HP = 8 + CON modifier + 2 x Player Level</li>
	        </ul>
	        <h3>Basic Attacks</h3>
	        <ul>
	            <li>Physical attack damage = d4 + 1/2 x STR mod</li>
	            <li>Ranged attack damage = d4 + 1/3 x DEX mod</li>
	            <li>Magic/Energy/non-physical, non-projectile damage = d4 + 1/3 x INT mod</li>
	                <ul style="list-style-type:none">
	                    <li>These attacks are more about the status effect than the pure damage.</li>
	                </ul>   
	            <li>Values are rounded down.</li>
	            <li>The ranges for basic attacks are shown in the “Distance of Various RP Actions” image.</li>
	        </ul>    
	        <h3>Using Abilities in Combat</h3>
	        <ul>
	            <li>Unlike basic attacks, abilities will always succeed when used in combat.</li>
	            <li>Refer to the section about the Ability Power Level System for an explanation of how abilities are affected by this system.</li>
			</ul>
	    </p>
	    <h3>Incapacitation and Revival</h3>
	    <p>
				When a player character loses all their health, they are incapacitated, and cannot attempt anymore actions. They can be revived for ¼ of their overall health by spending a certain amount of XP. This amount is equal to: (XP required for next level / 3) – (WIL mod ^3 + CON mod * 3) + 30. The XP is the sum of all XP spent by each party member, including the incapacitated player. Each party may spend however many of their XP that they choose to, as long as the total XP spent equals the amount required to revive the incapacitated party member. If this process is attempted in combat, spending XP counts as an action during the corresponding player’s turn. Once the total required XP is reached, the downed player is revived. </br>
				If the party cannot or chooses not to revive the incapacitated player, they have a few options that they may choose from. They can attempt to carry their body with them to be revived later, although the player(s) that are carrying the body cannot attack and have their EVA mod significantly reduced during dice rolls. They can also wait until they return to or reach a safe haven (designated by the GM.) Upon reaching the safe haven, they will find their lost party member revived with half health. Items and equipment can be looted from incapacitated players, and the incapacitated player can choose two pieces of equipment and 2 items to keep when revived at a safe haven. They can only choose from items that are left on their bodies after the party moves on.
	    </p>
	
	    <h3>Daily Abilities</h3>
		<p>		
			Daily abilities are extremely powerful abilities unlocked throughout the character's progression. Every character has four daily abilities. These abilities are called Dailys because they are only available to the player to use once during a day, due to their tide-turning capabilities. The time it takes for a full day to pass is dependent on the DM, but Dailys are usually limited to one use per play session.
		</p>
		
	    <h2>General Information for the DM</h2>
	
	    <p>
	        The following information is generally to help the DM handle the mechanics of the game, but players are encouraged to read it as well to get an idea of how the game is run.
	    </p>
	
	    <p>
	        <h3>Creating NPCs</h3>
	        <table style="width:100%"> 
	        <tr>
	            <td>NPC Type</td><td>STR</td><td>DEX</td><td>INT</td><td>CON</td><td>WIL</td><td>CHR</td><td>EVA</td><td>DC die</td><td>HP Bonus</td>
	        </tr>								 	
	        <tr>
	            <td>Weakling</td><td>(3-6)</td><td>(5-8)</td><td>(3-6)</td><td>(3-6)</td><td>(3-6)</td><td>(3-6)</td><td>(9-12)</td><td>d8</td><td>+2</td>
	        </tr>									
	        <tr>
	            <td>Standard</td><td>(13-16)</td><td>(13-16)</td><td>(13-16)</td><td>(13-16)</td><td>(13-16)</td><td>(11-14)</td><td>(15-18)</td><td>d12</td><td>+6</td>
	        </tr>							
	        <tr>
	            <td>Talented</td><td>(13-16)</td><td>(13-16)</td><td>(15-18)</td><td>(15-18)</td><td>(15-18)</td><td>(13-16)</td><td>(15-18)</td><td>d20</td><td>+8</td>
	        </tr>									
	        <tr>
	            <td>Elite</td><td>(17-20)</td><td>(17-20)</td><td>(19-22)</td><td>(19-22)</td><td>(17-20)</td><td>(17-20)</td><td>(19-22)</td><td>d20</td><td>+10</td>
	        </tr>									
	        </table>
	    </p>
	
	    <h3>Steps to Create an NPC</h3>
	    <p>
	        <ol style="1">    
	            <li>Decide which NPC type you want to create.</li>
	            <li>Roll d% for each stat. Each stat has a preset domain with 4 possible numerical values
	             (a, b, c, d) => (a – d). 10% to 20% gives value a, 30% to 50% gives value b, 60% to 80% gives value c, 90% to 100% (00) gives value              d.</li>
	            <li>Make any stat adjustments based off of role playing factors</li>
	        </ol></br>
	    	
	    	<ul>
	    		<li>Stats may be changed depending on role playing factors.</li>
	        	<li>If points should be added to one stat to fit the enemy, the same amount of points should be subtracted from another stat. Reverse is true as well. </li>
	        	<li>Character HP = 8 + Class HP + CON modifier. </li>
	        	<li>DC die is the die used to roll difficulty checks for the corresponding NPC type. </li>
	        	<li>All NPC allies use standard class HP bonus. </li>
	    	</ul>
	        
	    </p>
	    <h3>Generating Equipment</h3>
	
	    <h4>Melee Weapons:</h4>
	    <p>
	    	<ul>
		        <li>Weight affects speed and damage for melee weapons. </li>
		        <li>3 points of initiative = +1 point to damage after damage roll. The opposite is true as well.</li>
		        <li>Weapons can have weight checks to negate initiative penalties, (ex. A heavy staff that has a weight check of 2 requires at STR modifier of at least +2 to overcome the weapon’s initiative penalty.</li>
		        <li>Possible weapon status effects:</li>
		        <li>Bleed: target loses a certain amount of HP over the course of a number of turns. Duration resets if target is attacked again with the same weapon.</li>
		        <li>Stun: Player rolls a STR check against the target’s rolled CON check, if STR check is higher, the target is stunned during its next turn and cannot attack. If CON check is higher, no stun effect is applied.</li>
		        <li>Knockback: Player rolls a STR check against target’s rolled CON check, if STR check is higher, target is knocked back a determined distance. If CON check is higher, no knockback effect is applied.</li>
	   		</ul>
	    </p>    
	    <h4>Ranged Weapons:</h4>
	    <p>
		    <ul>
		        <li>Weapon power requires a proficiency (DEX) check.</li>
		        <li>A weapon that gives +1 to damage calculation requires at least +2 DEX mod to utilize the damage bonus.</li>
		        <li>Weapons can still be used if DEX check is not met, however no damage bonus will be added.</li>
		        <li>Thrown weapons have a range of half the base ranged weapon effective distance.</li>
		        <li>Weapon range can also require a proficiency check to grant additional range.</li>
		        <li>AoE ranged weapons may have a fractional multiplier to the base damage roll.</li>
		        <li>AoE weapons can hit friendly players and NPCs.</li>
	        </ul>
	    </p>
	    <h4>Armor, Clothing, etc:</h5>
	    <p>
	    	<ul>
		        <li>The AP (Armor Points) of a wearable item cancels damage points equal to its AP.</li>
		        <li>For every armor point a wearable provides, a point is subtracted from the EVA modifier during an EVA check roll.</li>
		        <li>Wearable items can provide buffs against certain status effects</li>
			</ul>
	    <h4>Attacking Specific Body Parts</h4>
	    <p>
	    	<ul>
		        <li>Increases difficulty of DEX check in relation to precision needed to hit.</li>
		        <li>Successful attacks on specific body parts have a chance to inflict extra status effects on enemies.</li>
		        <li>The decision of whether or not extra status effects are applied is made by the DM.</li>
	        </ul>
	    </p>
	
		<!-- Footer -->
		</div>
		</div>
	</div>
	<%@ include file="resources/includes/jgd-footer-distributed.html" %>
</body>
</html>