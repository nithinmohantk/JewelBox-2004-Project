/*
 * DBConnection.java
 *
 * Created on March 24, 2005, 7:12 AM
 */

/**
 *
 * @author  Administrator
 */
import java.sql.*;
import java.sql.SQLException;
import javax.swing.*;
public class DBConnection {
    static final String driver = "sun.jdbc.odbc.JdbcOdbcDriver";
    static final String db = "jdbc:odbc:JewelBox";
    static final String uid = "admin";
    static final String pwd = "velocity";
    Statement st;
    ResultSet rs;
    Connection conn;
    
    /** Creates a new instance of DBConnection */
    public void connectDB(){
        try{
        DriverManager.setLoginTimeout(30);
        Class.forName(driver);
        conn = DriverManager.getConnection(db,uid,pwd);
        }catch(Exception e)
          {
              
        }
    }
    
}
