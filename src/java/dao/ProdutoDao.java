package dao;
import bean.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class ProdutoDao {
    private final Connection con = Conexao.getConnection();
    PreparedStatement pst;
    Statement st;
    
    public void cadastrarProduto(Produto produto){
        
        String sql = "INSERT INTO produtos(produtoID, produto, valor,descricao,foto)";
        sql+="VALUES (?,?,?,?,?)";
        try{       
            pst = con.prepareStatement(sql);
            pst.setInt(1, produto.getProdutoID());
            pst.setString(2, produto.getProduto());
            pst.setDouble(3, produto.getValor());
            pst.setString(4, produto.getDescricao());
            pst.setString(5, produto.getFoto());
            pst.executeUpdate();
            System.out.println("Cadastrado com sucesso");
            pst.close();
         }catch(SQLException e){
             System.out.println("Erro de SQL: " + e.getMessage());
         }
    }
}
