/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hospitalmangmentsystem;
import java.sql.*;


public class Database {
  
   public static String url="jdbc:mysql://127.0.0.1:3306/?user=root";
    public static String user="root";
    public static String password="";
    
    public static Connection con;
    
    static{
        con=null;
    }
    public static Connection conectDataBase() throws SQLException, ClassNotFoundException{
       
           Class.forName("com.mysql.cj.jdbc.Driver");
            if (con==null) 
        con =DriverManager.getConnection(url, user, password);
            
       return con;
      
        
        
    }
    
}
