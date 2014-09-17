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
                       <div>
                           <label for="email">E-mail:</label>
                       </div>
                       <div>
                           <input type="email" name="email" id="email" placeholder="Digite seu e-mail" />
                       </div>
                       <div>
                           <label for="senha">Senha:</label>
                       </div>
                       <div>
                           <input type="password" name="senha" id="senha" />
                       </div>
                       <div>
                           <button type="submit" class="btn btn-primary">Acessar</button>
                       </div>
               </form>
               <form id="cadastrar" method="post" class="tab-pane" action="logar.asp">                    
                   <input type="hidden" name="op" value="2" />     
                   <br />
                       <table>
                           <caption>Dados pessoais</caption>
                           <tr>
                               <th>Telefone</th>
                               <th colspan="2">Nome</th>
                           </tr>
                           <tr>
                               <td><input type="tel" class="telefone" name="telefone" id="telefone" maxlength="16" required /> </td>
                               <td colspan="2"><input type="text" name="nome" id="nome" maxlength="150" required /></td>
                           </tr>
                           <tr>
                               <th>E-mail</th>
                               <th>Senha</th>
                               <th>Confirmação de senha</th>
                           </tr>
                           <tr>
                               <td><input type="email" name="email" id="email2" placeholder="Digite seu e-mail" maxlength="80" required /></td>
                               <td><input type="password" name="senha" id="senha2" maxlength="10" required /></td>
                               <td><input type="password" name="confirmarsenha" id="confimarsenha" maxlength="10" required /></td>
                           </tr>
                       </table>
                       <table>
                           <caption>Dados para entrega</caption>
                           <tr>
                               <th>CEP: <input type="text" name="cep" id="cep" class="cep" maxlength="9" placeholder="12345-678" required /></th>
                               <td colspan="2"></td>
                           </tr>
                           <tr>
                               <td>Endereço</td>
                               <td>Número</td>
                               <td>Complemento</td>
                           </tr>
                           <tr>
                               <th><input type="text" name="endereco" id="endereco" maxlength="255" required /></th>
                               <th><input type="text" name="numero" id="numero" maxlength="10" required  /></th>
                               <th><input type="text" name="complemento" id="complemento" maxlength="20" /></th>
                           </tr>
                           <tr>
                               <td>Bairro</td>
                               <td>Cidade</td>
                               <td>Estado</td>
                           </tr>
                           <tr>
                               <th><input type="text" name="bairro" id="bairro" maxlength="255" required /></th>
                               <th><input type="text" name="cidade" id="cidade" maxlength="255" required  /></th>
                               <th>
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

                               </th>
                           </tr>
                           <tr>
                               <th colspan="3">Ponto de referência</th>
                           </tr>
                           <tr>
                               <td colspan="3"><input type="text" name="referencia" id="referencia" maxlength="255" /></td>
                           </tr>
                           <tr>
                               <td colspan="3"><button type="submit" class="btn btn-primary">Cadastrar usuário</button></td>
                           </tr>
                       </table>
               </form>
              </div>
<jsp:include page="/includes/sidebar.jsp" />
<jsp:include page="/includes/javascripts.jsp" />
<jsp:include page="/includes/footer.jsp" />

