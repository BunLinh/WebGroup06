package model;

import java.sql.Date;

public class Book {
	private int id;
	private String code;
	private String name;
	private String description;
	private String coupon;
	private Date starday;
	private int quantity;
	private int book_product;
	private int book_quantity_product;
	private int book_user;
	private int status;
	public Book(int id, String code, String name, String description, String coupon, Date starday, int quantity,
			int book_product, int book_quantity_product, int book_user, int status) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.description = description;
		this.coupon = coupon;
		this.starday = starday;
		this.quantity = quantity;
		this.book_product = book_product;
		this.book_quantity_product = book_quantity_product;
		this.book_user = book_user;
		this.status = status;
	}
	public Book() {
		super();
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public Date getStarday() {
		return starday;
	}
	public void setStarday(Date starday) {
		this.starday = starday;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getBook_product() {
		return book_product;
	}
	public void setBook_product(int book_product) {
		this.book_product = book_product;
	}
	public int getBook_quantity_product() {
		return book_quantity_product;
	}
	public void setBook_quantity_product(int book_quantity_product) {
		this.book_quantity_product = book_quantity_product;
	}
	public int getBook_user() {
		return book_user;
	}
	public void setBook_user(int boo_user) {
		this.book_user = book_user;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", code=" + code + ", name=" + name + ", description=" + description + ", coupon="
				+ coupon + ", starday=" + starday + ", quantity=" + quantity + ", book_product=" + book_product
				+ ", book_quantity_product=" + book_quantity_product + ", book_user=" + book_user + ", status=" + status
				+ "]";
	}
	

}
