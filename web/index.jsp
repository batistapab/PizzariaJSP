<jsp:include page="/includes/topo.jsp" />
<jsp:include page="/includes/menu.jsp" />
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
                    <p>Confort�vel e aconchegante! Nosso estabelecimento � ideal para vir com a fam�lia.</p>
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
            <img src="img/pizza.jpg" alt="Card�pio">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Card�pio variado.</h1>
                    <p>Com receitas passadas de gera��o em gera��o da nossa fam�lia.</p>
                    <p><a class="btn btn-lg btn-brown" href="#" role="button">Ver o card�pio</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div><!-- /.carousel -->
<div class="sectiongroup">
    <section>
        <header>Card�pio</header>
        <aside>
            A Click Pizzas tem as melhores pizzas das regi�o, sem falar em nossos 
            ingredientes italianos secretos passados desde os primeiros propriet�rios.
        </aside>
        <p><img src="img/ingredientes.png" alt="ingredientes" title="ingredientes" /></p>
    </section>
    <section>
        <header>O Ambiente</header>
        <aside>
            Nossa pizzaria difere das outras n�o apenas pelo sabor dos nossos produtos, 
            mas tamb�m pelo atendimento e por ser um local aconchegante e familiar.                           
        </aside>
        <p><img src="img/dinner.jpg" alt="Ambiente" title="Ambiente" /></p>
    </section>
    <section>
        <header>Nossa localiza��o</header>
        <aside>
            Alameda Olga, 34455206 - Santa Barbara - S�o Paulo - SP 01155-040
        </aside>
        <p> <img src="img/maps.png" alt="Localiza��o" title="Localiza��o" /></p>

    </section>
</div>
<jsp:include page="/includes/sidebar.jsp" />
<jsp:include page="/includes/javascripts.jsp" />
<jsp:include page="/includes/footer.jsp" />

