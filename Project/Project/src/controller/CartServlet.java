package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAOImpl;
import model.Cart;
import model.Item;
import model.Product;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final ProductDAOImpl daoProduct = new ProductDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		String command = request.getParameter("command");
		String product_id = request.getParameter("product_id");

		Cart cart = (Cart) session.getAttribute("cart");
		String url ="";
		try {
			// Long idProduct = Long.parseLong(request.getParameter(product_id));
			Product product = daoProduct.getProduct(product_id);

			switch (command) {
			case "add":
				if (cart.getCartItems().containsKey(product_id)) {
					cart.plusToCart(product_id, new Item(product, cart.getCartItems().get(product_id).getQuantity()));
				} else {
					cart.plusToCart(product_id, new Item(product, 1));
				}
				url="Frontend/productlist.jsp";
				break;
			case "plus":
				// Long idProduct = Long.parseLong(request.getParameter(product_id));
				if (cart.getCartItems().containsKey(product_id)) {
					cart.plusToCart(product_id, new Item(product, cart.getCartItems().get(product_id).getQuantity()));
				} else {
					cart.plusToCart(product_id, new Item(product, 1));
				}
				url="Frontend/cart.jsp";
				break;
			case "sub":
				if (cart.getCartItems().containsKey(product_id)) {
					cart.subToCart(product_id, new Item(product, cart.getCartItems().get(product_id).getQuantity()));
				} else {
					cart.plusToCart(product_id, new Item(product, 1));
				}
				url="Frontend/cart.jsp";
				break;
			case "remove":
				cart.removeToCart(product_id);
				url="Frontend/productlist.jsp";
			case "removeToCart":
				cart.removeToCart(product_id);
				url="Frontend/cart.jsp";
			default:
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		session.setAttribute("cart", cart);
		response.sendRedirect(url);
	}

}
