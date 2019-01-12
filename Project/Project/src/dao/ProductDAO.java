package dao;

import java.util.ArrayList;

import model.Product;

public interface ProductDAO {
public ArrayList<Product> getListProduct();
public ArrayList<Product> getEachListPRoduct(String sub_id);

public ArrayList<Product> getProductByPage(String sub_id,int firstResult, int maxResult);
public int countProductByCategory(String sub_id);

//su dung cho cartservlet
public Product getProduct(String product_id);

}
