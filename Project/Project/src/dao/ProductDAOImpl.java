package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import model.Product;

public class ProductDAOImpl implements ProductDAO {

	@Override
	public ArrayList<Product> getListProduct() {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "select * from PRODUCT;";

		ArrayList<Product> listProduct = new ArrayList<Product>();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setProduct_id(rs.getString("PRODUCT_ID"));
				product.setName(rs.getString("NAME"));
				product.setImages(rs.getString("IMAGES"));
				product.setPrice(rs.getFloat("PRICE"));
				product.setSub_id(rs.getString("SUB_ID"));
				listProduct.add(product);
			}
			connection.close();
		} catch (Exception e) {
			e.getStackTrace();
			System.out.println("error");
		}

		return listProduct;
	}

	@Override
	public ArrayList<Product> getEachListPRoduct(String sub_id) {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "select * from PRODUCT WHERE SUB_ID= '" + sub_id + "'";

		ArrayList<Product> listProduct = new ArrayList<Product>();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setProduct_id(rs.getString("PRODUCT_ID"));
				product.setName(rs.getString("NAME"));
				product.setImages(rs.getString("IMAGES"));
				product.setPrice(rs.getFloat("PRICE"));
				product.setSub_id(rs.getString("SUB_ID"));
				listProduct.add(product);
			}
			connection.close();
		} catch (Exception e) {
			e.getStackTrace();
			System.out.println("error");
		}

		return listProduct;
	}
/* ------------------------------------------------------------*/
	/* ------------------------------------------------------------*/
	/* ------------------------------------------------------------*/
	public static void main(String[] args) {
		ProductDAOImpl dao = new ProductDAOImpl();
		// System.out.println(dao.getListProduct().size());
//		System.out.println(dao.getEachListPRoduct("A501").size());
//		System.out.println(dao.getProductByPage("A401",1, 4).size());
//		System.out.println(dao.countProductByCategory("A401"));
		System.out.println(dao.getProduct("A401-1").getName());
	}

	@Override
	public ArrayList<Product> getProductByPage(String sub_id,int firstResult, int maxResult) {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "select  TOP "+maxResult+ " * from PRODUCT WHERE SUB_ID = '"+sub_id+"';";

		ArrayList<Product> listProduct = new ArrayList<Product>();

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setProduct_id(rs.getString("PRODUCT_ID"));
				product.setName(rs.getString("NAME"));
				product.setImages(rs.getString("IMAGES"));
				product.setPrice(rs.getFloat("PRICE"));
				product.setSub_id(rs.getString("SUB_ID"));
				listProduct.add(product);
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}

		return listProduct;
	}

	@Override
	public int countProductByCategory(String sub_id) {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "select count(PRODUCT_ID) from PRODUCT WHERE SUB_ID = '"+sub_id+"';";

		int count =0;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.getStackTrace();
			System.out.println("error");
		}

		return count;
	}

	@Override
	public Product getProduct(String product_id) {
		Connection connection = DatabaseConnection.getConnection();
		String sql = "select * from PRODUCT WHERE PRODUCT_ID= '" + product_id + "'";

		Product product = new Product();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				
				product.setProduct_id(rs.getString("PRODUCT_ID"));
				product.setName(rs.getString("NAME"));
				product.setImages(rs.getString("IMAGES"));
				product.setPrice(rs.getFloat("PRICE"));
				product.setSub_id(rs.getString("SUB_ID"));
			}
			connection.close();
		} catch (Exception e) {
			e.getStackTrace();
			System.out.println("error");
		}

		return product;
	}
}
