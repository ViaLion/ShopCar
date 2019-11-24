package com.ujn.lsw.bean;

public class User {
	private String usernameString;
	private String passwordString;
	private String nameString;
	private String ageString;
	private String sexString;
	private String countryString;
	private String hobbyString;
	private String telString;
	private String emailString;
	
	public String getUsername() {
		return usernameString;
	}
	public void setUsername(String usernameString) {
		this.usernameString = usernameString;
	}
	
	public String getPassword() {
		return passwordString;
	}
	public void setPassword(String passwordString) {
		this.passwordString = passwordString;
	}
	
	public String getName() {
		return nameString;
	}
	public void setName(String nameString) {
		this.nameString = nameString;
	}
	
	public String getAge() {
		return ageString;
	}
	public void setAge(String ageString) {
		this.ageString = ageString;
	}
	
	public String getSex() {
		return sexString;
	}
	public void setSex(String sexString) {
		this.sexString = sexString;
	}
	
	public String getCountry() {
		return countryString;
	}
	public void setCountry(String countryString) {
		this.countryString = countryString;
	}
	
	public String getHobby() {
		
		return hobbyString;
	}
	public void setHobby(String[] hobby) {
		String hobbyList = "";
		for (int i = 0; i < hobby.length; i++) {
			hobbyList += hobby[i] + " "; 
		}
		
		this.hobbyString = hobbyList;
	}
	
	public String getTel() {
		return telString;
	}
	public void setTel(String telString) {
		this.telString = telString;
	}
	
	public String getEmail() {
		return emailString;
	}
	public void setEmail(String emailString) {
		this.emailString = emailString;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
	
		return "User [" + "username : " + usernameString + "]";
	}
}
