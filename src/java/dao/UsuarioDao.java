package dao;
import bean.UsuarioBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
public class UsuarioDao {
private Connection con=null;
    private PreparedStatement st = null;

    public String conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzaria", "root", "pablito");
            return "sucesso";
        } catch (ClassNotFoundException ex) {
            return "erro_driver";
        } catch (SQLException ex1) {
            return "erro_conectar";
        }
    }

    public String cadastrarUsuario(UsuarioBean user) {
    try {            
            String query = "INSERT INTO usuarios(usuarioID,nome,senha,telefone,email,perfil,statusDoUsuario) VALUES (?, ?,?,?,?,?,?,?)";
            
            st = con.prepareStatement(query);
            st.setInt(1, user.getUsuarioID());
            st.setString(2, user.getNome());
            st.setString(3, user.getSenha());
            st.setString(4, user.getTelefone());
            st.setString(5, user.getEmail());
            st.setInt(6,user.getPerfil());            
            st.setInt(7,user.getStatusDoUsuario());    
    st.executeUpdate();
    st.close();
    return "sucesso";
        } catch (SQLException x) {
            int erro = x.getErrorCode();
            if (erro == 1582) { //Duplicate entry value for PRIMARY key 
                return "chave_duplicada";
            } else {
                return "erro_operação";
            }
        }
    }

    public void desconectar() {
        try {
            con.close();
        } catch (SQLException x) {
        }
    }
}