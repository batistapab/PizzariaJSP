package bean;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Pedido {
    private int pedidoId;
    private String metodoDePagamento;

    private Date dataPedido;
    private Date dataPagamento;
    private String statusDoPagamento;
    private String statusDoPedido;
    private String ip;
    private int usuarioID;//Cliente

    public int getPedidoId() {
        return pedidoId;
    }

    public void setPedidoId(int pedidoId) {
        this.pedidoId = pedidoId;
    }

    public String getMetodoDePagamento() {
        return metodoDePagamento;
    }

    public void setMetodoDePagamento(String metodoDePagamento) {
        this.metodoDePagamento = metodoDePagamento;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public Date getDataPagamento() {
        return dataPagamento;
    }

    public void setDataPagamento(Date dataPagamento) {         
        this.dataPagamento = dataPagamento;
    }

    public String getStatusDoPagamento() {
        return statusDoPagamento;
    }

    public void setStatusDoPagamento(String statusDoPagamento) {
        this.statusDoPagamento = statusDoPagamento;
    }

    public String getStatusDoPedido() {
        return statusDoPedido;
    }

    public void setStatusDoPedido(String statusDoPedido) {
        this.statusDoPedido = statusDoPedido;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getUsuarioID() {
        return usuarioID;
    }

    public void setUsuarioID(int usuarioID) {
        this.usuarioID = usuarioID;
    }

}
