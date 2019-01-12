package controller;

import controller.CheckSameUsername;
import dao.DatabaseConnection;
import model.Customer;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.servlet.http.HttpSession;

@WebServlet("/deleteusername")

public class DeleteUsername extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void DeleteUsername(String username) {
            try {
                      String sql = "DELETE FROM CUSTOMER WHERE EMAIL='"+username+"';";                                
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      System.out.println("Da tao statement! Tien hanh tiep tuc ...");

                        stmt.executeUpdate(sql);
                        System.out.println("Da xoa Customer : "+username +"\n");
                        
                      stmt.close();
                      conn.close();                      
                  } catch (Exception ex) {
                      System.out.println("Co loi! Khong get Connect tion hoac khong the tao Statement !");
                  }            
	}
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {    
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");       
            String username = request.getParameter("username");

            if(CheckSameUsername.Check(username)==true) {
            	DeleteUsername(username);
                request.setAttribute("deleteusernamesuccess", "true");
                request.setAttribute("errorusername", "false");
            	System.out.println("Da xoa thanh cong Customer : "+username);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/deleteusername.jsp");
                rd.forward(request, response);  
            }else {
                request.setAttribute("saveusername", username);
                request.setAttribute("errorusername", "true");
                request.setAttribute("showPopup", "true"); // show ra Poppup the hien loi
                request.setAttribute("deleteusernamesuccess", "false");                
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/deleteusername.jsp");
                rd.forward(request, response); 
            }

        }
     }
