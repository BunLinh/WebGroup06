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


public class CheckSamePassword {
    public static boolean Check(String username,String password){
            boolean sameUsername = false;        
            boolean samePassword = false;        
            boolean sameAll = false;        
            String sql = "SELECT * FROM CUSTOMER WHERE EMAIL='"+username+"';";                
                  try {
                      String getUsername = null;
                      String getPassword = null;
                      Connection conn = DatabaseConnection.getConnection();
                      Statement stmt = conn.createStatement();
                      ResultSet rs = stmt.executeQuery(sql);
                      
                      if(rs.next()){
                          getUsername = rs.getString(1);
                          getPassword = rs.getString(2);
                          sameUsername = true;
                          if(getPassword.equals(password)){
                              samePassword = true;
                          }
                      }
                      if((sameUsername==true)&&(samePassword==true)){
                          sameAll=true;
                      }
                      stmt.close();
                      conn.close();
                      return sameAll;
                      
                  } catch (SQLException ex) {
                      System.out.println("Khong get duoc Connection hoac khong tao duoc Statement !");
                  }
                      return sameAll;                  
    }

}