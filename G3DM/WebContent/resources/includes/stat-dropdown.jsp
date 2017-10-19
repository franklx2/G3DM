<script type="text/javascript" src="resources/javascript/dropdown.js"></script>
<script type="text/javascript" src="resources/javascript/tabbed-form.js"></script>
<style>

</style>
<div class="row">
<div class="col-sm-12">
<h3>Character Name</h3>
<fieldset class="form-group">
	<input type="text" class="form-control" id="character-name" name="character-name" placeholder="Character name">
</fieldset>

</div>
</div>

<div class="row">
<div class="col-sm-12">
<%@ include file="class-race-dropdown.jsp" %>
</div>
</div>

<h3>Roll the dice to generate your stats</h3>
<hr>
<div class="row">
<div class="col-sm-12">
<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input id="1-roll-value" name="1-roll-value" value=""  style="display:none">
  <label id="1-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="1-roll-attribute" class="form-control" id="first-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
  </div>
</div>


<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input  id="2-roll-value" name="2-roll-value" value=""  style="display:none">
  <label id="2-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="2-roll-attribute" class="form-control" id="second-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>

<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input id="3-roll-value" name="3-roll-value" value=""  style="display:none">
  <label id="3-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="3-roll-attribute" class="form-control" id="third-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>

<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input id="4-roll-value" name="4-roll-value" value=""  style="display:none">
  <label id="4-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="4-roll-attribute" class="form-control" id="fourth-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-12">


<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input id="5-roll-value"  name="5-roll-value" value=""  style="display:none">
  <label id="5-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="5-roll-attribute" class="form-control" id="fifth-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>

<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
<input id="6-roll-value" name="6-roll-value" value=""  style="display:none">
  <label id="6-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="6-roll-attribute" class="form-control" id="sixth-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>

<div class="col-sm-3">
<div id="first-roll-group" class="form-group">
	<input id="7-roll-value"  name="7-roll-value" value=""  style="display:none">
  <label id="7-roll-label" for="first-roll">Allocate points</label>
  <select style="font-size:12px;" name="7-roll-attribute" class="form-control" id="seventh-roll">
    <optgroup>
    <option>NA</option>
    <option>Strength</option>
    <option>Dexterity</option>
    <option>Intuition</option>
    <option>Constitution</option>
    <option>Will</option>
    <option>Charisma</option>
    <option>Evasion</option>
    </optgroup>
  </select>
</div>
</div>
</div>
</div>

<script>
	var errors = []
	
	function duck()
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
		for (var i = 0; i < length; i++) {
			console.log(attributesList[i]);
		}
		if (hasDuplicates(attributesList)) {
			alert("Make sure all fields are filled out and no duplicates exist.");
			errors.push(duplicates_error);
		} else {
			console.log("there are no duplicates");
			if(validateForm())
			{
				mutate();
			}
		}
		
		
		
	}
	
	function mutate(){
		console.log("mutating");
		var delta = document.getElementById("validate");
		delta.setAttribute("style", "display:none");
		delta.innerHTML = "Success";
		delta.removeAttribute("onclick");
		show();
	}
	
	
	function hasDuplicates(array) {
		return (new Set(array)).size !== array.length;
	}
	
	
	function show()
	{
		document.getElementById('submit').removeAttribute('disabled');
		
		var delta = document.getElementById('success');
		
		delta.innerHTML = "<strong>Validation success! Click Create Character to continue</strong>"
	}

</script>
<div id="success"></div>


<br>
<%@ include file="1d6.jsp" %>
<hr>

<button id="validate" type="button" class="btn btn-danger" onclick="duck()">Validate Stats</button>
<input id="submit" type="submit" class="btn btn-info" value="Create Character" disabled="disabled" >

