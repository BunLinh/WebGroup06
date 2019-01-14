package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Book;
import model.Product;


public class BookDAO {
	private static Connection connect;
	static ArrayList<Book> list = new ArrayList<>();
	
	
	public static void main(String[] args) {
		BookDAO dao= new BookDAO();
		System.out.println(dao.getList());
	}
	public ArrayList<Book> getList() {
		Connection connect = (Connection) ConnectDB.getConnection();
		String sql = "select * from BOOK";
		try {
			PreparedStatement prepar = connect.prepareStatement(sql);
			ResultSet rs = prepar.executeQuery();

			while (rs.next()) {
				Book book = new Book();
				book.setId(Integer.parseInt(rs.getString("BOOK_ID")));
				book.setCode(rs.getString("BOOK_CODE"));
				book.setName(rs.getString("BOOK_NAME"));
				book.setDescription(rs.getString("BOOK_DESCRIPTION"));
				book.setCoupon(rs.getString("BOOK_COUPON"));
				book.setStarday(rs.getDate("BOOK_STARTDAY"));
				book.setQuantity(Integer.parseInt(rs.getString("BOOK_Quantity")));
				book.setBook_product(Integer.parseInt(rs.getString("BOOK_PRODUCT")));
				book.setBook_quantity_product(Integer.parseInt(rs.getString("BOOK_QUANTITY_PRODUCT")));
				book.setBook_user(Integer.parseInt(rs.getString("BOOK_USER")));


				book.setStatus(Integer.parseInt(rs.getString("BOOK_STATUS")));

				list.add(book);

			}
			connect.close();
		} catch (Exception e) {
			System.out.println("Err");
			e.printStackTrace();
		}
		return list;
	}

	public void addBook(Product product) {
		
	}
}
