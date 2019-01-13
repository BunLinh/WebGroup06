package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAOImpl;
import model.Account;

/**
 * Servlet implementation class Xulydangky
 */
@WebServlet("/Xulydangky")
public class Xulydangky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Xulydangky() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     String username = request.getParameter("username");
			String pass = request.getParameter("pass");
			Account account= new Account(username, pass);
			if(new AccountDAOImpl().addAcount(account)) {
				
				
			}
	
	}

}
