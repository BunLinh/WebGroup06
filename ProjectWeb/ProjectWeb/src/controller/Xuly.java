package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAOImpl;
import model.Account;

/**
 * Servlet implementation class Xuly
 */
@WebServlet("/Xuly")
public class Xuly extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xuly() {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     String username = request.getParameter("username");
			String pass = request.getParameter("pass");
			Account acount= new Account(username,pass);
			
			
			if(new AccountDAOImpl().checkLogin(acount)) {
				HttpSession session= request.getSession();
				session.setAttribute("account", acount);
				response.sendRedirect("Fontend/index.jsp");
				
			}else {
				System.out.println("Lỗi đăng nhập");
			}
	}

}
