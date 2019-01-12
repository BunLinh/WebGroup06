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

@WebServlet("/register")
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void Register(String username,String password,String fullname,String birthday) {
            try {
                      String sql = "INSERT INTO CUSTOMER VALUES('"+username+"','"+password+"','"+fullname+"','"+birthday+"');";                                
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      System.out.println("Da tao statement! Tien hanh tiep tuc ...");
                      //kiem tra co trung username ko, khon thi moi cho phep tao
                      if(CheckSameUsername.Check(username)==false){ 
                        stmt.executeUpdate(sql);
                        System.out.println("Da them Customer : "+username +"\n");
                      }
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
            String fullname = request.getParameter("fullname");
            String birthday = request.getParameter("birthday");
            int CheckError = 0 ;
            
        //test username
        if (username.length()<=1) {
               request.setAttribute("errorusername", "true");
               request.setAttribute("saveusername", null);        
               System.out.println("Username khong duoc bo trong");            

        }else{
               request.setAttribute("errorusername", "false");
               request.setAttribute("saveusername", username);      
               CheckError++;
        }   
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
        //test fullname
        if ((Pattern.matches("^[a-z A-Z]+$", fullname)==false) || (fullname == null) || (fullname.contains(" ")) ) {
               request.setAttribute("errorfullname", "true");
               request.setAttribute("savefullname", null);
               System.out.println("Ho ten ko duoc bo trong hoac co chu so");
        }else {
               request.setAttribute("errorfullname", "false");
               request.setAttribute("savefullname", fullname);
               CheckError ++;
        }
         //test birthday       
        if ((birthday.length()<=1)||(birthday.equals(" "))){
               request.setAttribute("errorbirthday", "true");
               request.setAttribute("savebirthday", null);        
               System.out.println("Birthday khong duoc bo trong");              
        }else{
               request.setAttribute("errorbirthday", "false");
               request.setAttribute("savebirthday", birthday);         
               CheckError++;
        }
        if(CheckSameUsername.Check(username)==true){
               request.setAttribute("errorsameusername", "true");
        }else{
               request.setAttribute("errorsameusername", "false");
               request.setAttribute("saveusername", username);    
               CheckError++;
        }        
        if(CheckError==5){ // khong co loi , tien hanh tao Customer
               request.setAttribute("errorusername", "false");
               request.setAttribute("errorpassword", "false");
               request.setAttribute("errorfullname", "false");
               request.setAttribute("errorbirthday", "false");
               request.setAttribute("errorsameusername", "false");
               request.setAttribute("registersuccess", "true");
               request.setAttribute("saveusername", username);

               Register(username,password,fullname,birthday); // tao Customer
               request.setAttribute("showPopup", "false"); // tat Popup the hien loi
        }else{
            System.out.print("\n"); // thong bao xuong dong trong system
            request.setAttribute("registersuccess", "false");
            request.setAttribute("showPopup", "true"); // show ra Poppup the hien loi
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Frontend/register.jsp");
            rd.forward(request, response);  
        }
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/Frontend/registersuccess.jsp");
            rd.forward(request, response);
            }
     
}