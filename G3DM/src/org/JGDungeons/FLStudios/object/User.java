package org.JGDungeons.FLStudios.object;

public class User {

	private String username;
	private String email;
	private String password;
	private String avatar_location = "";
	private String about = "";
	
	private boolean aboutEmpty = true;
	private boolean avatarEmpty = true;
	
	public User(String username, String email, String password, String about, String avatar_location)
	{
		this.username = username;
		this.email = email;
		this.password = password;
		this.about = about;
		this.avatar_location = avatar_location;
	}
	
	public void setUsername(String username)
	{
		this.username = username;
	}
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String getUsername()
	{
		return this.username;
	}
	
	public String getEmail()
	{
		return this.email;
	}
	
	public String getPassword()
	{
		return this.password;
	}

	public String getAvatar_location() {
		return avatar_location;
	}

	public void setAvatar_location(String avatar_location) {
		this.avatar_location = avatar_location;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public boolean isAvatarEmpty() {
		return avatarEmpty;
	}
	
	public boolean getAvatarEmpty()
	{
		return this.avatarEmpty;
	}

	public void setAvatarEmpty(boolean avatarEmpty) {
		this.avatarEmpty = avatarEmpty;
	}

	public boolean isAboutEmpty() {
		return aboutEmpty;
	}

	public void setAboutEmpty(boolean aboutEmpty) {
		this.aboutEmpty = aboutEmpty;
	}
	
	
	
	
}
