package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Category;

public class CategoryDAOImpl implements CategoryDAO{

	@Override
	public ArrayList<Category> getCategory() {
		Connection connection =  DatabaseConnection.getConnection();
		String sql = "SELECT * FROM CATEGORY WHERE ID LIKE ('A[45]')";
		
		ArrayList<Category> listCategory = new ArrayList<Category>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				Category category = new Category();
				category.setId(rs.getString("ID"));
				category.setName(rs.getString("NAME"));
				listCategory.add(category);
				
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		return listCategory;
	}
	
	

	@Override
	public ArrayList<Category> getSubCategory(String id) {
		Connection connection =  DatabaseConnection.getConnection();
		String sql = "SELECT * FROM SUB_CATEGORY WHERE ID ='"+ id +"'";
		
		ArrayList<Category> listCategory = new ArrayList<Category>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				Category category = new Category();
				category.setId(rs.getString("SUB_ID"));
				category.setName(rs.getString("NAME"));
				category.setIdF(rs.getString("ID"));
				listCategory.add(category);
				
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		return listCategory;
	}

	public static void main(String[] args) {
		CategoryDAOImpl dao = new CategoryDAOImpl();
		System.out.println(dao.getCategory().size());
//		System.out.println(dao.getSubCategory("A3").size());
	}
}
