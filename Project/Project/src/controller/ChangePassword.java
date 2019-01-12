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

@WebServlet("/changepassword")

public class ChangePassword extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void ChangePassword(String username,String password) {
            try {
                      String sql = "UPDATE CUSTOMER SET PASS='"+password+"' WHERE EMAIL='"+username+"';";                                
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      System.out.println("Da tao statement! Tien hanh tiep tuc ...");

                        stmt.executeUpdate(sql);
                        System.out.println("Da thay doi password Customer : "+username +" thanh "+password+"\n");
                        
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
            String password = request.getParameter("password");
            String passwordagain = request.getParameter("passwordagain");
            int CheckError = 0 ;
            
       
        //test password        
        if ((password.length()<=6)){
               request.setAttribute("errorpassword", "true");
               request.setAttribute("savepassword", null);
               System.out.println("Password phai lon hon 6 ki tu");            
        }else{
               request.setAttribute("errorpassword", "false");
               request.setAttribute("savepassword", password);
               CheckError ++;
        }
        //test password again
        if (passwordagain.equals(password)==false) {
               request.setAttribute("errorpasswordagain", "true");
               request.setAttribute("savepasswordagain", null);
               System.out.println("Nhap lai password khong giong nhau");
        }else {
               request.setAttribute("errorpasswordagain", "false");
               request.setAttribute("savepasswordagain", null);
               CheckError ++;
        }
        
        
        if(CheckError==2){ // khong co loi , tien hanh tao Customer
               request.setAttribute("errorpassword", "false");
               request.setAttribute("errorpasswordagain", "false");
               request.setAttribute("resetpasswordsuccess", "true");
               ChangePassword(username,passwordagain); // doi password
               request.setAttribute("showPopup", "false"); // tat Popup the hien loi
               RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/resetpassword.jsp");
               rd.forward(request, response);
        }else{
            System.out.print("\n"); // thong bao xuong dong trong system
            request.setAttribute("resetpasswordsuccess", "false");
            request.setAttribute("saveusername", username);
            
            request.setAttribute("showPopup", "true"); // show ra Poppup the hien loi
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/resetpassword.jsp");
            rd.forward(request, response);  
        }
     }
}