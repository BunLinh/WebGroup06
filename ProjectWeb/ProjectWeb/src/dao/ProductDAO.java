package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Product;

public class ProductDAO {
	private static Connection connect;
	static ArrayList<Product> list = new ArrayList<>();

	public static void main(String[] args) {
		ProductDAO dao= new ProductDAO();
		System.out.println(dao.getList());
	}

	public ArrayList<Product> getList() {
		Connection connect = (Connection) ConnectDB.getConnection();
		String sql = "select * from PRODUCT";
		try {
			PreparedStatement prepar = connect.prepareStatement(sql);
			ResultSet rs = prepar.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(Integer.parseInt(rs.getString("PRODUCT_ID")));
				product.setCode(rs.getString("PRODUCT_CODE"));
				product.setName(rs.getString("PRODUCT_NAME"));
				product.setType(Integer.parseInt(rs.getString("PRODUCT_Type")));
				product.setUrl(rs.getString("PRODUCT_URL"));
				product.setPrice(Integer.parseInt(rs.getString("PRODUCT_PRICE")));
				product.setQuantity(Integer.parseInt(rs.getString("PRODUCT_Quantity")));

				product.setDescription(rs.getString("PRODUCT_DESCRIPTION"));

				product.setStatus(Integer.parseInt(rs.getString("PRODUCT_STATUS")));

				list.add(product);

			}
			connect.close();
		} catch (Exception e) {
			System.out.println("Err");
			e.printStackTrace();
		}
		return list;
	}

}
