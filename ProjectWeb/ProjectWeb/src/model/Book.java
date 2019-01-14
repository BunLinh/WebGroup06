package model;

import java.sql.Date;

public class Book {
	
	private String name;
	private String description;
	private String coupon;
	private String starday;
	private String quantity;
	private String book_product;
	private String book_quantity_product;
	public Book(String name, String description, String coupon, String starday, String quantity, String book_product,
			String book_quantity_product) {
		super();
		this.name = name;
		this.description = description;
		this.coupon = coupon;
		this.starday = starday;
		this.quantity = quantity;
		this.book_product = book_product;
		this.book_quantity_product = book_quantity_product;
	}
	public Book() {
		super();
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
	public String getStarday() {
		return starday;
	}
	public void setStarday(String starday) {
		this.starday = starday;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getBook_product() {
		return book_product;
	}
	public void setBook_product(String book_product) {
		this.book_product = book_product;
	}
	public String getBook_quantity_product() {
		return book_quantity_product;
	}
	public void setBook_quantity_product(String book_quantity_product) {
		this.book_quantity_product = book_quantity_product;
	}
	@Override
	public String toString() {
		return "Book [name=" + name + ", description=" + description + ", coupon=" + coupon + ", starday=" + starday
				+ ", quantity=" + quantity + ", book_product=" + book_product + ", book_quantity_product="
				+ book_quantity_product + "]";
	}
	
	
}