<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="content-language" content="pt-br">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="robots" content="index,follow">
        <meta http-equiv="pragma" content="no-cache">  
        <meta name="author" content="Pablo Batista">
        <meta name="keywords" content="Vendas, websites, sistemas web"/>	
        <meta name="description" content="Tenha um site ou sistema sob medida para sua empresa com ótimo custo benefício." />
        <title>Modelo</title>	
        <link rel="alternate" type="application/rss+xml" title="Feed de notícias" 
              href="http://pablobatista.com.br/feed" />
        <link rel="index" title="Início" href="http://pablobatista.com.br"/> 
        <link rel="author" title="Autor" href="http://pablobatista.com.br" /> 
        <link rel="help" title="Ajuda do site" href="http://pablobatista.com.br" /> 	
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">	
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="js/ie10-viewport-bug-workaround.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="geral">
            <header id="header">
                <img src="img/pizzaVetor.png"  alt="Click Pizzas" title="Click Pizzas" />
                <section>
                    <h1>Click Pizzas </h1>
                    <h2>A sua pizzaria interativa !</h2>
                </section>
                <nav class="menu">
                    <ul>
                        <li><a href="">Principal</a></li>
                        <li><a href="">Cardápio</a></li>
                        <li><a href="">Login</a></li>
                        <!--<li><a href="">Minha Página</a></li>
                        <li><a href="">Sair</a></li>-->
                    </ul>
                </nav>
            </header>
            <div id="conteudo">
                <!-- Carousel
================================================== -->
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/ambiente.jpg" alt="First slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>Ambiente.</h1>
                                    <p>Confortável e aconchegante! Nosso estabelecimento é ideal para vir com a família.</p>
                                    <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>-->
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/forno.jpg" alt="Second slide">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>Forno de lenha</h1>
                                    <p>Nosso forno consegue deixa melhor ainda as nossas pizzas.</p>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/pizza.jpg" alt="Cardápio">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h1>Cardápio variado.</h1>
                                    <p>Com receitas passadas de geração em geração da nossa família.</p>
                                    <p><a class="btn btn-lg btn-brown" href="#" role="button">Ver o cardápio</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div><!-- /.carousel -->
                <div class="sectiongroup">
                    <section>
                        <header>Cardápio</header>
                        <aside>
                            A Click Pizzas tem as melhores pizzas das região, sem falar em nossos 
                            ingredientes italianos secretos passados desde os primeiros proprietários.
                        </aside>
                        <p><img src="img/ingredientes.png" alt="ingredientes" title="ingredientes" /></p>
                    </section>
                    <section>
                        <header>O Ambiente</header>
                        <aside>
                            Nossa pizzaria difere das outras não apenas pelo sabor dos nossos produtos, 
                            mas também pelo atendimento e por ser um local aconchegante e familiar.                           
                        </aside>
                        <p><img src="img/dinner.jpg" alt="Ambiente" title="Ambiente" /></p>
                    </section>
                    <section>
                        <header>Nossa localização</header>
                        <aside>
                            Alameda Olga, 34455206 - Santa Barbara - São Paulo - SP 01155-040
                        </aside>
                        <p> <img src="img/maps.png" alt="Localização" title="Localização" /></p>

                    </section>
                </div>
            </div>

            <div id="sidebar">
                 <div id="atendimento">
                    <h2>Atendimento</h2>
                    <p><strong>Todos os dias</strong></p>
                    <p>Das 15:00h as 1:00h</p>
                    <p>Nossos telefones</p>
                    <p> (011) 2222-2222</p>
                    <p> (011) 3333-3333</p>
                </div>
                <div id="formasDePagamento">
                    <h2>Formas de pagamento</h2>
                    <br />
                    <img src="img/cartoes/master.png" alt="" />                    
                    <img src="img/cartoes/visa.png" alt="" />
                    <img src="img/cartoes/dinners.png" alt="" />
                    <img src="img/cartoes/aura.png" alt="" />
                    <img src="img/cartoes/american.png" alt="" />
                    <img src="img/cartoes/redeshop.png" alt="" />                    
                    <img src="img/cartoes/maestro.png" alt="" />
                    <img src="img/cartoes/elo.png" alt="" />
                    <br />
                    <p>Além dos cartões acima o pagamento presencial na retirada ou na loja pode ser feito com os cartões abaixo.</p>
                    <img src="img/cartoes/cifrao.png" alt="" />
                    <img src="img/cartoes/visavale.png" alt="" />
                    <img src="img/cartoes/sodexo.png" alt="" />
                    <img src="img/cartoes/vr.png" alt="" />
                    
                </div>

            </div> 
            <div id="wrap"></div>
        </div>
        <footer id="footer"></footer>
        <script type = "text/javascript" src = "js/jquery.min.js"></script> 
        <script type = "text/javascript" src = "bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>