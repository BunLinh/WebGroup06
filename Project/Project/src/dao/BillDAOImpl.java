package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import model.Bill;
import model.Category;
import model.Customer;
import model.DetailBill;
import model.Product;

public class BillDAOImpl implements BillDAO{

	@Override
	public void insertBill(Bill bill) {
		Connection connection = DatabaseConnection.getConnection();
		String sql= "INSERT INTO BILL VALUES(?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, bill.getBill_id());
			preparedStatement.setString(2, bill.getEmail());
			preparedStatement.setString(3, bill.getAddress_order());
			preparedStatement.setTimestamp(4, bill.getDate_buy());
			preparedStatement.setString(5, bill.getState_order());
			preparedStatement.setFloat(6, bill.getTotal());
			preparedStatement.setString(7, bill.getCustomer().getFullname());
			preparedStatement.setString(8, bill.getProduct().getName());
			
			preparedStatement.executeUpdate();
			System.out.println("success bill");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
	}
	
	@Override
	public void insertDetailsBill(DetailBill detail_bill) {
		Connection connection = DatabaseConnection.getConnection();
		String sql= "INSERT INTO DETAILS_BILL VALUES(?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, detail_bill.getDetail_id());
			preparedStatement.setString(2, detail_bill.getBill().getBill_id());
			preparedStatement.setString(3, detail_bill.getProduct().getProduct_id());
			preparedStatement.setInt(4, detail_bill.getQuantity());
			preparedStatement.setFloat(5, detail_bill.getPrice());
			preparedStatement.setString(6, detail_bill.getProduct().getName());
			preparedStatement.setFloat(7, detail_bill.getTotal());
			
			preparedStatement.executeUpdate();
			connection.close();
			System.out.println("success detail");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		
	}
	
	public static void main(String[] args) {
		BillDAOImpl dao = new BillDAOImpl();
//		dao.insertBill(new Bill("895", "thach@gmail.com", "Q1", new Timestamp(new Date().getTime()), "chua xong", 10000, new Customer("test", "11"), new Product()));
//		dao.insertDetailsBill(new DetailBill("detail1", new Bill(), new Product()	, 2, 2000, 4000));
//		System.out.println(dao.getListBill().size());
//		System.out.println(dao.getListDetailBill("1529259561049").size());
		dao.deleteToBill("1529259377972");
	}

	@Override
	public ArrayList<Bill> getListBill() {
		Connection connection =  DatabaseConnection.getConnection();
		String sql = "SELECT * FROM BILL";
		
		ArrayList<Bill> listBill= new ArrayList<Bill>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				Bill bill = new Bill();
				bill.setBill_id(rs.getString("BILL_ID"));
				bill.setEmail(rs.getString("EMAIL"));
				bill.setAddress_order(rs.getString("ADDRESS_ORDER"));
				bill.setDate_buy(rs.getTimestamp("DATE_BUY"));
				bill.setState_order(rs.getString("STATE_ORDER"));
				bill.setTotal(rs.getFloat("TOTAL"));
				bill.setCustomer(new Customer(rs.getString("CUSTOMER_NAME")));
				bill.setProduct(new Product(rs.getString("PRODUCT_NAME")));
				listBill.add(bill);
				
			}
			connection.close();
			System.out.println("success");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		return listBill;
	}

	@Override
	public ArrayList<DetailBill> getListDetailBill(String bill_id) {
		Connection connection =  DatabaseConnection.getConnection();
		String sql = "SELECT * FROM DETAILS_BILL WHERE BILL_ID = '"+bill_id+"'";
		
		ArrayList<DetailBill> listDetailBill= new ArrayList<DetailBill>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				DetailBill detail_bill = new DetailBill();
				detail_bill.setDetail_id(rs.getString("DETAILS_ID"));
				detail_bill.setBill(new Bill(rs.getString("BILL_ID")));
				detail_bill.setProduct(new Product(rs.getString("PRODUCT_ID")));
				detail_bill.setQuantity(rs.getInt("QUANTITY"));
				detail_bill.setPrice(rs.getFloat("PRICE"));
				detail_bill.setProduct(new Product(rs.getString("PRODUCT_NAME")));
				detail_bill.setTotal(rs.getFloat("TOTAL"));
				listDetailBill.add(detail_bill);
			}
			connection.close();
			System.out.println("success");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		return listDetailBill;
	}

	@Override
	public void deleteToBill(String bill_id) {
		Connection connection = DatabaseConnection.getConnection();
		String sql= "DELETE FROM BILL WHERE BILL_ID = '"+bill_id+"'";
		
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteToDetailBill(String detail_bill_id) {
		Connection connection = DatabaseConnection.getConnection();
		String sql= "DELETE FROM DETAILS_BILL WHERE DETAILS_ID = '"+detail_bill_id+"'";
		
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
