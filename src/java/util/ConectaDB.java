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
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/magic_color_catalog","root","");        
        }
        catch(SQLException ex){}
        return conn;        
    }
}
