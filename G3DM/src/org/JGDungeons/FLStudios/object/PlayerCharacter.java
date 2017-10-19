package org.JGDungeons.FLStudios.object;

import java.util.ArrayList;
import java.util.Random;

public class PlayerCharacter {
	private String pcName;
	private String pcUniverse;
	private String pcClass;
	private String pcRace;
	private String username;
	private int pcLevel;
	private int currentXP;
	private int pcHP;
	private int pcStrength;
	private int pcDexterity;
	private int pcIntuition;
	private int pcConstitution;
	private int pcWill;
	private int pcCharisma;
	private int pcEvasion;
	private int pcId;
	private String pcBackground = "";
	private boolean backgroundEmpty = true;
	private String avatarLocation = "";
	private boolean avatarEmpty = true;

	public PlayerCharacter(String username, String pcName, String pcUniverse, String pcClass,
			String pcRace, int pcStrength, int pcDexterity,
			int pcIntuition, int pcConstitution, int pcWill, 
			int pcCharisma, int pcEvasion, int pcLevel, int currentXP, int pcHP)
	{
		this.pcName = pcName;
		this.pcUniverse = pcUniverse;
		this.pcClass = pcClass;
		this.pcRace = pcRace;
		this.username = username.trim();
		this.pcLevel = pcLevel;
		this.currentXP = currentXP;
		this.pcHP = pcHP;
		this.pcStrength = pcStrength;
		this.pcDexterity = pcDexterity;
		this.pcIntuition = pcIntuition;
		this.pcConstitution = pcConstitution;
		this.pcWill = pcWill;
		this.pcCharisma = pcCharisma;
		this.pcEvasion = pcEvasion;
		this.pcId = -999;
		this.pcBackground = "";
		this.avatarLocation = "";
		
		this.setPcLevel(1);
		this.setCurrentXP(0);
		this.setPcHP(10); // Temporary fix. Will come back and implement modifiers 
	}

	public int getPcId()
	{
		return this.pcId;
	}

	public void setPcId(int pcId)
	{
		this.pcId = pcId;
	}

	public String getPcName() {
		return pcName;
	}

	public void setPcName(String pcName) {
		this.pcName = pcName;
	}

	public String getPcUniverse() {
		return pcUniverse;
	}

	public void setPcUniverse(String pcUniverse) {
		this.pcUniverse = pcUniverse;
	}

	public String getPcClass() {
		return pcClass;
	}

	public void setPcClass(String pcClass) {
		this.pcClass = pcClass;
	}

	public String getPcRace() {
		return pcRace;
	}

	public void setPcRace(String pcRace) {
		this.pcRace = pcRace;
	}

	public int getPcLevel() {
		return pcLevel;
	}

	public void setPcLevel(int pcLevel) {
		this.pcLevel = pcLevel;
	}

	public int getCurrentXP() {
		return currentXP;
	}

	public void setCurrentXP(int currentXP) {
		this.currentXP = currentXP;
	}

	public int getPcHP() {
		return pcHP;
	}

	public void setPcHP(int pcHP) {
		this.pcHP = pcHP;
	}

	public int getPcStrength() {
		return pcStrength;
	}

	public void setPcStrength(int pcStrength) {
		this.pcStrength = pcStrength;
	}

	public int getPcDexterity() {
		return pcDexterity;
	}

	public void setPcDexterity(int pcDexterity) {
		this.pcDexterity = pcDexterity;
	}

	public int getPcIntuition() {
		return pcIntuition;
	}

	public void setPcIntuition(int pcIntuition) {
		this.pcIntuition = pcIntuition;
	}

	public int getPcConstitution() {
		return pcConstitution;
	}

	public void setPcConstitution(int pcConstitution) {
		this.pcConstitution = pcConstitution;
	}

	public int getPcWill() {
		return pcWill;
	}

	public void setPcWill(int pcWill) {
		this.pcWill = pcWill;
	}

	public int getPcCharisma() {
		return pcCharisma;
	}

	public void setPcCharisma(int pcCharisma) {
		this.pcCharisma = pcCharisma;
	}

	public int getPcEvasion() {
		return pcEvasion;
	}

	public void setPcEvasion(int pcEvasion) {
		this.pcEvasion = pcEvasion;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String toString()
	{
		StringBuilder str = new StringBuilder();
		str.append("xp: " + getCurrentXP() + "\n");
		str.append("charisma: " + getPcCharisma() + "\n");
		str.append("class: " + getPcClass() + "\n");
		str.append("constitution: " + getPcConstitution() + "\n");
		str.append("dexterity: " + getPcDexterity() + "\n");

		str.append("evasion: " + getPcEvasion() + "\n");
		str.append("hp: " + getPcHP() + "\n");
		str.append("intuition: " + getPcIntuition() + "\n");
		str.append("level: " + getPcLevel() + "\n");
		str.append("name: " + getPcName() + "\n");

		str.append("race: " + getPcRace() + "\n");
		str.append("strength: " + getPcStrength() + "\n");
		str.append("universe: " + getPcUniverse() + "\n");
		str.append("will: " + getPcWill() + "\n");
		str.append("username: " + getUsername() + "\n");
		return str.toString();
	}

	public String getPcBackground() {
		return pcBackground;
	}

	public void setPcBackground(String pcBackground) {

		String defaultBackground = "Click the edit button to write your own character background";
		System.out.println("default: " + defaultBackground);
		System.out.println("input background: " + pcBackground);
		if(this.backgroundEmpty == true)
		{
			this.pcBackground = defaultBackground;
		}
		else
		{
			this.pcBackground = pcBackground;
		}
	}

	public boolean isBackgroundEmpty() {
		return backgroundEmpty;
	}

	public void setBackgroundEmpty(boolean backgroundEmpty) {
		this.backgroundEmpty = backgroundEmpty;
	}

	public String getAvatarLocation() {
		return avatarLocation;
	}

	public void setAvatarLocation(String avatarLocation) {
		System.out.println("Setting avatar location");
		if(!avatarLocation.isEmpty())
		{
			this.avatarEmpty = false;
			this.avatarLocation = avatarLocation;
		}
		else
		{
			System.out.println("Input avatarLocation is empty");
		}
	}

	public boolean isAvatarEmpty() {
		if(avatarLocation.isEmpty())
		{
			return true;
		}
		else
			return false;
	}
	
	public boolean getAvatarEmpty()
	{
		return isAvatarEmpty();
	}

	public void setAvatarEmpty(boolean avatarEmpty) {
		this.avatarEmpty = avatarEmpty;
	}
}
