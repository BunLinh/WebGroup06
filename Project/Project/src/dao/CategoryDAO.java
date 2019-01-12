package dao;

import java.util.ArrayList;

import model.Category;

public interface CategoryDAO {
public ArrayList<Category> getCategory();
public ArrayList<Category> getSubCategory(String id);
}
