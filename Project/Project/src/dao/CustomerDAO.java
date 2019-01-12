package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.Customer;
import model.Product;
import dao.DatabaseConnection;

public class CustomerDAO {
	private ArrayList<Customer> listCustomer;
	
	public CustomerDAO() {
		listCustomer = new ArrayList<Customer>();
	}
	public ArrayList<Customer> getCustomer(){
		Connection connection = DatabaseConnection.getConnection();
		String sql = "SELECT * from CUSTOMER;";

		ArrayList<Customer> listCustomer = new ArrayList<Customer>();

		try {
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				Customer cus = new Customer(rs.getString(1),rs.getString(2),rs.getString(3),rs.getDate(4));
				listCustomer.add(cus);
			}
			stmt.close();
			connection.close();
		} catch (Exception e) {
			e.getStackTrace();
            System.out.println("Co loi! Khong the tao danh sach Customer!");
		}
		return listCustomer;
}

}
