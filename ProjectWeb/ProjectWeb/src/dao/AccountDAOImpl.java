package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Account;

public class AccountDAOImpl implements AccountDAO{
	public static Connection connection;
	public AccountDAOImpl() {
		
	}
	public static void main(String[] args) {
		AccountDAOImpl test= new AccountDAOImpl();
		
		//add
		Account u1= new Account("linh", "linh");
		Account u2= new Account("admin", "admin");
		System.out.println(test.addAcount(u2));
		System.out.println(test.checkLogin(u2));
	}
	@Override
	public boolean addAcount(Account acount) {
		connection = ConnectDB.getConnection();
		String sql="INSERT INTO ACCOUNT(USERNAME,PASSWORD)"
				+ "VALUES(?,?)";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			
			prepared.setString(1, acount.getUsername());
			prepared.setString(2, acount.getPassword());
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
			System.out.println("sucess");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("not sucess");
		}
		return false;
		
	}

	@Override
	public boolean deleteAcount(int accountID) {
		connection = ConnectDB.getConnection();
		String sql= "UPDATE ACCOUNT\\r\\n";
		return false;
		
	}

	@Override
	public ArrayList<Account> getAllAcount() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean checkLogin(Account acount) {
		connection= ConnectDB.getConnection();
		String sql = "SELECT * FROM ACCOUNT\r\n" + 
				"WHERE USERNAME = ? AND PASSWORD = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, acount.getUsername());
			prepared.setString(2, acount.getPassword());
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	}


