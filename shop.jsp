<%-- 
    Document   : shop
    Created on : 19/05/2015, 18:22:27
    Author     : Lucas
--%>

<%@page import="RegraDeNegocio.Fachada"%>
<%@page import="Entidades.Produto"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/topo.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
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
                            <li class="active"><a href="shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li><a href="cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li><a href="contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                        </ul>
                        <%--<form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search")%>">
        </div>
        <button type="submit" class="btn btn-default"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Submit")%></button>
</form>--%>
                    </div>  
                </div>
            </div>
        </div> <!-- End mainmenu area -->

        <div class="product-big-title-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-bit-title text-center">
                            <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-shop-product">
                            <div class="product-upper">
                                <img src="../img/theWitcher3WildHunt_XO.jpg" alt="">
                            </div>
                            <h2><a href="../pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></h2>
                            <div class="product-carousel-price">
                                <%try {
                                        Produto p1 = Fachada.getFachada().getControladorProduto().recuperarProduto(9);
                                %>
                                <ins>R$<%=p1.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %>
                            </div>  

                            <div class="product-option-shop">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                            </div>                       
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-shop-product">
                            <div class="product-upper">
                                <img src="../img/theWitcher3WildHunt_PS.jpg" alt="">
                            </div>
                            <h2><a href="../pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></h2>
                            <div class="product-carousel-price">
                                <%try {
                                        Produto p2 = Fachada.getFachada().getControladorProduto().recuperarProduto(8);
                                %>
                                <ins>R$<%=p2.getPrecoVenda()%>,00</ins>
                                <%
                                    } catch (NullPointerException e) {
                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                    }
                                %>
                            </div>  

                            <div class="product-option-shop">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                            </div>                       
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-shop-product">
                            <div class="product-upper">
                                <img src="../img/gTA5_PS.jpg" alt="">
                            </div>
                            <h2><a href="../pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA")%></a></h2>
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

                            <div class="product-option-shop">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                            </div>                       
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-shop-product">
                            <div class="product-upper">
                                <img src="../img/gTA5_XO.jpg" alt="">
                            </div>
                            <h2><a href="../pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA")%></a></h2>
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

                            <div class="product-option-shop">
                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="/canvas/shop/?add-to-cart=70"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                            </div>                       
                        </div>
                    </div>

                </div>


            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%>">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>

                                <li>
                                    <a href="#" aria-label="Next<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Home")%>">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<%@include file="../include/rodape.jsp" %>
</html>
