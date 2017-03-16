<%-- 
    Document   : checout
    Created on : 19/05/2015, 18:20:50
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
                            <li><a href="shop.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shop")%></a></li>
                            <li><a href="single-product.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Single product")%></a></li>
                            <li><a href="cart.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Carro")%></a></li>
                            <li class="active"><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
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
                        </form>
                        --%>
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
        </div>


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-sidebar">
                            <h2 class="sidebar-title"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search Products")%></h2>
                            <form action="">
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
                                <div class="woocommerce-info"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Returning customer")%> <a class="showlogin" data-toggle="collapse" href="#login-form-wrap" aria-expanded="false" aria-controls="login-form-wrap"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Click here to login")%></a>
                                </div>

                                <form id="login-form-wrap" class="login collapse" method="post">


                                    <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("directBank")%></p>

                                    <p class="form-row form-row-first">
                                        <label for="username"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CPF/CNPJ")%> <span class="required">*</span>
                                        </label>
                                        <input type="text" id="username" name="username" class="input-text">
                                    </p>
                                    <p class="form-row form-row-last">
                                        <label for="password"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Password")%> <span class="required">*</span>
                                        </label>
                                        <input type="password" id="password" name="password" class="input-text">
                                    </p>
                                    <div class="clear"></div>


                                    <p class="form-row">
                                        <input type="submit" value="Login" name="login" class="button">
                                        <label class="inline" for="rememberme"><input type="checkbox" value="forever" id="rememberme" name="rememberme"> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Remember me")%> </label>
                                    </p>
                                    <p class="lost_password">
                                        <a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Lost your password?")%></a>
                                    </p>

                                    <div class="clear"></div>
                                </form>

                                <%-- <div class="woocommerce-info">Have a coupon? <a class="showcoupon" data-toggle="collapse" href="#coupon-collapse-wrap" aria-expanded="false" aria-controls="coupon-collapse-wrap">Click here to enter your code</a>
</div> --%>

                                <form id="coupon-collapse-wrap" method="post" class="checkout_coupon collapse">

                                    <p class="form-row form-row-first">
                                        <input type="text" value="" id="coupon_code" placeholder="Coupon code" class="input-text" name="coupon_code">
                                    </p>

                                    <p class="form-row form-row-last">
                                        <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                    </p>

                                    <div class="clear"></div>
                                </form>

                                <form enctype="multipart/form-data" action="#" class="checkout" method="post" name="checkout">

                                    <div id="customer_details" class="col2-set">
                                       

                                       

                                    </div>

                                    <h3 id="order_review_heading"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Your order")%></h3>

                                    <div id="order_review" style="position: relative;">
                                        <table class="shop_table">
                                            <thead>
                                                <tr>
                                                    <th class="product-name"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Product")%></th>
                                                    <th class="product-total"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Total")%></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="cart_item">
                                                    <td class="product-name">
                                                        <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Ship Your Idea")%> <strong class="product-quantity">× 1</strong> </td>
                                                    <td class="product-total">
                                                        <span class="amount"><%try {
                                                            Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                                        %>
                                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                                        <%
                                                        } catch (NullPointerException e) {
                                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                                    }
                                                        %></span> </td>
                                                </tr>
                                            </tbody>
                                            <tfoot>

                                                <tr class="cart-subtotal">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Cart Subtotal")%></th>
                                                    <td><span class="amount"><%try {
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

                                                <tr class="shipping">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Shipping and Handling")%></th>
                                                    <td>

                                                        <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Free Shiping")%>
                                                        <input type="hidden" class="shipping_method" value="free_shipping" id="shipping_method_0" data-index="0" name="shipping_method[0]">
                                                    </td>
                                                </tr>


                                                <tr class="order-total">
                                                    <th><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Order Total")%></th>
                                                    <td><strong><span class="amount"><%try {
                                                            Produto p4 = Fachada.getFachada().getControladorProduto().recuperarProduto(7);
                                                        %>
                                                        <ins>R$<%=p4.getPrecoVenda()%>,00</ins>
                                                        <%
                                                        } catch (NullPointerException e) {
                                                        %><ins>PRODUTO INDISPONIVEL!</ins><%
                                                                    }
                                                        %></span></strong> </td>
                                                </tr>

                                            </tfoot>
                                        </table>


                                        <div id="payment">
                                            <ul class="payment_methods methods">
                                                <li class="payment_method_bacs">
                                                    <input type="radio" data-order_button_text="" checked="checked" value="bacs" name="payment_method" class="input-radio" id="payment_method_bacs">
                                                    <label for="payment_method_bacs"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Direct Bank Transfer")%> </label>
                                                    <div class="payment_box payment_method_bacs">
                                                        <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("descri banco")%></p>
                                                    </div>
                                                </li>
                                                <li class="payment_method_cheque">
                                                    <input type="radio" data-order_button_text="" value="cheque" name="payment_method" class="input-radio" id="payment_method_cheque">
                                                    <label for="payment_method_cheque"> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Cheque Payment")%></label>
                                                    <div style="display:none;" class="payment_box payment_method_cheque">
                                                        <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("descri cheque")%></p>
                                                    </div>
                                                </li>
                                                <li class="payment_method_paypal">
                                                    <input type="radio" data-order_button_text="Proceed to PayPal" value="paypal" name="payment_method" class="input-radio" id="payment_method_paypal">
                                                    <label for="payment_method_paypal"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("PayPal")%> <img alt="PayPal Acceptance Mark" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a title="What is PayPal?" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup', 'WIPaypal', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700');
                                                            return false;" class="about_paypal" href="https://www.paypal.com/gb/webapps/mpp/paypal-popup"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("What is PayPal?")%></a>
                                                    </label>
                                                    <div style="display:none;" class="payment_box payment_method_paypal">
                                                        <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("descri paypal")%></a></p>
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="form-row place-order">

                                                <input type="submit" data-value="Place order" value="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Place order")%>" id="place_order" name="woocommerce_checkout_place_order" class="button alt">


                                            </div>

                                            <div class="clear"></div>

                                        </div>
                                    </div>
                                </form>

                            </div>                       
                        </div>                    
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%@include file="../include/rodape.jsp" %>
</html>
