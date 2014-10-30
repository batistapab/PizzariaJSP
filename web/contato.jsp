<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/includes/topo.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menu.jspf" %>
<form id="formContato">
   <fieldset>
  <legend>Envie sua mensagem</legend>

  <div class="form-group">
    <label for="nome">Nome completo</label>
    <input type="text" class="form-control" id="nome" name="nome" placeholder="Insira seu nome" maxlength="80" required="required">
  </div>

  <div class="form-group">
    <div class="input-group">
      <div class="input-group-addon">@</div>
      <input class="form-control" type="email" placeholder="insira seu e-mail" maxlength="80" required="required">
    </div>
  </div>
  <div class="form-group">
    <label for="assunto">Assunto</label>
    <input type="text" class="form-control" id="assunto" name="assunto" placeholder="Digite o assunto" maxlength="80" required="required">
  </div>

  <div class="form-group">
      <label for="mensagem">Mensagem</label>
      <textarea class="form-control" rows="3" required="required"></textarea>
  </div>
  <div class="form-group">
      <button type="submit" class="btn btn-primary">Enviar</button>
  </div>
</fieldset>
</form>
<%@ include file="WEB-INF/jspf/includes/sidebar.jspf" %>
<%@ include file="WEB-INF/jspf/includes/javascripts.jspf" %>
<%@ include file="WEB-INF/jspf/includes/footer.jspf" %>

