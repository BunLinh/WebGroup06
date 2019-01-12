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

@WebServlet("/changebirthday")

public class ChangeBirthday extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void ChangeBirthday(String username,String birthdaynew) {
            try {
                      String sql = "UPDATE CUSTOMER SET BIRTHDAY='"+birthdaynew+"' WHERE EMAIL='"+username+"';";                                
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      System.out.println("Da tao statement! Tien hanh tiep tuc ...");

                        stmt.executeUpdate(sql);
                        System.out.println("Da thay doi ngay sinh Customer : "+username +" thanh "+birthdaynew+"\n");
                        
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
            String birthday = request.getParameter("birthday");
            String birthdaynew = request.getParameter("birthdaynew");
            int CheckError = 0 ;
            
       
        //test password        
        if ((birthdaynew == null) || (birthdaynew.contains(" ")) ) {
                request.setAttribute("errorbirthdaynew", "true");
                request.setAttribute("savebirthdaynew", null);
                System.out.println("Ho ten ko duoc bo trong hoac co chu so");
         }else {
                request.setAttribute("errorbirthdaynew", "false");
                request.setAttribute("savebirthdaynew", birthdaynew);
                CheckError ++;
         }
        
        if(CheckError==1){ // khong co loi , tien hanh
               request.setAttribute("errorbirthdaynew", "false");
               request.setAttribute("changebirthdaysuccess", "true");
               ChangeBirthday(username,birthdaynew); // doi ngay sinh
               request.setAttribute("showPopup", "false"); // tat Popup the hien loi
               RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/changebirthday.jsp");
               rd.forward(request, response);
        }else{
            System.out.print("\n"); // thong bao xuong dong trong system
            request.setAttribute("changebirthdaysuccess", "false");
            request.setAttribute("saveusername", username);
            request.setAttribute("savebirthdaynew", birthdaynew);
            request.setAttribute("savebirthday", birthday);
            request.setAttribute("errorbirthdaynew", "true");

            request.setAttribute("showPopup", "true"); // show ra Poppup the hien loi
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Backend/changebirthday.jsp");
            rd.forward(request, response);  
        }
     }
}