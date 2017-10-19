$(document).ready(function(){
    /*
     * To validate the form:
     * The dice rolls must be all assigned to unique attributes,
     * that is, one attribute type cannot repeat. 
     * To do this, we need to get a list of all currently allocated stats.
     * Then we will parse the list to see if there are any duplicates,
     * returning true if there is.
     * The validation returns false, alerts the user to 
     * fix the mistakes.
     */
	
	
	function validate()
	{
		var attributesList = [];
		var roll1 = document.getElementById("first-roll");
		var roll2 = document.getElementById("second-roll");
		var roll3 = document.getElementById("third-roll");
		var roll4 = document.getElementById("fourth-roll");
		var roll5 = document.getElementById("fifth-roll");
		var roll6 = document.getElementById("sixth-roll");
		var roll7 = document.getElementById("seventh-roll");
		
		var attribute1 = roll1.options[roll1.selectedIndex].text;
		var attribute2 = roll2.options[roll2.selectedIndex].text;
		var attribute3 = roll3.options[roll3.selectedIndex].text;
		var attribute4 = roll4.options[roll4.selectedIndex].text;
		var attribute5 = roll5.options[roll5.selectedIndex].text;
		var attribute6 = roll6.options[roll6.selectedIndex].text;
		var attribute7 = roll7.options[roll7.selectedIndex].text;
		
		attributesList.push(attribute1);
		attributesList.push(attribute2);
		attributesList.push(attribute3);
		attributesList.push(attribute4);
		attributesList.push(attribute5);
		attributesList.push(attribute6);
		attributesList.push(attribute7);
		
		var length = attributesList.length;
		for(var i = 0; i < length; i++)
		{
			console.log(attributesList[i]);
		}
		
	}
	
    
    
    
});