package dao;

import bean.Endereco;
import bean.Pedido;
import bean.Produto;
import bean.Usuario;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class TestesPizzaria {

    public static void main(String[] args) {
        //testeCadastraUsuario();
        // testeCadastrarEndereco();
        //testeCadastrarProduto();
       testeCadastrarPedido();

    }

    public static void testeCadastraUsuario() {
        Usuario user = new Usuario();
        user.setUsuarioID(0);
        user.setNome("Pablo Fernando da Assunção Batista".toUpperCase());
        user.setSenha("teste123");
        user.setTelefone("(11)96209-5486");
        user.setEmail("batistapab@gmail.com");
        user.setPerfil(1);
        user.setStatusDoUsuario(1);
        user.setObservacao("Pablo é o administrador do sistema");
        user.setRg("555.555.555-2");
        user.setCpf("999.999.999-99");

        UsuarioDao userDao = new UsuarioDao();
        userDao.cadastrarUsuario(user);
    }

    public static void testeCadastrarEndereco() {

        Endereco endereco = new Endereco();
        endereco.setEnderecoID(0);
        endereco.setLogradouro("Rua Piracicaba");
        endereco.setComplemento("Apto 201");
        endereco.setNumero("230");
        endereco.setBairro("Centro");
        endereco.setCidade("Sao Paulo");
        endereco.setEstado("SP");
        endereco.setCep("99999-999");
        endereco.setReferencia("Próximo a universidade");
        endereco.setUsuarioID(4);

        EnderecoDao enderecoDao = new EnderecoDao();
        enderecoDao.cadastrarEndereco(endereco);
    }

    public static void testeCadastrarProduto() {
        Produto produto = new Produto();
        produto.setProdutoID(0);
        produto.setProduto("Queijo");
        produto.setValor(14.00);
        produto.setFoto("fdjffshjdhifuhfiufshfiuhsfif");
        produto.setDescricao("Queijim de Minas uai");

        ProdutoDao produtoDao = new ProdutoDao();
        produtoDao.cadastrarProduto(produto);
    }

    public static void testeCadastrarPedido() {
        try{
        Pedido pedido = new Pedido();
            
           String dtPedido = "24/10/2014";
           String dtPagamento = "24/12/2014";
           String[] dataPedido;
           String[] dataPagamento;        
           String delimitador = "/";
        
            dataPedido = dtPedido.split(delimitador);
            dataPagamento = dtPagamento.split(delimitador);
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date dataPe = sdf.parse(dataPedido[2]+"-"+dataPedido[1]+"-"+dataPedido[0]);             
            java.util.Date dataPa = sdf.parse(dataPagamento[2]+"-"+dataPagamento[1]+"-"+dataPagamento[0]); 
        
            java.sql.Date sqlDataPe = new Date(dataPe.getTime());
            java.sql.Date sqlDataPa = new Date(dataPa.getTime());
            
           
           String metodoDePagamento="Dinheiro";
           String statusDoPagamento="Realizado";
           String statusDoPedido="Entregue";
           String ip="123.8487.09";
           int usuario=4;
           
            pedido.setMetodoDePagamento(metodoDePagamento);
            pedido.setDataPedido(sqlDataPe);
            pedido.setDataPagamento(sqlDataPa);
            pedido.setStatusDoPagamento(statusDoPagamento);
            pedido.setStatusDoPedido(statusDoPedido);           
            pedido.setIp(ip);
            pedido.setUsuarioID(usuario);           
           

            PedidoDao pedidoDao = new PedidoDao();
            pedidoDao.cadastrarPedido(pedido);
        }
        catch (ParseException e){
            e.printStackTrace();
        }
    }
}
