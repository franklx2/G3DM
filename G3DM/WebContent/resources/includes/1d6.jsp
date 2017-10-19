<script type='text/javascript' src='resources/js-anim-d6-dice-roller/1d6.js'></script>

<script type='text/javascript'>
 function attack(result) {
  	var sequence = document.getElementById("sequence");
  	var variable = document.getElementById("variable");
  	var counter = document.getElementById("variable").innerHTML;
  	var string ="";
  	var nrollattribute = "";
  	var nrollvalue = "";
  	counter++;
  	nrollattribute = counter + "-roll-atribute";
  	nrollvalue = counter + "-roll-value";
  	string = counter + "-roll-label"
  	
  	document.getElementById(string).innerHTML = result + " points to allocate" 
  	document.getElementById(nrollvalue).setAttribute("value", result);
  	document.getElementById("variable").innerHTML=counter;
  	
 	document.getElementById("")
 }
	var counter = document.getElementById("variable").innerHTML;
	console.log(counter);
	if(counter <7)
		{
	D6.setBaseUrl('resources/js-anim-d6-dice-roller/');
	D6.dice(4, attack);
		}
 </script>