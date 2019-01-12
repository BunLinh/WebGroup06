package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BillDAOImpl;
import model.Customer;
import model.DetailBill;
import model.Item;
import model.Product;
import model.Bill;
import model.Cart;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final BillDAOImpl billDAO = new BillDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoutServlet() {
		super();
				// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String payment_methods = request.getParameter("payment_methods");
		String email = request.getParameter("email");
		String lastName = request.getParameter("lastName");

		Cart cart = (Cart) session.getAttribute("cart");

		String url = "";
		try {
			Bill bill = new Bill();
			for (Map.Entry<String, Item> listBill : cart.getCartItems().entrySet()) {
				String ID = String.valueOf(new Date().getTime());
//				Bill bill = new Bill();
				bill.setBill_id(ID);
				bill.setEmail(email);
				bill.setAddress_order(address+"," + city +","+ country);
				bill.setDate_buy(new Timestamp(new Date().getTime()));
				bill.setState_order(payment_methods);
				bill.setTotal((float) cart.totalCart());
				bill.setCustomer(new Customer(lastName));
				bill.setProduct(new Product(listBill.getValue().getProduct().getName()));
				billDAO.insertBill(bill);
//				System.out.println("bill");
				session.setAttribute("bill", bill);
			}
			
			for (Map.Entry<String, Item> listDetailBill : cart.getCartItems().entrySet()) {
				
				billDAO.insertDetailsBill(new DetailBill(new Date().toString(),
						new Bill(bill.getBill_id()),
						new Product(bill.getProduct().getProduct_id()),
						listDetailBill.getValue().getQuantity()	, 
						listDetailBill.getValue().getProduct().getPrice(),
						new Product(bill.getProduct().getName()),
						listDetailBill.getValue().getQuantity() * listDetailBill.getValue().getProduct().getPrice()));
//				System.out.println("detail bills");
			}
			session.setAttribute("cart", null);
			url = "Frontend/checkoutSuccess.jsp";
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
			url = "error.jsp";
		} finally {
			url = "Frontend/checkoutSuccess.jsp";
		}
		response.sendRedirect(url);
	}
public static void main(String[] args) {
	CheckoutServlet c = new CheckoutServlet();
	
}

}
