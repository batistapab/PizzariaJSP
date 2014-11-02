<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/jspf/includes/topo.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menu.jspf" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
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
<%@ include file="WEB-INF/jspf/includes/sidebar.jspf" %>
<%@ include file="WEB-INF/jspf/includes/javascripts.jspf" %>
<%@ include file="WEB-INF/jspf/includes/footer.jspf" %>