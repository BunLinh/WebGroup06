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
 * Servlet implementation class ManageBill
 */
@WebServlet("/ManageBill")
public class ManageBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final BillDAOImpl daoBill = new BillDAOImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageBill() {
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
		Bill bill = (Bill) session.getAttribute("bill");
		String command = request.getParameter("command");
		String bill_id = request.getParameter("bill_id");
		
		String url="";
		try {
			
			switch (command) {
			case "view":
					daoBill.getListDetailBill(bill_id);
					session.setAttribute("bill_id",bill);
					url="Backend/manage-detailbill.jsp";
				break;

			default:
				url="Backend/manage-detailbill.jsp";
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
			url="error.jsp";
		}
		response.sendRedirect(url);
	}

}
