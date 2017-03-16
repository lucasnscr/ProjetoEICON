<%@page import="RegraDeNegocio.Fachada"%>
<%@page import="Entidades.Produto"%>
<%@page import="Entidades.Produto"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/topo.jsp" %>
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
                            <li><a href="../index.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%></a></li>
                            <li><a href="../paginas/shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="../paginas/single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li><a href="../paginas/cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li><a href="../paginas/checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li><a href="../paginas/contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                        </ul>
                       
                    </div>  
                </div>

            </div>

        </div> <!-- End mainmenu area -->
        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
<!--                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search Products")%></h2>
                            <form action="">
                                <input type="text" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search Products")%>">
                                <input type="submit" value="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search")%>">
                            </form>
                        </div>-->

                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Products")%></h2>
                            <div class="thubmnail-recent">
                                <img src="http://www.mdgamestore.com.br/wp-content/uploads/2014/07/GTA-V-PS4-cover-ts.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%Produto p1 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);%>
                                        <ins>R$<%=p1.getPrecoVenda()%>,00</ins>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="http://www.jonygames.com.br/media/catalog/product/g/t/gta_v_xbox_one_capa_jony_games.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - XBOX ONE")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%Produto p2 = Fachada.getFachada().getControladorProduto().recuperarProduto(6);%>
                                        <ins>R$<%=p2.getPrecoVenda()%>,00</ins>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="https://www.totemgamestore.com.br/imagem/index/7014923/G/jogo_jogos_game_games_totem_game_store_the_witcher_3_wild_hunt_playstation_4_x_box_one_xone_ps_4_ps4_capa_ps4_.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%Produto p3 = Fachada.getFachada().getControladorProduto().recuperarProduto(8);%>
                                        <ins>R$<%=p3.getPrecoVenda()%>,00</ins>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="http://www.datishop.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/x/b/xbox_one_the_witcher_3_wild_hunt_capa_1.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(9);%>
                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                </div>                             
                            </div>
                        </div>

                        <div class="single-sidebar">
                            <h2 class="sidebar-title">Recent Posts</h2>
                            <ul>
                                 <li><a href="../pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></li>
                                <li><a href="../pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></li>
                                <li><a href="../pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a></li>
                                <li><a href="../pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - XBOX ONE")%></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="product-breadcroumb">
                                <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%></a>
                                <a href="../paginas/single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Games")%></a>
                                <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher 3")%></a>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="product-images">
                                        <div class="product-main-img">
                                            <img src="http://www.datishop.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/x/b/xbox_one_the_witcher_3_wild_hunt_capa_1.jpg" alt="" style="
                                                 width: 300px;
                                                 height: 360px;
                                                 ">
                                        </div>


                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="product-inner">
                                        <h2 class="product-name"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher 3")%></h2>
                                        <div class="product-inner-price">
                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                        </div>    

                                        <form action="" class="cart">
                                            <div class="quantity">
                                                <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                            </div>
                                            <button class="add_to_cart_button" type="submit"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></button>
                                        </form>  

                                        <div class="product-inner-category">
                                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%> <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Games")%></a>. <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Tags:")%> <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("RPG")%></a>, <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Fight")%></a>, <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single player")%></a>, <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("multiplayer")%></a>  <a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Xbox one")%></a>. </p>
                                        </div> 

                                        <div role="tabpanel">
                                            <ul class="product-tab" role="tablist">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Description")%></a></li>
                                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Reviews")%></a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                    <h2>Product Description</h2>  
                                                    <p>The Witcher III: Wild Hunt Premium Items!</p>
                                                    <p>Dedicated to gamers who want more from physical box editions of games than just the disc and manual, containing premium items prepared by the developers, this edition of The Witcher III: Wild Hunt is the definitive answer for those gamers who want to enter the Witcher Universe in style.</p>
                                                    <p>The Witcher III: Wild Hunt includes:</p>
                                                    <p>An Exclusive CD with the Official Soundtrack</p>
                                                    <p>The Official, Developer-Created "The Witcher Universe: Compendium"</p>
                                                    <p>A Beautiful, Detailed Map of the In-Game World</p>
                                                    <p>A Set of Unique Witcher III Stickers</p>
                                                    <p>A Stylish, Protective Sleeve</p>
                                                    <p>*Items not included with Digital or Pre-owned.</p>    
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="profile">
                                                    <h2>Reviews</h2>
                                                    <div role="tabpanel" class="tab-pane fade" id="profile">
                                                    <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Reviews")%></h2>
                                                    <div class="submit-review">
                                                        <p><label for="name"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Name")%></label> <input name="name" type="text"></p>
                                                        <p><label for="email"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Email")%></label> <input name="email" type="email"></p>
                                                        <div class="rating-chooser">
                                                            <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Your rating")%></p>

                                                            <div class="rating-wrap-post">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p><label for="review"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Your review")%></label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                        <p><input type="submit" value="Submit"></p>
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
            </div>
        </div>
    </div>
</body>
<%@include file="../include/rodape.jsp" %>
</html>
