package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	private HashMap<String, Item> cartItems;

	public Cart() {
		cartItems = new HashMap<String, Item>();
	}

	public Cart(HashMap<String, Item> cartItems) {
		super();
		this.cartItems = cartItems;
	}

	public HashMap<String, Item> getCartItems() {
		return cartItems;
	}

	public void setCartItems(HashMap<String, Item> cartItems) {
		this.cartItems = cartItems;
	}

	// add to cart
	public void plusToCart(String key, Item item) {
		boolean bln = cartItems.containsKey(key);
		if (bln) {
			int quantity_old = item.getQuantity();
			item.setQuantity(quantity_old + 1);
			cartItems.put(key, item);
		} else {
			cartItems.put(key, item);
		}
	}

	// sub to cart
	public void subToCart(String key, Item item) {
		boolean bln = cartItems.containsKey(key);
		if (bln) {
			int quantity_old = item.getQuantity();
			if (quantity_old <= 1)
				cartItems.remove(key);
			else {
				item.setQuantity(quantity_old - 1);
				cartItems.put(key, item);
			}
		}
	}

	// remove to cart
	public void removeToCart(String product) {
		boolean bln = cartItems.containsKey(product);
		if (bln)
			cartItems.remove(product);
	}

	// count item
	public int countItem() {
		return cartItems.size();
	}

	// total cart
	public double totalCart() {
		double total = 0;
		for (Map.Entry<String, Item> list : cartItems.entrySet()) {
			total += list.getValue().getQuantity() * list.getValue().getProduct().getPrice();
		}
		return total;
	}
}
