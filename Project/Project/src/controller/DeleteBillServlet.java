package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BillDAOImpl;
import model.Bill;

/**
 * Servlet implementation class DeleteBillServlet
 */
@WebServlet("/DeleteBillServlet")
public class DeleteBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static final BillDAOImpl daoBill= new BillDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBillServlet() {
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
		HttpSession session = request.getSession();
		String bill_id = request.getParameter("bill_id");
		
		String url="";
		try {
		daoBill.deleteToBill(bill_id);
		url="Backend/manage-bill.jsp";
		} catch (Exception e) {
			System.out.println("Error");
			e.printStackTrace();
		}
		response.sendRedirect(url);
	}

}
