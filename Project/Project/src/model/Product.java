package model;

public class Product {
	private String product_id;
	private String name;
	private String images;
	private float price;
	private String sub_id;

	public Product() {}
	public Product(String product_id, String name, String images, float price, String sub_id) {
		super();
		this.product_id = product_id;
		this.name = name;
		this.images = images;
		this.price = price;
		this.sub_id = sub_id;
	}
	public Product(String name) {
		this.name = name;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getSub_id() {
		return sub_id;
	}

	public void setSub_id(String sub_id) {
		this.sub_id = sub_id;
	}

}
