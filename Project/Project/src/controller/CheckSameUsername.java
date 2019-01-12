package controller;
    
import dao.DatabaseConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CheckSameUsername {
    public static boolean Check(String username){
            boolean sameUsername = false;        
            String sql = "SELECT * FROM CUSTOMER WHERE EMAIL='"+username+"';";                
                  try {
                      String getUsername = null;
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      ResultSet rs = stmt.executeQuery(sql);
                      
                      if(rs.next()){
                          getUsername = rs.getString(1);
                          sameUsername = true;
                      System.out.println("Username nhap vao bi trung voi : "+getUsername);                          
                      }
                      stmt.close();
                      conn.close();
                      return sameUsername;
                      
                  } catch (SQLException ex) {
                      System.out.println("Khong get duoc Connection hoac khong tao duoc Statement !");
                  }
                      return sameUsername;                  
    }
    public static void main(String[] args) {
    }
}