package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.swing.internal.plaf.basic.resources.basic;

import model.Book;



public class BookDAO {
	private static Connection connect;
	static ArrayList<Book> list = new ArrayList<>();
	
	
	public static void main(String[] args) {
		BookDAO dao= new BookDAO();
		//System.out.println(dao.getList());
		Book b1= new Book("Ban 3","","","","","","");
		System.out.println(dao.addBook(b1));
	}
	public ArrayList<Book> getList() {
		Connection connect = (Connection) ConnectDB.getConnection();
		String sql = "select * from BOOKS";
		try {
			PreparedStatement prepar = connect.prepareStatement(sql);
			ResultSet rs = prepar.executeQuery();

			while (rs.next()) {
				Book book = new Book();
					book.setName(rs.getString("BOOK_NAME"));
				book.setDescription(rs.getString("BOOK_DESCRIPTION"));
				book.setCoupon(rs.getString("BOOK_COUPON"));
				book.setStarday(rs.getString("BOOK_STARTDAY"));
				book.setQuantity(rs.getString("BOOK_Quantity"));
				book.setBook_product(rs.getString("BOOK_PRODUCT"));
				book.setBook_quantity_product(rs.getString("BOOK_QUANTITY_PRODUCT"));
				
				list.add(book);

			}
			connect.close();
		} catch (Exception e) {
			System.out.println("Err");
			e.printStackTrace();
		}
		return list;
	}

	public boolean addBook(Book book) {
		connect= ConnectDB.getConnection();
		String sql="INSERT INTO BOOKS(BOOK_NAME,BOOK_DESCRIPTION ,BOOK_COUPON,BOOK_STARTDAY,BOOK_QUANTITY ,BOOK_PRODUCT,BOOK_QUANTITY_PRODUCT )\r\n" + 
				"VALUES(?,?,?,?,?,?,?)";
		PreparedStatement prepared;
		try {
			prepared = connect.prepareStatement(sql);
			
			prepared.setString(1, book.getName());
			prepared.setString(2, book.getDescription());
			prepared.setString(3, book.getCoupon());
			prepared.setString(4, book.getStarday());
			prepared.setString(5, book.getQuantity());
			prepared.setString(6, book.getBook_product());
			prepared.setString(7, book.getBook_quantity_product());
			
			prepared.executeUpdate();
			prepared.close();
			connect.close();
			return true;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	public ResultSet searchForName(String username) throws Exception {
		connect= ConnectDB.getConnection();
		PreparedStatement prepared = connect.prepareStatement("select * from BOOKS where BOOK_NAME= ?");
		prepared.setString(1,username);
		ResultSet rs = prepared.executeQuery();
		return rs;
	}
	
}
