 $(document).ready(function() {
 // your code
var Auto = [
				{display: "Bike", value: "Bike" },
				{display: "Truck", value: "Bike-Dealers" },
				{display: "Cars/SUVs", value: "Cars/SUVs" },
				{display: "Aeroplanes", value: "Car-Dealers" },
				{display: "Ships", value: "Member-Advice-(Tips)" }];
   
			var uni = [
					    {display: "Middle Earth", value: "Middle Earth" },
						{display: "Lausanne Galaxy", value: "Lausanne Galaxy" }];
			
			var meclasses = [
			            {display: "Select", value: "Select"},
					    {display: "Warden", value: "Warden" },
						{display: "Berserker", value: "Berserker" },
						{display: "Assassin", value: "Assassin" },
						{display: "Thief", value: "Thief" },
						{display: "Pathfinder", value: "Pathfinder"},
						{display: "Scout", value: "Scout" },
						{display: "Lightbearer", value: "Lightbearer" },
						{display: "Necromancer", value: "Necromancer" },
						{display: "Cleric", value: "Cleric" }];
			
			var meraces = [
			            {display: "Select", value: "Select"},
					    {display: "Man of Gondor", value: "Man of Gondor" },
						{display: "Dunedain Ranger", value: "Dunedain Ranger" },
						{display: "Man of Rohan", value: "Man of Rohan" },
						{display: "Noldor Elf", value: "Noldor Elf" },
						{display: "Sindar Elf", value: "Sindar Elf"},
						{display: "Silvan Elf", value: "Silvan Elf" },
						{display: "Dwarf of the Iron Hills", value: "Dwarf of the Iron Hills" },
						{display: "Dwarf of Erebor", value: "Dwarf of Erebor" },
						{display: "Dwarf of Moria", value: "Dwarf of Moria" },
						{display: "Shire Hobbit", value: "Shire Hobbit" },
						{display: "Buckland Hobbit", value: "Buckland Hobbit" }];
				
				
			var gclasses = [
				        {display: "Select", value: "Select"},
					    {display: "Rook", value: "Rook" },
						{display: "Titan", value: "Titan" },
						{display: "Timewalker", value: "Timewalker" },
						{display: "Wayfarer", value: "Wayfarer" },
						{display: "Monk", value: "Monk" },
						{display: "Wraith", value: "Wraith" },
						{display: "Conduit", value: "Conduit" },
						{display: "Archon", value: "Archon" },
						{display: "Warpriest", value: "Warpriest" },
						{display: "Geomancer", value: "Geomancer" }];
			
			var graces = [
				            {display: "Select", value: "Select"},
						    {display: "Orc", value: "Orc" },
							{display: "Human", value: "Human" },
							{display: "Elf", value: "Elf" },
							{display: "Halfling", value: "Halfling" },
							{display: "Dwarf", value: "Dwarf" },
							{display: "Faye", value: "Faye" }];

$("#categories").change(function() {
   					 var parent = $(this).val();
						switch(parent){
							case 'Middle Earth':
								 list(meraces);
								break; 
							case 'Lausanne Galaxy':
								 list(graces);
								break; 
							case 'Book':
								 list(book);
								break; 
							default: //default child option is blank
								$("#subcats").html('');  
								break;
							   }
				});
				function list(array_list)
				{
					$("#subcats").html(""); //reset child options
					$(array_list).each(function (i) { //populate child options
					$("#subcats").append("<option value=\""+array_list[i].value+"\">"+array_list[i].display+"</option>");
					});
				}
				
 });