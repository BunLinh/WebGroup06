package dao;

import java.security.KeyStore.ProtectionParameter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Role;
import model.Users;

public class UserDAOImpl implements UserDAO {
	public static Connection connection;

	public UserDAOImpl() {
	}

	// test
	public static void main(String[] args) {
		UserDAOImpl test = new UserDAOImpl();
		
		/////////test role
//		List<Role> list = test.getRole();
//		for(Role r : list) System.out.println(r.toString());
		///////// test get all user
		List<Users> list = test.getAllUser();
		
		
		Users u1=new Users("nk", "Nhan", new Date(2000, 01, 01) , "","","","","","",1);
		
		test.addUser(u1);
		
//		if (!list.isEmpty())
//			for (Users u : list)
//				if(u.getUsername().contains("Ngô Thị Mỹ Linh")) {
//				System.out.println(u.toString());
//				}else {
//					System.out.println("not found");
//				}
//		else
//			System.out.println("empty");
		///////// test get one user
//		Users u = test.getOneUser("1");
//		System.out.println(u.toString());
		///////// test update user
//		Users u = new Users("test", "test", 4, new Date(2000, 01, 01), "085496611", "test", "", "", "", 0, 0, 0, 1, "test");
//		test.updateUser(u, 23);
		///////// test delete
//		test.deleteUser(14);
		///////// test filter
//		List<Users> list = test.filterUser("4");
//		for(Users u : list) System.out.println(u.toString());
	}
	
	@Override
	public List<Role> getRole() {
		List<Role> listRole = new ArrayList<>();
		connection = ConnectDB.getConnection();
		String sql = "SELECT * FROM ROLE";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			Role role ;
			while(rs.next()) {
				role = new Role();
				role.setRoleID(rs.getInt(1));
				role.setRoleCode(rs.getString(2));
				role.setRoleName(rs.getString(3));
				listRole.add(role);
			}
			rs.close();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listRole;
	}
	@Override
	public ArrayList<Users> getAllUser() {
		ArrayList<Users> listUser = null;
		connection = ConnectDB.getConnection();

		if (connection == null)
			System.out.println("connection error - -- - - -");
		else {

			if (listUser == null)
				listUser = new ArrayList<Users>();
			String sql = "SELECT * FROM USERS WHERE USER_STATUS = 1";

			try {
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				ResultSet rs = preparedStatement.executeQuery();
				while (rs.next()) { // note : column dau tien la ID, ko can lay. Lay tu column thu 2
					Users u = new Users();
					u.setUserID(rs.getInt(1));
					u.setUserCode(rs.getString(2));
					u.setUsername(rs.getString(3));
					u.setDob(rs.getDate(4));
					u.setPhone(rs.getString(5));
					u.setAddress(rs.getString(6));
					u.setEmail(rs.getString(12));
					u.setBankAccount(rs.getString(9));
					u.setBankName(rs.getString(10));
					u.setDescription(rs.getString(8));
					
					listUser.add(u);
				}
				rs.close();
				preparedStatement.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listUser;
	}

	@Override
	public Users getOneUser(String userID) {
		Connection connection = ConnectDB.getConnection();
		Users u = new Users();
		String sql = "SELECT * FROM USERS WHERE USERS_ID = ? AND USERS_STATUS = 1";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, Integer.parseInt(userID));
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setUsername(rs.getString(3));
				u.setDob(rs.getDate(4));
				u.setPhone(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setEmail(rs.getString(12));
				u.setBankAccount(rs.getString(9));
				u.setBankName(rs.getString(10));
				u.setDescription(rs.getString(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}

	@Override
	public void addUser(Users user) {
		connection = ConnectDB.getConnection();
		String sql = "INSERT INTO USERS(USER_CODE ,USERS_NAME ,USER_DATEOFBIRTH ,USER_PHONE ,USER_ADDRESS ,USER_STATUS, USERS_DESCRIPTION ,USER_BANK_ACCOUNT ,USER_BANK_NAME ,USERS_EMAIL)"  
			+ "VALUES(?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(1, user.getUserCode());
			prepared.setString(2, user.getUsername());
			prepared.setDate(3, user.getDob());
			prepared.setString(4, user.getPhone());
			prepared.setString(5, user.getAddress());
			prepared.setInt(6, user.getStatus());
			prepared.setString(8, user.getBankAccount());
			prepared.setString(9, user.getBankName());
			prepared.setString(7, user.getDescription());
			prepared.setString(10, user.getEmail());
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
			System.out.println("sucess");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(" not sucess");
			System.out.println(e.getMessage());
		
		}
		

	}

	@Override
	public void updateUser(Users user, int userID) {
		connection = ConnectDB.getConnection();
		String sql = "UPDATE USERS\r\n" + 
				"SET USERS_CODE=?,USERS_NAME=?,USERS_ROLE=?,SEX=?,DATEOFBIR=?,PHONE=?,CITY=?,TOWN=?,ADDRESS=?,EMAIL=?,BANK_ACCOUNT=?,BANK_NAME=?,USERS_DESCRIPTION=?\r\n" + 
				"WHERE USERS_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setString(2, user.getUserCode());
			prepared.setString(3, user.getUsername());
			prepared.setDate(4, user.getDob());
			prepared.setString(5, user.getPhone());
			prepared.setString(6, user.getAddress());
			prepared.setString(12, user.getEmail());
			prepared.setString(9, user.getBankAccount());
			prepared.setString(10, user.getBankName());
			prepared.setString(8, user.getDescription());
			
			prepared.setInt(6, userID);
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteUser(int userID) {
		connection = ConnectDB.getConnection();
		String sql = "UPDATE USERS\r\n" + 
				"SET USERS_STATUS = 0\r\n" + 
				"WHERE USERS_ID = ?";
		try {
			PreparedStatement prepared = connection.prepareStatement(sql);
			prepared.setInt(1, userID);
			
			prepared.executeUpdate();
			prepared.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Users> filterUser(String typeUser)  {
		connection = ConnectDB.getConnection();
		String sql = "SELECT * FROM USERS WHERE USERS_ROLE = ? AND USERS_STATUS = 1";
		PreparedStatement prepared;
		List<Users> list = new ArrayList<>();
		try {
			prepared = connection.prepareStatement(sql);
			prepared.setString(1, typeUser);
			ResultSet rs = prepared.executeQuery();
			Users u ;
			while(rs.next()) {
				u = new Users();
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setUserID(rs.getInt(1));
				u.setUserCode(rs.getString(2));
				u.setUsername(rs.getString(3));
				u.setDob(rs.getDate(4));
				u.setPhone(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setEmail(rs.getString(12));
				u.setBankAccount(rs.getString(9));
				u.setBankName(rs.getString(10));
				u.setDescription(rs.getString(8));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}


}
