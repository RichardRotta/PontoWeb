package util;

import java.sql.*;

/**
 *
 * @author Richard e Derick
 */
public class ConectaDB {
    public static Connection conectar() throws ClassNotFoundException{
        Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pontoweb","root","");        
        }
        catch(SQLException ex){}
        return conn;        
    }
}
