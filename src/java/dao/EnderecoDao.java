package dao;
import bean.Endereco;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class EnderecoDao {
    private final Connection con = Conexao.getConnection();
    PreparedStatement pst;
    Statement st;
    
    public void cadastrarEndereco(Endereco endereco){
        String sql = "INSERT INTO enderecos(enderecoID, logradouro, numero,complemento,bairro,";
        sql+="cidade,estado,referencia,cep,usuarioID) VALUES (?,?,?,?,?,?,?,?,?,?)";
        try{       
            pst = con.prepareStatement(sql);
            pst.setInt(1, endereco.getEnderecoID());
            pst.setString(2, endereco.getLogradouro());
            pst.setString(3, endereco.getNumero());            
            pst.setString(4, endereco.getComplemento());            
            pst.setString(5, endereco.getBairro());          
            pst.setString(6, endereco.getCidade());          
            pst.setString(7, endereco.getEstado());          
            pst.setString(8, endereco.getReferencia());          
            pst.setString(9, endereco.getCep());           
            pst.setInt(10, endereco.getUsuarioID());             
            pst.executeUpdate();
            System.out.println("Cadastrado com sucesso");
            pst.close();
         }catch(SQLException e){
             System.out.println("Erro de SQL: " + e.getMessage());
         }
    }
}
