package model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;

public class Bill {
	private String bill_id;
	private String email;
	private String address_order;
	private Timestamp date_buy;
	private String state_order;
	private float total;
	private Customer customer;
	private Product product;


	public Bill(String bill_id, String email, String address_order, Timestamp date_buy, String state_order, float total,
			Customer customer, Product product) {
		super();
		this.bill_id = bill_id;
		this.email = email;
		this.address_order = address_order;
		this.date_buy = date_buy;
		this.state_order = state_order;
		this.total = total;
		this.customer = customer;
		this.product = product;
	}

	public Bill() {
	}


	public Bill(String bil_id) {
		this.bill_id = bil_id;
	}

	public String getBill_id() {
		return bill_id;
	}

	public void setBill_id(String bill_id) {
		this.bill_id = bill_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress_order() {
		return address_order;
	}

	public void setAddress_order(String address_order) {
		this.address_order = address_order;
	}

	public Timestamp getDate_buy() {
		return date_buy;
	}

	public void setDate_buy(Timestamp date_buy) {
		this.date_buy = date_buy;
	}

	public String getState_order() {
		return state_order;
	}

	public void setState_order(String state_order) {
		this.state_order = state_order;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	// @Override
	// public String toString() {
	// return "Bill [bill_id=" + bill_id + ", email=" + email + ", address_order=" +
	// address_order + ", date_buy="
	// + date_buy + ", state_order=" + state_order + ", total=" + total + ",
	// customer=" + customer
	// + ", product=" + product + "]";
	// }
	//
	// public static void main(String[] args) {
	// Bill b1 = new Bill();
	// System.out.println(b1);
	// b1.setBill_id(String.valueOf(new Date().getTime()));
	// b1.setAddress_order("a");
	// b1.setCustomer(new Customer("thach"));
	// b1.setDate_buy(new Timestamp(new Date().getTime()));
	// b1.setEmail("t@mail");
	// b1.setProduct(new Product());
	// b1.setState_order("xxx chua xong");
	// b1.setTotal(10000);
	// System.out.println(b1.toString());
	// }

}
