<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/includes/topo.jsp" />
<jsp:include page="/includes/menu.jsp" />

              <ul class="nav nav-tabs" role="tablist" id="tabs">
                <li class="active">
                    <a href="#cadastrado" role="tab" data-toggle="tab">Já sou cadastrado</a>
                </li>
                <li>
                    <a href="#cadastrar" role="tab" data-toggle="tab">Cadastre-se</a>
                </li>
              </ul>
              <div class="tab-content">
               <form id="cadastrado" method="post" class="tab-pane active" action="logar.asp"> 
                   <input type="hidden" name="op" value="1" />   
                   <br />
                       <div class="form-group">
                           <label for="email">E-mail:</label>
                           <input type="email" name="email" id="email" placeholder="Digite seu e-mail" />
                       </div>
                       <div class="form-group">
                           <label for="senha">Senha:</label>
                           <input type="password" name="senha" id="senha" />
                       </div>
                       <div class="form-group">
                           <button type="submit" class="btn btn-primary">Acessar</button>
                       </div>
               </form>
               <form id="cadastrar" method="post" class="tab-pane" action="logar.asp">                    
                   <input type="hidden" name="op" value="2" />     
                   <fieldset>
                       <legend>Dados pessoais</legend>
                           
                        <div class="form-group">
                            <label for="telefone">Telefone</label>
                               <input type="tel" class="telefone" name="telefone" id="telefone" maxlength="16" required /> 
                        </div>
                       <div class="form-group">
                           <label for="nome">Nome</label>
                           <input type="text" name="nome" id="nome" maxlength="150" required />
                       </div>
                       
                       <div class="form-group">
                           <label for="email2">E-mail</label>
                           <input type="email" name="email" id="email2" placeholder="Digite seu e-mail" maxlength="80" required />
                       </div>   
                       <div class="form-group">
                           <label for="senha2">Senha</label>
                           <input type="password" name="senha" id="senha2" maxlength="10" required />
                       </div>   
                           
                       <div class="form-group">
                           <label for="confirmarsenha">Confirmação de senha</label>
                           <input type="password" name="confirmarsenha" id="confimarsenha" maxlength="10" required />
                       </div>   
                   </fieldset>
                     <fieldset>
                         <legend>Dados para entrega</legend>
                         <div class="form-group">
                             <label for="cep">CEP</label>
                             <input type="text" name="cep" id="cep" class="cep" maxlength="9" placeholder="12345-678" required />
                         </div>
                         <div class="form-group">
                             <label for="endereco">Endereço</label>
                             <input type="text" name="endereco" id="endereco" maxlength="255" required />
                         </div>
                         <div class="form-group">
                             <label for="numero">Numero</label>
                             <input type="text" name="numero" id="numero" maxlength="10" required  />
                         </div>
                         <div class="form-group">
                             <label for="complemento">Complemento</label>
                             <input type="text" name="complemento" id="complemento" maxlength="20" />
                         </div>
                         <div class="form-group">
                             <label for="bairro">Bairro</label>
                             <input type="text" name="bairro" id="bairro" maxlength="255" required />
                         </div>
                         <div class="form-group">
                             <label for="cidade">Cidade</label>
                             <input type="text" name="cidade" id="cidade" maxlength="255" required  />
                         </div>
                         <div class="form-group">
                             <label for="estado">EStado</label>
                             <select name="estado" id="estado" required>
                                        <option value="SP">São Paulo</option>
                                       <!--> <option value="AC">Acre</option>
                                        <option value="AL">Alagoas</option>
                                        <option value="AM">Amazonas</option>
                                        <option value="AP">Amapá</option>
                                        <option value="BA">Bahia</option>
                                        <option value="CE">Ceará</option>
                                        <option value="DF">Distrito Federal</option>
                                        <option value="ES">Espirito Santo</option>
                                        <option value="GO">Goiás</option>
                                        <option value="MA">Maranhão</option>
                                        <option value="MG">Minas Gerais</option>
                                        <option value="MS">Mato Grosso do Sul</option>
                                        <option value="MT">Mato Grosso</option>
                                        <option value="PA">Pará</option>
                                        <option value="PB">Paraíba</option>
                                        <option value="PE">Pernambuco</option>
                                        <option value="PI">Piauí</option>
                                        <option value="PR">Paraná</option>
                                        <option value="RJ">Rio de Janeiro</option>
                                        <option value="RN">Rio Grande do Norte</option>
                                        <option value="RO">Rondônia</option>
                                        <option value="RR">Roraima</option>
                                        <option value="RS">Rio Grande do Sul</option>
                                        <option value="SC">Santa Catarina</option>
                                        <option value="SE">Sergipe</option>
                                        <option value="TO">Tocantins</option>
                                           -->
                                    </select>
                         </div>
                         <div class="form-group">
                             <label for="referencia">Ponto de referência</label>
                             <input type="text" name="referencia" id="referencia" maxlength="255" />
                         </div>
                         <div class="form-group">
                             <label for=""><button type="submit" class="btn btn-primary">Cadastrar usuário</button></label>
                         </div>
                     </fieldset>
                 </form>
              </div>
<jsp:include page="/includes/sidebar.jsp" />
<jsp:include page="/includes/javascripts.jsp" />
<jsp:include page="/includes/footer.jsp" />

