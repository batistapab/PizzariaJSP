<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/includes/topo.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menu.jspf" %>

<div id="produtos-cardapio">                   
    <div id="verificacep">
        <p><b>Disponibilidade de entrega: </b> <input type="text" name="cep" id="cep" class="cep" placeholder="Digite seu CEP" maxlength="9" title="CEP" />  <span id="retornocep"></span>            
        </p>
    </div>
    <div class="ac-container">                       
        <label>Pizzas tradicionais</label>
        <section id="pizzasTradicionais" class="produtos-cardapio">


        </section>                 
        <label>Bebidas</label>
        <section id="bebidas-cardapio" class="produtos-cardapio"> 


        </section> 
    </div>
</div>
  
<%@ include file="WEB-INF/jspf/includes/sidebar.jspf" %>
<%@ include file="WEB-INF/jspf/includes/javascripts.jspf" %>
<%@ include file="WEB-INF/jspf/includes/footer.jspf" %>

