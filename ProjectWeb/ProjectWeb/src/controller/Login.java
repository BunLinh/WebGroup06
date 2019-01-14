package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAOImpl;
import model.Account;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 AccountDAOImpl dao=new AccountDAOImpl();
	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String command = request.getParameter("command");
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");

		Account account = new Account();
		
		account.setUsername(username);
		account.setPassword(pass);
		HttpSession session = request.getSession();

		String url = "";
		switch (command) {
		case "signup":
			if (new AccountDAOImpl().addAcount(account)) {
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);

			}

			break;
		case "login":
			boolean check=dao.checkLogin(account);
			if(account.getUsername().equals("admin")&& (account.getPassword().equals("admin"))) {
				session.setAttribute("account", account);
				url="Fontend/index.jsp";
				
			} else if (check) {
				
			}

			break;
		
		case "logout":
			session.removeAttribute("account");
			
			url = "Login_v3/login.jsp";
			break;
		default:
			break;
		}
		
	}

}
