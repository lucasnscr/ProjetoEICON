<%-- 
    Document   : cart
    Created on : 19/05/2015, 18:19:48
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
                            <li><a href="shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li class="active"><a href="paginas/cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li><a href="contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                        </ul>
                        <%--
                                                <form class="navbar-form navbar-left" role="search">
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
                            <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End Page title area -->

        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search Products")%></h2>
                            <form action="#">
                                <input type="text" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search Products")%>">
                                <input type="submit" value="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search")%>">
                            </form>
                        </div>

                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Products")%></h2>
                            <div class="thubmnail-recent">
                                <img src="../img/gTA5_PS.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%try {
                                            Produto p1 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                    %>
                                    <ins>R$<%=p1.getPrecoVenda()%>,00</ins>
                                    <%
                                    } catch (NullPointerException e) {
                                    %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                }
                                    %>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="../img/gTA5_XO.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - XBOX ONE")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%try {
                                            Produto p2 = Fachada.getFachada().getControladorProduto().recuperarProduto(6);
                                    %>
                                    <ins>R$<%=p2.getPrecoVenda()%>,00</ins>
                                    <%
                                    } catch (NullPointerException e) {
                                    %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                }
                                    %>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="../img/theWitcher3WildHunt_PS.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%try {
                                            Produto p3 = Fachada.getFachada().getControladorProduto().recuperarProduto(8);
                                    %>
                                    <ins>R$<%=p3.getPrecoVenda()%>,00</ins>
                                    <%
                                    } catch (NullPointerException e) {
                                    %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                }
                                    %>
                                </div>                             
                            </div>
                            <div class="thubmnail-recent">
                                <img src="../img/theWitcher3WildHunt_XO.jpg" class="recent-thumb" alt="">
                                <h2><a href="../pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></h2>
                                <div class="product-sidebar-price">
                                    <%try {
                                            Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(9);
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

                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Recent Posts")%></h2>
                            <ul>
                                <li><a href="../pagProdutos/theWitcher3_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></a></li>
                                <li><a href="../pagProdutos/theWitcher3_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - PS4")%></a></li>
                                <li><a href="../pagProdutos/gTA5_PS.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a></li>
                                <li><a href="../pagProdutos/gTA5_XO.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - XBOX ONE")%></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-8">
                        <div class="product-content-right">
                            <div class="woocommerce">
                                <form method="post" action="#">
                                    <table cellspacing="0" class="shop_table cart">
                                        <thead>
                                            <tr>
                                                <th class="product-remove">&nbsp;</th>
                                                <th class="product-thumbnail">&nbsp;</th>
                                                <th class="product-name"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Product")%></th>
                                                <th class="product-price"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Price")%></th>
                                                <th class="product-quantity"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Quantity")%></th>
                                                <th class="product-subtotal"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Total")%></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="cart_item">
                                                <td class="product-remove">
                                                    <a title="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Remove this item")%>" class="remove" href="#">×</a> 
                                                </td>

                                                <td class="product-thumbnail">
                                                    <a href="single-product.jsp"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="../img/gTA5_PS.jpg"></a>
                                                </td>

                                                <td class="product-name">
                                                    <a href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("GTA 5 - Ps4")%></a> 
                                                </td>

                                                <td class="product-price">
                                                    <span class="amount"><%try {
                                                            Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                                        %>
                                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                                        <%
                                                        } catch (NullPointerException e) {
                                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                                    }
                                                        %></span> 
                                                </td>

                                                <td class="product-quantity">
                                                    <div class="quantity buttons_added">
                                                        <input type="button" class="minus" value="-">
                                                        <input type="number" size="4" class="input-text qty text" title="Qty" value="1" min="0" step="1">
                                                        <input type="button" class="plus" value="+">
                                                    </div>
                                                </td>

                                                <td class="product-subtotal">
                                                    <span class="amount"><%try {
                                                            Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                                        %>
                                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                                        <%
                                                        } catch (NullPointerException e) {
                                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                                    }
                                                        %></span> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="actions" colspan="6">
                                                    <%--
                                                      <input type="submit" value="Update Cart" name="update_cart" class="button">

                                                    <input type="submit" value="Proceed to Checkout" name="proceed" class="button"> --%>
                                                    <h4><a href=""><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Update Cart")%></a></h4>
                                                    <h4><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></h4>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>

                                <div class="cart-collaterals">


                                    <div class="cross-sells">
                                        <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("You may be interested in...")%></h2>
                                        <ul class="products">
                                            <li class="product">
                                                <a href="single-product.jsp">
                                                    <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="../img/theWitcher3WildHunt_XO.jpg">
                                                    <h3><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("The Witcher III: Wild Hunt - XBOX ONE")%></h3>
                                                    <span class="price"><span class="amount"><%Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);%>
                                                                R$<%=p4.getPrecoVenda()%>,00</span></span>
                                                </a>

                                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            </li>

                                            <li class="product">
                                                <a href="single-product.jsp">
                                                    <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="../img/product-4.jpg">
                                                    <h3><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("PlayStation 4")%></h3>
                                                    <span class="price"><span class="amount">R$200,00</span></span>
                                                </a>

                                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Add to Cart")%></a>
                                            </li>
                                        </ul>
                                    </div>


                                    <div class="cart_totals ">
                                        <h2><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Cart Totals")%></h2>

                                        <table cellspacing="0">
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Cart Subtotal")%></th>
                                                    <td><span class="amount">£15.00</span></td>
                                                </tr>

                                                <tr class="shipping">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shipping and Handling")%></th>
                                                    <td><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Free Shipping")%></td>
                                                </tr>

                                                <tr class="order-total">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Order Total")%></th>
                                                    <td><strong><span class="amount">£15.00</span></strong> </td>
                                                </tr>
                                            </tbody>
                                        </table>
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
