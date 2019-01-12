package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BillDAOImpl;
import model.Bill;
import model.Customer;
import model.DetailBill;
import model.Product;

/**
 * Servlet implementation class AddBillServlet
 */
@WebServlet("/AddBillServlet")
public class AddBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final BillDAOImpl daoBill = new BillDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String customer_name = request.getParameter("customer_name");
		String product_name = request.getParameter("product_name");
		String email = request.getParameter("email");
		String date_buy = request.getParameter("date_buy");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String total = request.getParameter("total");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		
		String url = "";
		
		try {
			Bill bill = new Bill();
			String ID = String.valueOf(new Date().getTime());
			bill.setBill_id(ID);
			bill.setEmail(email);
			bill.setAddress_order(address);
			bill.setDate_buy(new Timestamp(new Date().getTime()));
			bill.setState_order(state);
			bill.setTotal(Float.parseFloat(total));
			bill.setCustomer(new Customer(customer_name));
			bill.setProduct(new Product(product_name));
			daoBill.insertBill(bill);
//		daoBill.insertBill(new Bill(ID, email, address, new Timestamp(new Date().getTime()),
//				state, Float.parseFloat(total), new Customer(customer_name), new Product(product_name)));	
		daoBill.insertDetailsBill(new DetailBill(ID + String.valueOf(new Date()),
				new Bill(bill.getBill_id()), 
				new Product(), 
				Integer.parseInt(quantity),
				Float.parseFloat(price), 
				new Product(product_name), 
				Float.parseFloat(total)));
		
		url="Backend/manage-bill.jsp";
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
			url="error.jsp";
		}
		
		response.sendRedirect(url);
	}

}
