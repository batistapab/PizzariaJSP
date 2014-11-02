<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/includes/topo.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menu.jspf" %>

              <ul class="nav nav-tabs" role="tablist" id="tabs">
                <li class="active">
                    <a href="#cadastrado" role="tab" data-toggle="tab">Já sou cadastrado</a>
                </li>
                <li>
                    <a href="#cadastrar" role="tab" data-toggle="tab">Cadastre-se</a>
                </li>
              </ul>
              <div class="tab-content">
                  <form id="cadastrado" method="post" class="tab-pane active" action="Login"> 
                   <fieldset class="form-horizontal">
                   <input type="hidden" name="acao" value="login" />   
                   <br />
                       <div class="form-group">
                           <label for="email" class="col-sm-2 control-label">E-mail:</label>
                           <div class="col-sm-10">
                            <input type="email" name="email" id="email" class="form-control" placeholder="Digite seu e-mail" />
                           </div>
                       </div>
                       <div class="form-group">
                           <label for="senha" class="col-sm-2 control-label">Senha:</label>
                           <div class="col-sm-10">
                            <input type="password" name="senha" id="senha" class="form-control" />
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                           <button type="submit" class="btn btn-primary">Acessar</button>
                           </div>
                       </div>
                   </fieldset>
               </form>
               <form id="cadastrar" method="post" class="tab-pane" action="logar.asp">                    
                   <input type="hidden" name="op" value="2" />     
                   <fieldset>
                       <legend>Dados pessoais</legend>
                           
                        <div>
                            <label for="telefone" class="col-sm-2 control-label">Telefone</label>
                            <div class="col-sm-10">
                               <input type="tel" class="telefone form-control" name="telefone" id="telefone" maxlength="16" required />
                            </div>
                        </div>
                       <div>
                           <label for="nome" class="col-sm-2 control-label">Nome</label>
                           <div class="col-sm-10">
                           <input type="text" name="nome" class="form-control" id="nome" maxlength="150" required />
                           </div>
                       </div>
                       
                       <div>
                           <label for="email2" class="col-sm-2 control-label">E-mail</label>
                           <div class="col-sm-10">
                           <input type="email" name="email" class="form-control" id="email2" placeholder="Digite seu e-mail" maxlength="80" required />
                           </div>
                       </div>   
                       <div>
                           <label for="senha2" class="col-sm-2 control-label">Senha</label>
                           <div class="col-sm-10">
                           <input type="password" name="senha" class="form-control" id="senha2" maxlength="10" required />
                           </div>
                       </div>   
                           
                       <div>
                           <label for="confirmarsenha" class="col-sm-2 control-label">Confirme a senha</label>
                           <div class="col-sm-10">
                           <input type="password" name="confirmarsenha" class="form-control" id="confimarsenha" maxlength="10" required />
                           </div>
                       </div>   
                   </fieldset>
                     <fieldset>
                         <legend>Dados para entrega</legend>
                         <div>
                             <label for="cep" class="col-sm-2 control-label">CEP</label>
                             <div class="col-sm-10">
                             <input type="text" name="cep" id="cep" class="form-control" class="cep" maxlength="9" placeholder="12345-678" required />
                             </div>
                         </div>
                         <div>
                             <label for="endereco" class="col-sm-2 control-label">Endereço</label>
                             <div class="col-sm-10">
                             <input type="text" name="endereco" class="form-control" id="endereco" maxlength="255" required />
                             </div>
                         </div>
                         <div>
                             <label for="numero" class="col-sm-2 control-label">Numero</label>
                             <div class="col-sm-10">
                             <input type="text" name="numero" class="form-control" id="numero" maxlength="10" required  />
                             </div>
                         </div>
                         <div>
                             <label for="complemento" class="col-sm-2 control-label">Complemento</label>
                             <div class="col-sm-10">
                             <input type="text" name="complemento" class="form-control" id="complemento" maxlength="20" />
                             </div>
                         </div>
                         <div>
                             <label for="bairro" class="col-sm-2 control-label">Bairro</label>
                             <div class="col-sm-10">
                             <input type="text" name="bairro" class="form-control" id="bairro" maxlength="255" required />
                             </div>
                         </div>
                         <div>
                             <label for="cidade" class="col-sm-2 control-label">Cidade</label>
                             <div class="col-sm-10">
                             <input type="text" name="cidade" class="form-control" id="cidade" maxlength="255" required  />
                             </div>
                         </div>
                         <div>
                             <label for="estado" class="col-sm-2 control-label">Estado</label>
                             <div class="col-sm-10">
                             <select name="estado" id="estado" class="form-control" required>
                                        <option value="SP">São Paulo</option>
                                      <option value="AC">Acre</option>
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
                                    </select>
                             </div>
                         </div>
                         <div>
                             <label for="referencia" class="col-sm-2 control-label">Ponto de referência</label>
                             <div class="col-sm-10">
                             <input type="text" name="referencia" class="form-control" id="referencia" maxlength="255" />
                             </div>
                         </div>
                         <div>
                             <div class="col-sm-offset-2 col-sm-10">
                             <button type="submit" class="btn btn-primary">Cadastrar usuário</button>
                             </div>
                         </div>
                     </fieldset>
                 </form>
              </div>
<%@ include file="WEB-INF/jspf/includes/sidebar.jspf" %>
<%@ include file="WEB-INF/jspf/includes/javascripts.jspf" %>
<%@ include file="WEB-INF/jspf/includes/footer.jspf" %>

