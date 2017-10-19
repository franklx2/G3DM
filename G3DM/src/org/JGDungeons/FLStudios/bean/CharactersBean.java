package org.JGDungeons.FLStudios.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.JGDungeons.FLStudios.object.PlayerCharacter;

public class CharactersBean {

	private ArrayList<PlayerCharacter> player_characters = null;
	private PreparedStatement preparedStatement1 = null;
	private PreparedStatement preparedStatement2 = null;
	private PreparedStatement preparedStatement3 = null;
	private PreparedStatement preparedStatement4 = null;
	private ResultSet resultSet1 = null;
	private ResultSet resultSet2 = null;
	private ResultSet resultSet3 = null;
	private ResultSet resultSet4 = null;
	private boolean loggedIn = false;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	private Statement statement = null;
	private String pcUsername = "";
	private String editBackground = "";
	private int editId = -999;
	private String editAvatarUrl = "";
	
	public CharactersBean(){};
	
	/*
	 * Create a character
	 * Associate with a user
	 */
	public void createCharacter(String username, String pcName, String pcUniverse, String pcClass,
								String pcRace, int pcStrength, int pcDexterity,
								int pcIntuition, int pcConstitution, int pcWill, 
								int pcCharisma, int pcEvasion, int pcLevel,
								int current_xp, int pc_hp) throws ClassNotFoundException, Exception
	{
		System.out.println("LOOK HERE PAL: " + username);
		PlayerCharacter newCharacter = new PlayerCharacter(username, pcName, pcUniverse, pcClass,
															pcRace, pcStrength, pcDexterity,
															pcIntuition, pcConstitution, pcWill, 
															pcCharisma, pcEvasion, pcLevel, 
															current_xp, pc_hp);
		System.out.println(newCharacter.toString());
		/*
		 * I need the following values before insert:
		 * un_id
		 * cl_id
		 * r_id
		 * u_id
		 * pc_level
		 */
		
		
		int cl_id = -9999;
		int r_id = -9999;
		int u_id = -9999;
		int pc_level = 1;
		int un_id = -9999;
		String GET_UNIVERSE_ID = "select un_id " +
									"from universes " +
									"where universe_name = ?";
		String GET_CLASS_ID = "select cl_id " +
								"from classes " +
								"where class_name = ?";
		String GET_RACE_ID = "select r_id " +
								"from races " +
								"where race_name = ?";
		String GET_USER_ID = "select id " +
								"from users " +
								"where username = ?";
		
		if(!characterExists(newCharacter.getPcName()))
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
			preparedStatement1 = connect.prepareStatement(GET_UNIVERSE_ID);
			preparedStatement1.setString(1, newCharacter.getPcUniverse());
			System.out.println("ccccccccccccccccccccccc");
			System.out.println(preparedStatement1.toString());
			System.out.println("ccccccccccccccccccccccc");
			resultSet1 = preparedStatement1.executeQuery();
			while(resultSet1.next())
			{
				un_id = resultSet1.getInt("un_id");
				System.out.println("un_id: " + un_id);
			}
			
			
			preparedStatement2 = connect.prepareStatement(GET_CLASS_ID);
			preparedStatement2.setString(1, newCharacter.getPcClass());
			System.out.println("ccccccccccccccccccccccc");
			System.out.println(preparedStatement2.toString());
			System.out.println("ccccccccccccccccccccccc");
			resultSet2 = preparedStatement2.executeQuery();
			while(resultSet2.next())
			{
				cl_id = resultSet2.getInt("cl_id");
				System.out.println("cl_id: " + un_id);
			}
			
			preparedStatement3 = connect.prepareStatement(GET_RACE_ID);
			preparedStatement3.setString(1, newCharacter.getPcRace());
			System.out.println("ccccccccccccccccccccccc");
			System.out.println(preparedStatement3.toString());
			System.out.println("ccccccccccccccccccccccc");
			resultSet3 = preparedStatement3.executeQuery();
			while(resultSet3.next())
			{
				r_id = resultSet3.getInt("r_id");
				System.out.println("r_id: " + un_id);
			}
			
			preparedStatement4 = connect.prepareStatement(GET_USER_ID);
			preparedStatement4.setString(1, newCharacter.getUsername());
			System.out.println("ccccccccccccccccccccccc");
			System.out.println(preparedStatement4.toString());
			System.out.println("ccccccccccccccccccccccc");
			resultSet4 = preparedStatement4.executeQuery();
			while(resultSet4.next())
			{
				u_id = resultSet4.getInt("id");
				System.out.println("id: " + u_id);
			}
			
			/*
			 * With the values obtained, now I need to insert them into the database
			 * 1 u_id, 2 cl_id,
					3 r_id, 4 pc_level, 5 current_xp, 6 pc_hp, 7 strength, 8 dexterity,
					9 intuition, 10 constitution, 11 will, 
					12 charisma, 13 evasion, 14 player_character_name, 15 un_id );
			 */
			try
			{
				String INSERT_CHARACTER = "INSERT INTO player_character " +
						"(u_id, cl_id, r_id, pc_level, current_xp, "
						+ "pc_hp, strength, dexterity, intuition, "
						+ "constitution, will, charisma, evasion, "
						+ "player_character_name, un_id) "
						+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				
				PreparedStatement insertPreparedStatement = connect.prepareStatement(INSERT_CHARACTER);
				insertPreparedStatement.setInt(1, u_id);
				insertPreparedStatement.setInt(2, cl_id);
				insertPreparedStatement.setInt(3, r_id);
				insertPreparedStatement.setInt(4, pc_level);
				insertPreparedStatement.setInt(5, newCharacter.getCurrentXP());
				insertPreparedStatement.setInt(6, newCharacter.getPcHP());
				insertPreparedStatement.setInt(7, newCharacter.getPcStrength());
				insertPreparedStatement.setInt(8, newCharacter.getPcDexterity());
				insertPreparedStatement.setInt(9, newCharacter.getPcIntuition());
				insertPreparedStatement.setInt(10, newCharacter.getPcConstitution());
				insertPreparedStatement.setInt(11, newCharacter.getPcWill());
				insertPreparedStatement.setInt(12, newCharacter.getPcCharisma());
				insertPreparedStatement.setInt(13, newCharacter.getPcEvasion());
				insertPreparedStatement.setString(14, newCharacter.getPcName());
				insertPreparedStatement.setInt(15, un_id);
				System.out.println(insertPreparedStatement.toString());
				System.out.println("before insert");
				try
				{
					insertPreparedStatement.executeUpdate();
				}catch(SQLException sqle)
				{
					System.out.println(sqle.getMessage());
				}
				System.out.println("after insert");
			}catch(Exception e)
			{
				System.out.println(e.getStackTrace());
			}finally
			{
				connect.close();
			}
			
		}
		load();
	}
	
	
	public boolean characterExists(String pcName) throws Exception
	{
		System.out.println("============================");
		System.out.println("checking if " + pcName + " exists");
		boolean result = false;
		try
		{
			
			for(PlayerCharacter pc: player_characters)
			{
				System.out.println("current pc.pcname: " + pc.getPcName());
				System.out.println("target pc.pcname: " + pcName);
				if(pc.getPcName().equals(pcName))
				{
					System.out.println("got it");
					result = true;
				}
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getStackTrace());
		}
		
		
		
		return result;
	}
	
	public PlayerCharacter getCharacter(int pc_id)
	{
		PlayerCharacter result = null;
		int i = 0;
		for(PlayerCharacter character: player_characters)
		{
			if(character.getPcId() == pc_id)
			{
				result = player_characters.get(i);
			}
			i++;
		}
		
		return result;
	}
	
	public ArrayList<PlayerCharacter> getCharacters(String username)
	{
		ArrayList<PlayerCharacter> result = new ArrayList<PlayerCharacter>();
		
		for(int i = 0; i < player_characters.size(); i++)
		{
			if(player_characters.get(i).getUsername().equals(username))
			{
				result.add(player_characters.get(i));
			}
		}
		
		return result;
		
	}
	
	public void load() throws Exception
	{
		Connection connect = null;
		System.out.println("attempting load");
		try 
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");

			// PreparedStatements can use variables and are more efficient
			preparedStatement = connect.prepareStatement("SELECT * from player_character");
			System.out.println(preparedStatement.toString());
			// Store the results in a resultSet for parsing
			resultSet = preparedStatement.executeQuery();
			System.out.println("got resultset");
			generateCharacters(resultSet);
			System.out.println("exited generateCharacters");

		} catch (Exception e) {
			throw e;
		} finally {
			connect.close();
		}
	}
	
	public ArrayList<PlayerCharacter> getCharacters() throws Exception
	{
		System.out.println("Getting characters for: " + this.pcUsername);
		ArrayList<PlayerCharacter> result = new ArrayList<PlayerCharacter>();
		try
		{
			load();
			System.out.println("size of player_characters: " + player_characters.size());
			for(PlayerCharacter character: this.player_characters)
			{
				if(character.getUsername().equals(this.pcUsername))
				{
					System.out.println("Adding: " + character.getPcName());
					result.add(character);
				}
			}
			
		}catch(NullPointerException np)
		{
			if(result == null)
			{
				System.out.println("Result is null");
			}
			System.out.println("Null pointer when loading");
		}catch(Exception e)
		{
			System.out.println(e.getStackTrace());
		}
		return result;
	}
	
	private void generateCharacters(ResultSet resultSet) throws SQLException, ClassNotFoundException 
	{
		
		int	 pc_level	 = -999;
		int	 current_xp	 = -999;
		int	 pc_hp	 = -999;
		int	 strength	 = -999;
		int	 dexterity	 = -999;
		int	 intuition	 = -999;
		int	 constitution	 = -999;
		int	 charisma	 = -999;
		int	 will	 = -999;
		int	 evasion	 = -999;
		int pc_id = -999;
		String background = "";
		String avatar_location = "";
//		System.out.println("generating characters");
		// ResultSet is initially before the first data set
		player_characters = new ArrayList<PlayerCharacter>();
		int counter = 0;
		while (resultSet.next()) 
		{
			counter++;
			System.out.println("counter: " + counter);
//			System.out.println("generate characters while line: " + counter);
			// It is possible to get the columns via name
			// also possible to get the columns via the column number
			// which starts at 1
			// e.g. resultSet.getSTring(2);
			String pcName = resultSet.getString("player_character_name");
			String username = "";
			String pcUniverse = "";
			String pcClass = "";
			String pcRace = "";
			
			System.out.println("Name: " + pcName);
			
			pc_id = resultSet.getInt("pc_id");
			int u_id = resultSet.getInt("u_id");
			int un_id = resultSet.getInt("un_id");
			int cl_id = resultSet.getInt("cl_id");
			int r_id = resultSet.getInt("r_id");
//			System.out.println("====================");
//			System.out.println(u_id);
//			System.out.println(un_id);
//			System.out.println(cl_id);
//			System.out.println(r_id);
//			System.out.println("====================");
			
			pc_level = resultSet.getInt("pc_level");
			current_xp = resultSet.getInt("current_xp");
			pc_hp = resultSet.getInt("pc_hp");
			strength = resultSet.getInt("strength");
			dexterity = resultSet.getInt("dexterity");
			intuition = resultSet.getInt("intuition");
			constitution = resultSet.getInt("constitution");
			charisma = resultSet.getInt("charisma");
			will = resultSet.getInt("will");
			evasion = resultSet.getInt("evasion");
			background = resultSet.getString("background");
			avatar_location = resultSet.getString("avatar_location");
			
			username = getUsername(u_id);
			pcUniverse = getUniverseName(un_id);
			pcClass = getClassName(cl_id);
			pcRace = getRaceName(r_id);
			
//			System.out.println("====================");
//			System.out.println(username);
//			System.out.println(pcUniverse);
//			System.out.println(pcClass);
//			System.out.println(pcRace);
//			System.out.println(background);
			System.out.println("avatar location" + avatar_location);
//			System.out.println("====================");
			
			/*
			 * public PlayerCharacter(String username, String pcName, String pcUniverse, String pcClass,
							String pcRace, String pcStrength, String pcDexterity,
							String pcIntuition, String pcConstitution, String pcWill, 
							String pcCharisma, String pcEvasion)
			 */
			
			PlayerCharacter pc = new PlayerCharacter(username, pcName, pcUniverse, pcClass, 
														pcRace, strength, dexterity,
														intuition, constitution, will,
														charisma, evasion, pc_level, 
														current_xp, pc_hp);
			pc.setPcId(pc_id); 
			/*
			 * If the background column is empty, then set background empty bool to true
			 * and pass an empty string into the object
			 * else, set the bool to false and store the result in pc
			 */
			if(background == null || background.isEmpty() || background.equals("null"))
			{
				pc.setBackgroundEmpty(true);
				pc.setPcBackground("");
			}
			else
			{
				pc.setBackgroundEmpty(false);
				pc.setPcBackground(background);
			}
			
			
			/*
			 * much like above, we store the result in avatarLocation if it exists,
			 * setting the empty bool to false
			 * else, we store an empty string to avatarLocation and set the empty
			 * bool to true
			 */
			System.out.println("checking avatar location...");
			if(avatar_location == null || avatar_location.isEmpty() || avatar_location.equals("null"))
			{
				System.out.println("avatar location is empty");
				pc.setAvatarEmpty(true);
			}
			else
			{
				System.out.println("avatar location is not empty");
				pc.setAvatarLocation(avatar_location);
				pc.setAvatarEmpty(false);
			}
			
			player_characters.add(pc);
			System.out.println("size of characters: " + player_characters.size());
//			System.out.println(pc.toString());
			System.out.println("end of while iteration");
		}
		System.out.println("after while");
	}
	
	public String getUsername(int u_id) throws SQLException, ClassNotFoundException
	{
		String GET_USERNAME = "select username " +
									"from users " +
									"where id = ?";
		String username = "";
		Connection connect = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
			PreparedStatement preparedStatement = connect.prepareStatement(GET_USERNAME);
			preparedStatement.setInt(1, u_id);
			System.out.println(preparedStatement.toString());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				username = rs.getString("username");
				System.out.println("username: " + username);
			}
		}
		catch(SQLException sqle)
		{
			System.out.println(sqle.getMessage());
		} 
		finally {
			connect.close();
		}
		
		return username;
	}
	
	public String getUniverseName(int un_id) throws SQLException
	{
		String GET_UNIVERSE_NAME = "select universe_name " +
									"from universes " +
									"where un_id = ?";
		String universe_name = "";
		Connection connect = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
			PreparedStatement preparedStatement = connect.prepareStatement(GET_UNIVERSE_NAME);
			preparedStatement.setInt(1, un_id);
			System.out.println(preparedStatement.toString());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				universe_name = rs.getString("universe_name");
				System.out.println("universe name : " + universe_name);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getStackTrace());
		}
		finally {
			connect.close();
		}
		
		
		return universe_name;
	}
	
	public String getClassName(int cl_id) throws SQLException
	{
		String GET_CLASS_NAME = "select class_name " +
									"from classes " +
									"where cl_id = ?";
		String class_name = "";
		Connection connect = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
			PreparedStatement preparedStatement = connect.prepareStatement(GET_CLASS_NAME);
			preparedStatement.setInt(1, cl_id);
			System.out.println(preparedStatement.toString());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				class_name = rs.getString("class_name");
				System.out.println("class name: " + class_name);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getStackTrace());
		}
		finally {
			connect.close();
		}
		
		return class_name;
	}
	
	
	public String getRaceName(int r_id) throws SQLException
	{
		String GET_RACE_NAME = "select race_name " +
									"from races " +
									"where r_id = ?";
		String race_name = "";
		Connection connect = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
			PreparedStatement preparedStatement = connect.prepareStatement(GET_RACE_NAME);
			preparedStatement.setInt(1, r_id);
			System.out.println(preparedStatement.toString());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				race_name = rs.getString("race_name");
				System.out.println("race name: " + race_name);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getStackTrace());
		}
		finally {
			connect.close();
		}
		
		return race_name;
	}
	

		public String getPcUsername() {
			return pcUsername;
		}

		public void setPcUsername(String pcUsername) {
			this.pcUsername = pcUsername;
		}

		public String getEditBackground() {
			return editBackground;
		}

		public void setEditBackground(String editBackground) throws ClassNotFoundException {
			this.editBackground = editBackground;
			try {
				updateBackground();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public void updateBackground() throws ClassNotFoundException, SQLException
		{
			String SQLUPDATE = "update player_character set background='" + this.editBackground + "' where pc_id='" + this.editId + "';";
			System.out.println(SQLUPDATE);
			Connection connect = null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
				PreparedStatement preparedStatement = connect.prepareStatement(SQLUPDATE);
				System.out.println("prepared: " + preparedStatement.toString());
				preparedStatement.executeUpdate();
			}
			catch(SQLException sqle)
			{
				System.out.println(sqle.getMessage());
			}
			finally {
				connect.close();
			}
		}

		public void updateAvatarUrl() throws SQLException
		{
			String SQLUPDATE = "update player_character set avatar_location='" + this.editAvatarUrl + "' where pc_id='" + this.editId + "';";
			System.out.println(SQLUPDATE);
			Connection connect = null;
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
				PreparedStatement preparedStatement = connect.prepareStatement(SQLUPDATE);
				System.out.println("prepared: " + preparedStatement.toString());
				preparedStatement.executeUpdate();
			}
			catch(SQLException sqle)
			{
				System.out.println(sqle.getMessage());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				connect.close();
			}
		}
		
		public int getEditId() {
			return editId;
		}

		public void setEditId(int editId) {
			this.editId = editId;
		}

		public String getEditAvatarUrl() {
			return editAvatarUrl;
		}

		public void setEditAvatarUrl(String editAvatarUrl) {
			this.editAvatarUrl = editAvatarUrl;
			try{
				updateAvatarUrl();
			}catch (SQLException sqle)
			{
				System.out.println(sqle.getMessage());
			}
		}
		
	
}
