package controller;



import controller.CheckSameUsername;
import dao.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class l
 */
@WebServlet("/login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setCharacterEncoding("UTF-8");
           response.setCharacterEncoding("UTF-8");
           response.setContentType("text/html; charset=UTF-8");       
           String username = request.getParameter("username");
           String password = request.getParameter("password");
           HttpSession session = request.getSession();      
           session.removeAttribute("currentusername");
           request.setAttribute("usernamefail", "false");
           request.setAttribute("passwordfail", "false");
   
           if(CheckSameUsername.Check(username)==true){ //kiem tra username co ton tai khong
               if(CheckSamePassword.Check(username,password)==true){ //neu co ton tai , kiem tra password dung khong , dung thi set session
                 session.setAttribute("currentusername", username);   
                 request.setAttribute("showPopup", "false");
               }else{
                 request.setAttribute("passwordfail", "true"); // set bien loi password khong dung
                 request.setAttribute("showPopup", "true");
               }
               request.setAttribute("saveusername", username); // save lai username nhap dung
           }else{
               request.setAttribute("saveusername", null);
               session.setAttribute("currentusername", null);       
               request.setAttribute("usernamefail", "true");
               request.setAttribute("showPopup", "true");

           }
           RequestDispatcher rd = getServletContext().getRequestDispatcher("/Frontend/login.jsp");
           rd.include(request, response);

	}
}
