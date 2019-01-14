package model;

public class Product {
	private int id;
	private String code;
	private String name;
	private int type;
	private String url;
	private int price;
	private int quantity;
	private String description;
	private int status;
	public Product() {
		super();
	}
	public Product(int id, String code, String name, int type, String url, int price, int quantity, String description,
			int status) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.type = type;
		this.url = url;
		this.price = price;
		this.quantity = quantity;
		this.description = description;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", code=" + code + ", name=" + name + ", type=" + type + ", url=" + url
				+ ", price=" + price + ", quantity=" + quantity + ", description=" + description + ", status=" + status
				+ "]";
	}
	
}
