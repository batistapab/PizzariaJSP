package dao;

import java.sql.*;

public class LoginDao {

    public static boolean validate(String email, String senha) {
        boolean status = false;
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzaria", "root", "pablito");           

            PreparedStatement ps = con.prepareStatement(
                    "select * from usuarios where email=? and senha=sha1(?)");
            ps.setString(1, email);
            ps.setString(2, senha);

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
