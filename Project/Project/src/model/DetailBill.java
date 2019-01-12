package model;

import java.util.TreeMap;

public class DetailBill {
	private String detail_id;
	private Bill bill;
	private Product product;
	private int quantity;
	private float price;
	private Product product_name;
	private float total;

	private TreeMap<Bill, String> bill_Items;

	public DetailBill(String detail_id, Bill bill, Product product, int quantity, float price,Product product_name, float total) {
		super();
		this.detail_id = detail_id;
		this.bill = bill;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.product_name = product_name;
		this.total = total;
	}

	public Product getProduct_name() {
		return product_name;
	}

	public void setProduct_name(Product product_name) {
		this.product_name = product_name;
	}

	public DetailBill() {
		bill_Items = new TreeMap<Bill, String>();

	}
	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public TreeMap<Bill, String> getBill_Items() {
		return bill_Items;
	}

	public void setBill_Items(TreeMap<Bill, String> bill_Items) {
		this.bill_Items = bill_Items;
	}

	public void addDetailBill(Bill b, String billID) {
		boolean check = bill_Items.containsKey(b);
		if (check) {
			bill_Items.put(b, billID);
		}
	}

	public String getDetail_id() {
		return detail_id;
	}

	public void setDetail_id(String detail_id) {
		this.detail_id = detail_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
