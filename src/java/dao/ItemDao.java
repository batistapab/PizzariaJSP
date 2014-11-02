package dao;

import bean.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class ItemDao {
    private final Connection con = Conexao.getConnection();
    PreparedStatement pst;
    Statement st;
    
    public void cadastrarItem(Item item){        
        String sql = "INSERT INTO itens (itemID,valor,quantidade,produtoID,pedidoID) VALUES (?,?,?,?,?);";
        try{       
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            System.out.println("Cadastrado com sucesso");
            pst.close();
         }catch(SQLException e){
             System.out.println("Erro de SQL: " + e.getMessage());
         }
    }
}
