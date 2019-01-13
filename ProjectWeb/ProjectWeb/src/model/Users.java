package model;

import java.sql.Date;

public class Users {
	private int userID;
	private String userCode;
	private String username;

	private Date dob;
	private String phone;
	private String address;
	private String email;
	private String bankAccount;
	private String bankName;
	private String description;
	
	private int status;




	public Users( String userCode, String username, Date dob, String phone, String address, String email,
			String bankAccount, String bankName, String description, int status) {
		super();
		
		this.userCode = userCode;
		this.username = username;
		this.dob = dob;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.bankAccount = bankAccount;
		this.bankName = bankName;
		this.description = description;
		
		this.status = status;
	}

	public Users() {}


	public int getUserID() {
		return userID;
	}




	public void setUserID(int userID) {
		this.userID = userID;
	}




	public String getUserCode() {
		return userCode;
	}




	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}




	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}




	public Date getDob() {
		return dob;
	}




	public void setDob(Date dob) {
		this.dob = dob;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getBankAccount() {
		return bankAccount;
	}




	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}




	public String getBankName() {
		return bankName;
	}




	public void setBankName(String bankName) {
		this.bankName = bankName;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	



	public int getStatus() {
		return status;
	}




	public void setStatus(int status) {
		this.status = status;
	}




	@Override
	public String toString() {
		return "Users [userID=" + userID + ", userCode=" + userCode + ", username=" + username + ", dob=" + dob
				+ ", phone=" + phone + ", address=" + address + ", email=" + email + ", bankAccount=" + bankAccount
				+ ", bankName=" + bankName + ", description=" + description + ", status=" + status + "]";
	}



	
}
