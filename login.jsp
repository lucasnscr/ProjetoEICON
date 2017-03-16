<%-- 
    Document   : login
    Created on : 19/05/2015, 18:22:08
    Author     : Lucas
--%>

<%@page import="RegraDeNegocio.Fachada"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <%@include file="../include/topo.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>

        

    </head>
    <center>
        <body>
            <div class="mainmenu-area">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
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
                            <li><a href="checkout.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Checkout")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Category")%></a></li>
                            <li><a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Others")%></a></li>
                            <li><a href="contact.jsp"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Contact")%></a></li>
                            </ul>
                            
                        </div>  
                    </div>

                </div>

            </div> <!-- End mainmenu area -->

            <div>
                <form name="Login"  action="../jsp/verificalogin.jsp" id="login-form-wrap" class="login collapse in" method="post">
                    <!--form  name="Cadastro" method="post" action="../jsp/validaRegistro.jsp"-->
                        <h1><a><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Login")%></a></h1>     

                        <hr class="soften">
                        <p>   </p>

                        <p><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("descri login")%></p>

                        <p class="form-row form-row-first">
                            <label for="cpf/cnpj"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CPF/CNPJ")%> <span class="required">*</span>
                            </label>
                            <input type="text" id="cpfcnpj" name="cpf/cnpj" class="input-text">
                        </p>
                        <p class="form-row form-row-last">
                            <label for="password"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Password")%> <span class="required">*</span>
                            </label>
                            <input type="password" id="password" name="password" class="input-text">
                        </p>
                        <div class="clear"></div>


                        <p class="form-row">
                            <input type="submit" value="Login" name="login" class="button">

                        <p class="lost_password">
                            <a href="#"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Lost your password?")%></a>
                        </p>

                        <div class="clear"></div>
                    </form></div>
        </body>
    </center>
    <%@include file="../include/rodape.jsp" %>

</html>
