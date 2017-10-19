package org.JGDungeons.FLStudios.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.JGDungeons.FLStudios.object.User;

public class UsersBean {

	private String username = "";
	private String password = "";
	private String targetUsername = "";
	private String about = "";
	private String editAvatarUrl = "";
	private User currentUser = null;
	
	private String createUsername = "";
	private String createEmail = "";
	private String createPassword = "";
	private String createReenteredPassword = "";
	
	private boolean loggedIn = false;
	private boolean createSuccess = false;
	private boolean signedOut = false;
	private List<User> users = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	
	
	
	/*
	 * Clears all stats and restores default values
	 */
	public void clear()
	{
		this.currentUser = null;
		this.loggedIn = false;
		this.username = "";
		this.password = "";
		
		System.out.println("logged in: " + this.loggedIn);
	}
	
	public boolean getSignedOut() {
		System.out.println("get signed out");
		clear();
		
		this.signedOut = true;
		return signedOut;
	}



	public void setSignedOut(boolean signedOut) {
		clear();
		this.signedOut = signedOut;
	}



	public UsersBean(){}

	

	public boolean userExists(String username, String password) throws Exception
	{
		boolean exists = false;

		
		try
		{
			load();
		}
		catch(Exception e)
		{
			throw e;
		}
		
		for(int i = 0; i < users.size(); i++)
		{
			if(users.get(i).getUsername().equals(username))
			{
				if(users.get(i).getPassword().equals(password))
				{
					// User exists
					exists = true;
					// Assumes that the account credentials entered were
					// for logging in.
					// Set the loggedIn field to be true
					// Also set the current user to be this user
					this.currentUser = users.get(i);
					this.loggedIn = true;
					return true;
					
				}
				else
				{
					this.loggedIn = false;
					exists = false;
					return false;
				}
			}
		}

		return exists;
	}

	public void createUser(String username, String email, String password, String reenteredPassword) throws Exception
	{
		Connection connect = null;
		if(!userExists(username, password) && password.equals(reenteredPassword))
		{
			System.out.println("un: " + username + " email: " + email + " pw: " + password + " rpw: " + reenteredPassword);
			
			
			System.out.println("Attempting create");
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");
				preparedStatement = connect.prepareStatement("INSERT INTO users (username, email,password)" 
															    + " values(?, ?, ?)");
				
				preparedStatement.setString(1, username);
				preparedStatement.setString(2, email);
				preparedStatement.setString(3, password);
				System.out.println(preparedStatement.toString());
				preparedStatement.execute();
			}
			catch(SQLException sqle)
			{
				System.out.println(sqle.toString());
			}
			finally
			{
				connect.close();
			}
		}
		this.createSuccess = userExists(username, password);
		
	}
	
	public void load() throws Exception
	{
		Connection connect = null;
		try 
		{
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager.getConnection("jdbc:mysql://localhost/JGDungeons?" + "user=root&password=bsketb411");

			// PreparedStatements can use variables and are more efficient
			preparedStatement = connect.prepareStatement("SELECT * from JGDungeons.users");

			// Store the results in a resultSet for parsing
			resultSet = preparedStatement.executeQuery();

			writeResultSet(resultSet);


		} catch (Exception e) {
			throw e;
		} finally {
			connect.close();
		}
	}

	private void writeResultSet(ResultSet resultSet) throws SQLException 
	{
		// ResultSet is initially before the first data set
		users = new ArrayList<User>();
		while (resultSet.next()) 
		{
			// It is possible to get the columns via name
			// also possible to get the columns via the column number
			// which starts at 1
			// e.g. resultSet.getSTring(2);
			String username = resultSet.getString("username");
			String email = resultSet.getString("email");
			String password = resultSet.getString("password");
			String about = resultSet.getString("about");
			String avatar_location = resultSet.getString("avatar_location");
			

			User user = new User(username, email, password, about, avatar_location);
			if(avatar_location == null || avatar_location.isEmpty() ||  avatar_location == "null")
			{
				user.setAvatarEmpty(true);
			}
			else
			{
				user.setAvatarEmpty(false);
			}
			
			if(about == null || about.isEmpty() ||  about == "null")
			{
				user.setAboutEmpty(true);
			}
			else
			{
				user.setAboutEmpty(false);
			}
			users.add(user);

		}
	}

	
	public List<User> getUsers()
	{
		if(users == null)
		{
			try 
			{
				load();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}

		return users;

	}
	
	public User getUser() throws Exception
	{
		String username = getUsername();
		String password = getPassword();
		System.out.println("username1: " + this.username);
		System.out.println("password1: " + this.password);
		boolean exists = userExists(username, password);
		if(exists)
		{
			System.out.println("user exists: " + username + ", " + password);
		}
		return this.currentUser;
	}


	
	public User getTargetUser() throws Exception
	{
		User targetUser = null;

		if(this.users == null)
		{
			try
			{
				load();
			}
			catch(Exception e)
			{
				throw e;
			}
		}
		for(int i = 0; i < users.size(); i++)
		{
			if(users.get(i).getUsername().equals(this.targetUsername))
			{
				targetUser = users.get(i);
			}
		}


		return targetUser;
	}
	
	public boolean getLoggedIn() throws Exception
	{
		System.out.println("logging in... -u " + this.username + " -p " + this.password);
		if(userExists(this.username, this.password))
		{
			System.out.println("true");
			return true;
		}
		
		System.out.println("false");
		return false;
	}
	
	public boolean getCreateSuccess()
	{
		try {
			createUser(this.createUsername, this.createEmail, this.createPassword, this.createReenteredPassword);
		
		}
		catch (SQLException sqle)
		{
			System.out.println(sqle.getMessage());
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.createSuccess;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getCreateUsername() {
		return createUsername;
	}



	public void setCreateUsername(String createUsername) {
		this.createUsername = createUsername;
	}



	public String getCreateEmail() {
		return createEmail;
	}



	public void setCreateEmail(String createEmail) {
		this.createEmail = createEmail;
	}



	public String getCreatePassword() {
		return createPassword;
	}



	public void setCreatePassword(String createPassword) {
		this.createPassword = createPassword;
	}



	public String getCreateReenteredPassword() {
		return createReenteredPassword;
	}



	public void setCreateReenteredPassword(String createReenteredPassword) {
		this.createReenteredPassword = createReenteredPassword;
	}
	
	public boolean getLoggedInStatus()
	{
		return this.loggedIn;
		
	}
 

	public void setTargetUsername(String targetUsername) {
		this.targetUsername = targetUsername;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		
		this.about = about;
		try {
			updateAbout();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateAbout() throws ClassNotFoundException, SQLException
	{
		String SQLUPDATE = "update users set about='" + this.about + "' where username='" + this.targetUsername + "'";
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

	public String getEditAvatarUrl() {
		return editAvatarUrl;
	}

	public void setEditAvatarUrl(String editAvatarUrl) {
		
		this.editAvatarUrl = editAvatarUrl;
		
		try {
			updateAvatarUrl();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	public void updateAvatarUrl() throws ClassNotFoundException, SQLException
	{
		String SQLUPDATE = "update users set avatar_location ='" + this.editAvatarUrl + "' where username='" + this.targetUsername + "'";
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

}
