package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    public static Connection getConnection() {
        Connection con=null;
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());  
            //Obtendo ponteiro ao objeto de Conexão
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzaria", "root", "pablito");
        } catch (SQLException e) {
              e.printStackTrace();
             throw new RuntimeException(e);
        }
        
        return con;
    }
}
