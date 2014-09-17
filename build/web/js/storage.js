$(function () {
     //Verificar se o CEP é atendido
    $("#verificacep #cep").on('keyup keydown', function () {
        //Quando o usuário digitar ou parar de fazê-lo, obtenho os dados digitados
        var cep = $("#verificacep #cep").val();
        var limpaRetornoDoCep = function () {
            $('#retornocep').text("").fadeOut(1000);
            if ($('#retornocep').hasClass("sucess") === true) {
                $('#retornocep').removeClass("sucess");
            } else {
                $('#retornocep').removeClass("fail");
            }
        };
        limpaRetornoDoCep();
        //Tiramos os espaço em branco
        cep = cep.trim();

        //verificamos se possui 9 caracteres e se a variável é exatamente identica === (valor e tipo);
        if (cep.length === 9) {
            //Por enquanto os ceps cadastrados ficarão num array 
            var listaDeCeps = ['11111-111', '22222-222', '33333-333', '44444-444', '55555-555'];

            //Verificamos se o cep digitado foi encontrado. Se foi localizado a variavel localizou receberá a posição do objeto que pode ser >=0 e se não foi localizado recebe -1
            var localizou = listaDeCeps.indexOf(cep);
            if (localizou > -1) {
                $("#retornocep").attr("class", "sucess");
                $("#retornocep").append("Disponível!").fadeIn(1000);
            }
            else {
                $("#retornocep").attr("class", "fail");
                $("#verificacep #cep").val("");
                $("#retornocep").append("Indisponível!").fadeIn(1000);
            }
        }
    });
    $("#exibirPolitica").fancybox({
            "width": 1000,
            "height": 758,
            "scrolling": "no",
            "autoScale": false,
            "transitionIn": "none",
            "transitionOut": "none",
            "onClosed": function () {
                parent.location.reload(true);
            },
            "type": "iframe"
        });
    //Mascaras
    $(".cep").mask("99999-999");
    $(".telefone").mask("(99) 99999-9999");
    $(".cpf").mask("999.999.999-99");
    
    //Inicializando as tabs
     $('#tabs').tab('show');
    //Validação do formulário de contatos
    $('#formContato').validate({
        rules: {
            nome: {
                minlength: 5,
                maxlength: 100,
                required: true
            },
            email: {
                minlength: 8,
                maxlength: 80,
                required: true
            },
            assunto: {
                minlength:5,
                maxlength: 80,
                required: true
            },
           mensagem: {
                minlength: 8,
                maxlength: 600,
                required: true
            }
        },
        highlight: function(element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function(error, element) {
            if(element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });
    
    var data = "q=0";//O zero será usado pois exibirá todos os usuários  
     /*var requisicao = $.ajax({
        url: "repositorio/dados/dados-usuarios.asp",
        type: "POST",
        data: data,
        dataType: "json",
        success: function (retorno) {
            if (retorno.length === 0) {
                $("#retornolista").append("<h3>Não existem usuários cadastrados!</h3>");
            }
            else {
                $("#retornolista").append("<table>");
                $("#retornolista table").attr("class", "listas");
                $("#retornolista .listas").append("<thead>");
                $("#retornolista .listas thead").append("<tr><th>Nome</th><th>E-mail</th><th>Perfil</th><th>Status</th><th></th></tr>");
                $("#retornolista .listas").append("<tbody>");
                $.each(retorno, function (i, item) {
                    var tbody = "<tr><td>" + item.NOME.toLowerCase() + "</td><td>" + item.EMAIL + "</td><td>" + item.PERFIL_EXT + "</td>"
                    tbody += "<td>" + item.STATUS_EXT + "</td><td><a href='repositorio/usuarios/dados-usuario.asp?q=" + item.ID + "' class='ver'>"
                    tbody += "<img src='img/edit.png' alt='Editar' /></a>"
                    tbody += "<a href='javascript:void(0)' onclick='ExcluirUsuario(" + item.ID + ");'><img src='img/trash.png' alt='Excluir' /></a></td></tr>";
                    $("#retornolista .listas tbody").append(tbody);

                });
            }
        },
        beforeSend: function () {
            $("#loading").css({ display: "block" });
        },
        complete: function (msg) {
            $("#loading").css({ display: "none" });
        },
        error: function (erro) {
            alert(erro);
        }
    });*/

    var data = "q=0";//O zero será usado pois exibirá todos os produtos  
     /*var requisicaoProdutos = $.ajax({
        url: "repositorio/dados/dados-produtos.asp",
        type: "POST",
        data: data,
        dataType: "json",
        success: function (retorno) {
            if (retorno.length === 0) {
                $("#listadeprodutos").append("<h3>Não existem produtos cadastrados!</h3>");
            }
            else {
                $("#listadeprodutos").append("<table>");
                $("#listadeprodutos table").attr("class", "listas");
                $("#listadeprodutos .listas").append("<thead>");
                $("#listadeprodutos .listas thead").append("<tr><th style='width:40px'></th><th style='width:160px'>Produto</th><th style='width:80px'>Preço</th><th>Descrição</th><th style='width:60px'></th></tr>");
                $("#listadeprodutos .listas").append("<tbody>");
                $.each(retorno, function (i, prod) {
                    var tbody = "<tr><td><img src='img/produtos/" + prod.CATEGORIA_EXT.toLowerCase() + "/" + prod.FOTO + "' alt='" + prod.PRODUTO + "' title='" + prod.PRODUTO + "' class='imgProdutos' /></td><td title='" + prod.PRODUTO + "'>" + prod.PRODUTO.substr(0,22) + "</td><td> R$ " + prod.VALOR + "</td><td>" + prod.DESCRICAO + "</td>"
                    tbody += "</td><td><a href='repositorio/produtos/editar-produtos.asp?q=" + prod.ID + "' class='ver'>"
                    tbody += "<img src='img/edit.png' alt='Editar' /></a>"
                    tbody += "<a href='javascript:void(0)' onclick='ExcluirProduto(" + prod.ID + ");'><img src='img/trash.png' alt='Excluir' /></a></td></tr>";
                    $("#listadeprodutos .listas tbody").append(tbody);

                });
            }
        },
        beforeSend: function () {
            $("#loading").css({ display: "block" });
        },
        complete: function (msg) {
            $("#loading").css({ display: "none" });
        },
        error: function (erro) {
            alert(erro);
        }
    });*/
    
    function produto() {
        var operacao = "A"; //"A"=Adição; "E"=Edição
        var indice_selecionado = -1;
        var tbProdutos = localStorage.getItem("tbProdutos");// Recupera os dados armazenados
        tbProdutos = JSON.parse(tbProdutos); // Converte string para objeto
        if (tbProdutos === null) // Caso não haja conteúdo, iniciamos um vetor vazio
            tbProdutos = [];


        //Formatar valor para R$ 00,00
        //function toGrana(number)
        function toGrana() {
            var number = number.toString(),
                    moeda = number.split('.')[0],
                    centavos = (number.split('.')[1] || '') + '00';
            moeda = moeda.split('').reverse().join('')
                    .replace(/(\d{3}(?!$))/g, '$1,')
                    .split('').reverse().join('');
            return moeda + '.' + centavos.slice(0, 2);
        }

        
        // Aqui começa o crud do carrinho
        this.cadastrar = function ($id, $qtde, $nomeProduto, $valor, $contentID) {
            var prod = GetProduto("Id", $id);
            if (prod !== null) {
                alert("Produto já cadastrado.");
                return;
            }
            var produto = JSON.stringify({
                Id: $id,
                NomeProduto: $nomeProduto,
                Valor: $valor,
                Qtde: $qtde,
                ContentID: $contentID
            });

            tbProdutos.push(produto);
            localStorage.setItem("tbProdutos", JSON.stringify(tbProdutos));
            window.location.reload();
            alert("Produto adicionado ao carrinho.");
            return true;
        };


        this.editar = function ($id, $qtde, $nomeProduto, $valor, $contentID) {
            tbProdutos[indice_selecionado] = JSON.stringify({
                Id: $id,
                NomeProduto: $nomeProduto,
                Valor: $valor,
                Qtde: $qtde,
                ContentID: $contentID
            });
            localStorage.setItem("tbProdutos", JSON.stringify(tbProdutos));
            window.location.reload();
            alert("Item atualizado!");
            var operacao = "A";
            return true;
        };

        this.excluir = function () {
            indice_selecionado = parseInt($(this).attr("alt"));
            tbProdutos.splice(indice_selecionado, 1);
            localStorage.setItem("tbProdutos", JSON.stringify(tbProdutos));
            alert("Item excluído da sua lista.");
            window.location.reload();
        };
        this.listar = function () {
            var numeroDeItens = 0;
            var subtotal = 0;
            for (var i in tbProdutos) {
                var prod = JSON.parse(tbProdutos[i]);
                $("#itens-pedido").append('<tr>' +
                        '<th>' + prod.NomeProduto +
                        ' <img src="img/fail.png" class="imgOperacoes btnExcluir" alt="' + i + '" title="excluir" />' +
                        ' <img src="img/edit.png" class="imgOperacoes btnEditar" alt="' + i + '" title="Editar" />' +
                        '</th>' +
                        '<td>(' + prod.Qtde + ' x R$ ' + toGrana(prod.Valor) + ')  <b>Total R$ ' + toGrana(prod.Qtde * prod.Valor) + '</b>' +
                        '<input type="hidden" name="idproduto" value="' + prod.Id + '" />' +
                        '</td></tr>');
                numeroDeItens += parseInt(prod.Qtde);
                subtotal += (parseInt(prod.Qtde) * prod.Valor);
            }
            $("#subtotal").text(subtotal);
            $("#numeroDeItens").text(numeroDeItens);
            //O valor total é a soma do subtotal com  a taxa de entrega que é R$ 6,00
            $("#valorTotal").text(subtotal + 6);
        };
        this.GetProduto = function (propriedade, valor) {
            var prod = null;
            for (var item in tbProdutos) {
                var i = JSON.parse(tbProdutos[item]);
                if (i[propriedade] === valor)
                    prod = i;
            }
            return prod;
        };
    }

    produto = new produto();
    produto.listar();

    $(".produtos-cardapio .button").on("click", function () {

        var $id = $(this).val();
        var $qtde = $(this).siblings('.qtde').val();
        var $contentID = $(this).parent().parent('div').attr('id');
        var $nomeProduto = $(this).parent().parent('div').find('b').text();
        var $valor = $(this).parent().parent('div').find('span').text();

        if (typeof ($qtde) === 'undefined') {
            $qtde = $(this).parent().parent('tr').find('.qtde').val();
            $valor = $(this).parent().parent('tr').find('span').text();
            $nomeProduto = $(this).parent().parent('tr').find('.nomeProduto').text();
            $contentID = $(this).parent().parent().parent().parent('table').attr('id');

        }
        if (operacao === "A") {

            if ($qtde.length > 0) {
                return Adicionar($id, $qtde, $nomeProduto, $valor, $contentID);
            } else {
                alert("Você precisa informar a quantidade de itens!");
            }
        }
        else
            return Editar($id, $qtde, $nomeProduto, $valor, $contentID);
    });

    $(".btnEditar").on("click", function () {
        operacao = "E";
        indice_selecionado = parseInt($(this).attr("alt"));
        var prod = JSON.parse(tbProdutos[indice_selecionado]);
        $("#" + prod.ContentID + " .qtde").val(prod.Qtde);
        $("#" + prod.ContentID + " .qtde").css("background-color", "#F7F3B5");
        $("#" + prod.ContentID + " .qtde").focus();
    });

    $(".btnExcluir").bind("click", function () {
        indice_selecionado = parseInt($(this).attr("alt"));
        Excluir();
    });

    $("#btnFinalizar").on("click", function () {
        var isGood = confirm('Você deseja finalizar o seu pedido?');
        if (isGood) {
            window.location.href = 'login.asp';
        }
    });

});