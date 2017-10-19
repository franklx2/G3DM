
	<%@ page import="org.JGDungeons.FLStudios.object.*" %>
	<%@ page import="java.util.*" %>
	<jsp:useBean id="CharactersBean" class="org.JGDungeons.FLStudios.bean.CharactersBean" scope="session"></jsp:useBean>
	<script>console.log("0")</script>
	<!-- 
	<%= request.getParameter("character-name")	%> <br>
	<%= request.getParameter("universe")	%><br>
	<%= request.getParameter("class")	%><br>
	<%= request.getParameter("race")	%><br>
	<%= request.getParameter("1-roll-attribute")	%><br>
	<%= request.getParameter("1-roll-value")	%><br>
	<%= request.getParameter("2-roll-attribute")	%><br>
	<%= request.getParameter("2-roll-value")	%><br>
	<%= request.getParameter("3-roll-attribute")	%><br>
	<%= request.getParameter("3-roll-value")	%><br>
	<%= request.getParameter("4-roll-attribute")	%><br>
	<%= request.getParameter("4-roll-value")	%><br>
	<%= request.getParameter("5-roll-attribute")	%><br>
	<%= request.getParameter("5-roll-value")	%><br>
	<%= request.getParameter("6-roll-attribute")	%><br>
	<%= request.getParameter("6-roll-value")	%><br>
	<%= request.getParameter("7-roll-attribute")	%><br>
	<%= request.getParameter("7-roll-value")	%><br>
	<%= request.getParameter("username") %> -->
	<%
		System.out.println("1");
		String roll1 = request.getParameter("1-roll-attribute") + " " + request.getParameter("1-roll-value");
		String roll2 = request.getParameter("2-roll-attribute") + " " + request.getParameter("2-roll-value");
		String roll3 = request.getParameter("3-roll-attribute") + " " + request.getParameter("3-roll-value");
		String roll4 = request.getParameter("4-roll-attribute") + " " + request.getParameter("4-roll-value");
		String roll5 = request.getParameter("5-roll-attribute") + " " + request.getParameter("5-roll-value");
		String roll6 = request.getParameter("6-roll-attribute") + " " + request.getParameter("6-roll-value");
		String roll7 = request.getParameter("7-roll-attribute") + " " + request.getParameter("7-roll-value");	
		System.out.println("2");
		ArrayList<String> rolls = new ArrayList<String>();
		rolls.add(roll1);
		rolls.add(roll2);
		rolls.add(roll3);
		rolls.add(roll4);
		rolls.add(roll5);
		rolls.add(roll6);
		rolls.add(roll7);
		System.out.println("3");
		HashMap<String, Integer> statsMap = new HashMap<String, Integer>(); 
		statsMap.put("Strength", 0);
		statsMap.put("Dexterity", 1);
		statsMap.put("Intuition", 2);
		statsMap.put("Constitution", 3);
		statsMap.put("Will", 4);
		statsMap.put("Charisma", 5);
		statsMap.put("Evasion", 6);
		
		int[] stats = new int[7];
		
		for(String stat: rolls)
		{
			System.out.println("4");
			String[] parts = stat.split(" ");
			String label = parts[0];
			String value = parts[1];
			int index = statsMap.get(label);
			stats[index] = Integer.parseInt(value);
		}
		System.out.println("5");
		
		
		String username = request.getParameter("username");
		String pcName = request.getParameter("character-name");
		String pcUniverse = request.getParameter("universe");
		String pcClass = request.getParameter("class");
		String pcRace = request.getParameter("race");
		System.out.println("");
		
		
		
		int pcStrength = stats[0];
		int pcDexterity = stats[1];
		int pcIntuition = stats[2];
		int pcConstitution = stats[3]; 
		int pcWill = stats[4]; 
		int pcCharisma = stats[5]; 
		int pcEvasion = stats[6]; 
		int pcLevel = 1;
		int current_xp = 0;
		int pc_hp = 10;
		System.out.println("6");
		
		PlayerCharacter newCharacter = new PlayerCharacter(username, pcName, pcUniverse,
				pcClass, pcRace, pcStrength,
				pcDexterity, pcIntuition, pcConstitution,
				pcWill, pcCharisma, pcEvasion, pcLevel,
				current_xp, pc_hp);
		out.println("you are user: " + username);
		out.println("Character just submitted: " + "\n" + newCharacter.toString() + "\n");
		
		String success = "Profile.jsp";
		String fail = "CreateFailed.jsp";
		if(CharactersBean.characterExists(pcName) == false)
		{
			out.println("||character does not exist||");
			CharactersBean.createCharacter(username, pcName, pcUniverse,
											pcClass, pcRace, pcStrength,
											pcDexterity, pcIntuition, pcConstitution,
											pcWill, pcCharisma, pcEvasion, pcLevel,
											current_xp, pc_hp);
			
			if(CharactersBean.characterExists(pcName) == true)
			{
				out.println("||after creation, character exists||");
				response.sendRedirect(success);
			}
			else
			{
				out.println("||after creation, character doesnt exists||");
			}
		}
		else 
		{
			out.println("||character already exists||");
			response.sendRedirect(fail);
		}
		System.out.println("7");
	%>		
		