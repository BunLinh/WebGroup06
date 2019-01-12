package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XuLiDangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XuLiDangNhap() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/XuLiDangNhap.jsp");
		rd.forward(request, response);
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	     response.setCharacterEncoding("utf-8");
	     
	    String fullname= request.getParameter("name");
	    String email= request.getParameter("email");
		String username= request.getParameter("username");
		String pass= request.getParameter("pass");
		
		request.setAttribute("username", username);
		request.setAttribute("pass", pass);
		request.setAttribute("name", fullname);
		request.setAttribute("email", email);
		
		RequestDispatcher rd = request.getRequestDispatcher("Login/infoSign_Up.jsp");
		rd.forward(request , response);
		
		System.out.println(username+pass);
	}
	
}
