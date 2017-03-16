
<%-- 
    Document   : index
    Created on : 19/05/2015, 17:45:08
    Author     : Lucas
--%>

<%@page import="Entidades.Produto"%>
<%@page import="RegraDeNegocio.Fachada"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

    <%@include file="include/topo_index.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Titulo")%></title>
        
    </head>
    <body>
        <div class="mainmenu-area">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Toggle navigation")%></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            
                            <li class="active"><a href="index.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%></a></li>
                            <li><a href="paginas/shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="paginas/single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li><a href="paginas/cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li><a href="paginas/checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li><a href="paginas/contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                        </ul>
                    
        <%--<div class="form-group">
          <input type="text" class="form-control" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search")%>">
</div>
        <%@include file="paginas/busca.jsp" %>
        --%>
      
                    </div>  
                </div>
                
            </div>
            
        </div> <!-- End mainmenu area -->
        
        <div class="slider-area">
            <div class="zigzag-bottom"></div>
            <div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">

                <div class="slide-bulletz">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ol class="carousel-indicators slide-indicators">
                                    <li data-target="#slide-list" data-slide-to="0" class="active"></li>
                                    <li data-target="#slide-list" data-slide-to="1"></li>
                                    <li data-target="#slide-list" data-slide-to="2"></li>
                                </ol>                            
                            </div>
                        </div>
                    </div>
                </div>

                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="single-slide">
                            <div class="slide-bg slide-one"></div>
                            <div class="slide-text-wrapper">
                                <div class="slide-text">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-6">
                                                <div class="slide-content">
                                                    <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Mortal")%></h2>
                                                    <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Mortal descri")%></p>
                                                    <a href="paginas/single-product.jsp" class="readmore"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Learn More")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-slide">
                            <div class="slide-bg slide-two"></div>
                            <div class="slide-text-wrapper">
                                <div class="slide-text">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-6">
                                                <div class="slide-content">
                                                    <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Assasin")%></h2>
                                                    <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Assasis descri")%></p>
                                                    <a href="paginas/single-product.jsp" class="readmore"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Learn More")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-slide">
                            <div class="slide-bg slide-three"></div>
                            <div class="slide-text-wrapper">
                                <div class="slide-text">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-6">
                                                <div class="slide-content">
                                                    <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA")%></h2>
                                                    <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA descri")%></p>
                                                    <a href="paginas/single-product.jsp" class="readmore"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Learn More")%></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>        
        </div> 
        
        
        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-refresh"></i>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("30 Days return")%></p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-truck"></i>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Free Shiping")%></p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-lock"></i>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Secure Payments")%></p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-gift"></i>
                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("New Products")%></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Latest Products")%></h2>
                            <div class="product-carousel">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="https://www.totemgamestore.com.br/imagem/index/7014923/G/jogo_jogos_game_games_totem_game_store_the_witcher_3_wild_hunt_playstation_4_x_box_one_xone_ps_4_ps4_capa_ps4_.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            <a href="pagProdutos/theWitcher3_PS.jsp" class="view-details-link"><i class="fa fa-link"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("See Details")%></a>
                                        </div>
                                    </div>

                                            <h2><a href="pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></h2>

                                    <div class="product-carousel-price">
                                        <%try {
                                        Produto p1 = Fachada.getFachada().getControladorProduto().recuperarProduto(8);
                                %>
                                <ins>R$<%=p1.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="http://www.datishop.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/x/b/xbox_one_the_witcher_3_wild_hunt_capa_1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            <a href="pagProdutos/theWitcher3_XO.jsp" class="view-details-link"><i class="fa fa-link"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("See Details")%></a>
                                        </div>
                                    </div>

                                    <h2><a href="pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></h2>
                                    
                                    <div class="product-carousel-price">
                                        <%try {
                                        Produto p2 = Fachada.getFachada().getControladorProduto().recuperarProduto(9);
                                %>
                                <ins>R$<%=p2.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="http://www.mdgamestore.com.br/wp-content/uploads/2014/07/GTA-V-PS4-cover-ts.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            <a href="pagProdutos/gTA5_PS.jsp" class="view-details-link"><i class="fa fa-link"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("See Details")%></a>
                                        </div>
                                    </div>

                                    <h2><a href="pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a></h2>

                                    <div class="product-carousel-price">
                                        <%try {
                                        Produto p3 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                %>
                                <ins>R$<%=p3.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %> 
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-4.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            <a href="paginas/single-product.jsp" class="view-details-link"><i class="fa fa-link"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("See Details")%></a>
                                        </div>
                                    </div>

                                    <h2><a href="paginas/single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("PlayStation 4")%></a></h2>

                                    <div class="product-carousel-price">
                                        <ins>R$200.00</ins> 
                                    </div>                            
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="http://www.jonygames.com.br/media/catalog/product/g/t/gta_v_xbox_one_capa_jony_games.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            <a href="pagProdutos/gTA5_XO.jsp" class="view-details-link"><i class="fa fa-link"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("See Details")%></a>
                                        </div>
                                    </div>

                                    <h2><a href="pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - XBOX ONE")%></a></h2>

                                    <div class="product-carousel-price">
                                        <%try {
                                        Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(6);
                                %>
                                <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %>
                                    </div>                                 
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="brands-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <h2 class="section-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Brands")%></h2>
                            <div class="brand-list">
                                <img src="img/services_logo__1.jpg" alt="">
                                <img src="img/services_logo__2.jpg" alt="">
                                <img src="img/services_logo__3.jpg" alt="">
                                <img src="img/services_logo__4.jpg" alt="">
                                <img src="img/services_logo__1.jpg" alt="">
                                <img src="img/services_logo__2.jpg" alt="">
                                <img src="img/services_logo__3.jpg" alt="">
                                <img src="img/services_logo__4.jpg" alt="">                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        
    </body>
    <%@include file="include/rodape_index.jsp" %>
</html>
