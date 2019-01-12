package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Product;
import model.ProductTri;

public class ProductDAOTri {

	public ArrayList<ProductTri> getListProduct() {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "SELECT * FROM PRODUCT";

		ArrayList<ProductTri> list = new ArrayList<ProductTri>();
		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				ProductTri product = new ProductTri();
				product.setProductID(rs.getString("PRODUCT_ID"));
				product.setProductName(rs.getString("NAME"));
				product.setProductImages(rs.getString("IMAGES"));
				product.setProductPrice(rs.getFloat(("PRICE")));
				product.setSubCatelogyID(rs.getString("SUB_ID"));
				list.add(product);
			}
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		return list;
	}

	public boolean add(ProductTri product) {
		try {
			Connection connection = DatabaseConnection.getConnection();
			String sql = "INSERT INTO product VALUES(?,?,?,?,?)";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, product.getProductID());
			ps.setString(2, product.getProductName());
			ps.setString(3, product.getProductImages());
			ps.setFloat(4, product.getProductPrice());
			ps.setString(5, product.getSubCatelogyID());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;

		}
	}

	public boolean edit(ProductTri product) {
		try {
			Connection connection = DatabaseConnection.getConnection();
			String sql = "UPDATE PRODUCT SET NAME =?, IMAGES = ?, PRICE = ? , SUB_ID= ?   WHERE PRODUCT_ID = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, product.getProductName());
			ps.setString(2, product.getProductImages());
			ps.setFloat(3, product.getProductPrice());
			ps.setString(4, product.getSubCatelogyID());
			ps.setString(5, product.getProductID());
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(String productID) {
		try {
			Connection connection = DatabaseConnection.getConnection();
			String sql = "DELETE FROM product WHERE PRODUCT_ID = ?";
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, productID);
			int temp = ps.executeUpdate();
			return temp == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static void main(String[] args) {
		ProductDAOTri dao = new ProductDAOTri();
		dao.delete("01");
	}

}
