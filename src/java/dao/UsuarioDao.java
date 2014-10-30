package dao;

import bean.Usuario;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UsuarioDao {

    private final Connection con = Conexao.getConnection();
    PreparedStatement pst;
    Statement st;
    ResultSet rs;

    public void cadastrarUsuario(Usuario user) {
        String sql = "INSERT INTO usuarios(usuarioID,nome,senha,telefone,email,perfil,statusDoUsuario,observacao,rg,cpf)";
        sql+="VALUES (?,?,SHA1(?),?,?,?,?,?,?,?)";
        try {
            pst = con.prepareStatement(sql);
            pst.setInt(1, user.getUsuarioID());
            pst.setString(2, user.getNome());
            pst.setString(3, user.getSenha());
            pst.setString(4, user.getTelefone());
            pst.setString(5, user.getEmail());
            pst.setInt(6, user.getPerfil()); // 1 -Administrador  2-Para funcionários   3 - Para clientes
            pst.setInt(7, user.getStatusDoUsuario()); //1-ATIVO    2-INATIVO  3-BLOQUEADO
            pst.setString(8, user.getObservacao());
            pst.setString(9, user.getRg());
            pst.setString(10, user.getCpf());
            pst.executeUpdate();

            System.out.println("Cadastrado com sucesso");
            pst.close();
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
    }
    public void validate(Usuario user){
        boolean status = false;
        String sql = "SELECT * FROM usuarios WHERE email=? and senha=SHA1(?)";
        try{
            pst = con.prepareStatement(sql);
            pst.setString(1, user.getEmail());
            pst.setString(2, user.getSenha());
            rs = pst.executeQuery();
            if(rs.next()){
                 status = true;
                 System.out.println("Usuário encontrado");
            }      
            
            pst.close();
        }
        catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
    }

}
