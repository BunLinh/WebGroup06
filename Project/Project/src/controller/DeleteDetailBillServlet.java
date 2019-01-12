package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BillDAOImpl;

/**
 * Servlet implementation class DeleteDetailBillServlet
 */
@WebServlet("/DeleteDetailBillServlet")
public class DeleteDetailBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final BillDAOImpl daoBill= new BillDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDetailBillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String detail_bill_id = request.getParameter("detail_bill_id");
		
		String url="";
		try {
		daoBill.deleteToBill(detail_bill_id);
		url="Backend/manage-detailbill.jsp";
		} catch (Exception e) {
			System.out.println("Error");
			e.printStackTrace();
		}
		response.sendRedirect(url);
	}

}
