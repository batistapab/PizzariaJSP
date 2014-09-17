<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/includes/topo.jsp" />
<jsp:include page="/includes/menu.jsp" />

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
  
<jsp:include page="/includes/carrinho.jsp" />
<jsp:include page="/includes/javascripts.jsp" />
<jsp:include page="/includes/footer.jsp" />

