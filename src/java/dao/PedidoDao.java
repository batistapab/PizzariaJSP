package dao;

import bean.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class PedidoDao {
  private final Connection con = Conexao.getConnection();
    PreparedStatement pst;
    Statement st;
    
    public void cadastrarPedido(Pedido pedido){
        
        String sql = "INSERT INTO pedidos (metodoDePagamento,dataPedido,dataPagamento,";
               sql +="statusDoPagamento,statusDoPedido,ip,usuarioID) VALUES (?,?,?,?,?,?,?)";
        try{       
            pst = con.prepareStatement(sql);           
            pst.setString(1,pedido.getMetodoDePagamento());
            pst.setDate(2,pedido.getDataPedido());
            pst.setDate(3,pedido.getDataPagamento());
            pst.setString(4, pedido.getStatusDoPagamento());
            pst.setString(5,pedido.getStatusDoPedido());
            pst.setString(6,pedido.getIp());
            pst.setInt(7,pedido.getUsuarioID());
             pst.executeUpdate();
            System.out.println("Cadastrado com sucesso");
            pst.close();
         }catch(SQLException e){
             System.out.println("Erro de SQL: " + e.getMessage());
         }
    }
}
