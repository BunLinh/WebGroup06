package model;

public class Account {
private int accountID;
private int userID;
private String username;
private String password;



public Account() {
	
}

public Account(String username, String password) {
	super();

	this.username = username;
	this.password = password;
}

public int getAccountID() {
	return accountID;
}
public void setAccountID(int accountID) {
	this.accountID = accountID;
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
public int getUserID() {
	return userID;
}
public void setUserID(int userID) {
	this.userID = userID;
}


public static void main(String[] args) {
	Account a = new Account();
	if(a != null) System.out.println("true");
}
}
