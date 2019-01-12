package dao;

import java.sql.Connection;
import java.sql.DriverManager;




public class DatabaseConnection{ 
 
public static Connection getConnection() {  
    Connection connection = null;
   String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
//    String url = "jdbc:sqlserver://localhost:1433;databaseName=master;";
	String url = "jdbc:sqlserver://teamweb.database.windows.net:1433;database=TeamWeb";
//	String url = "jdbc:sqlserver://testabcxyz.database.windows.net:1433;database=Test";
	String user = "thach";
	String pass = "Nguyenminhtung71";
    try { 
        Class.forName(driver);
        connection = DriverManager.getConnection(url,user,pass);

    }
    catch (Exception e) {   
        e.printStackTrace();
     }   
      return connection; 
    }


public static void main(String[]  args){ 
    Connection connection = DatabaseConnection.getConnection();
        if (connection != null ) { 
            System.out.println("Kết nối thành công");
            }
        else { 
           System.out.println("Kết nối thất bại");
        }
                }

}