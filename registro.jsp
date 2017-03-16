<%-- 
    Document   : registro
    Created on : 19/05/2015, 20:17:32
    Author     : Lucas
--%>


<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <%@include file="../include/topo_admin.jsp" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <%-- Tentativa de uma janela para o OK 
        <script>
if(request.getAttribute("msg"))<%{%>
            alert(
            <%
                        request.getAttribute("msg");
            %>);
<%}%>
        </script>
        
        --%>
    </head>

    <body>
        <p>  </p>
<!--        <div class="mainmenu-area">
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

        </div>  End mainmenu area -->

        <div class =" container">  
            <div id="customer_details" class="col2-set" >

                <div class="col-1">
                    <div class="woocommerce-billing-fields">

                        <p>  <h3><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Sing Up")%></h3>  </p> 

                        <form  name="Cadastro" method="post" action="../jsp/validaRegistro.jsp">
                            <label class="" for="nome"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Complete Name")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value=""  placeholder="" id="nome" name="nome" class="input-text ">

                            <label class="" for="cpfCnpjCliente"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CPF/CNPJ")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CPF/CNPJ")%>" id="cpfcnpj" name="cpfCnpjCliente" class="input-text ">

                            <label class="" for="emailUsuario"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Email Address")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="" id="email" name="billing_email" class="input-text ">

                            <label class="" for="account_password"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Account password")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="password" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Password")%>" id="senha" name="account_password" class="input-text">

                            <label class="" for="confirm_account_password"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Confirm Account Password")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="password" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Password")%>" id="account_password" name="confirm_account_password" class="input-text">

                            <label class="" for="billing_address_1"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Address")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Street address")%>" id="endereco" name="billing_address_1" class="input-text ">
                            <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Number")%>" id="endereco" name="billing_address_number" class="input-text">

                            <label class="" for="billing_city"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Town / City")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Town / City")%>" id="cidade" name="billing_city" class="input-text ">

                            <label class="" for="billing_state"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Country")%></label>
                            <input type="text" id="estado" name="billing_state" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("State / Country")%>" value="" class="input-text ">

                            <label class="" for="billing_postcode"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Postcode")%> <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Postcode / Zip")%>" id="codigo_postal" name="billing_postcode" class="input-text ">




                            <input type="submit" value="OK" name="Cadastrado">
                            <input type="button" value="Cancelar" name="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Cancelar")%>" />

                        </form>



                        <%-- </div>--%>

                        <%--  <p id="billing_company_field" class="form-row form-row-wide">
                              <label class="" for="billing_company">Company Name</label>
                              <input type="text" value="" placeholder="" id="billing_company" name="billing_company" class="input-text ">
  </p> --%>



                        <div class="clear"></div>



                        <%--<p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                            <label class="" for="billing_phone">Phone <abbr title="required" class="required">*</abbr>
                            </label>
                            <input type="text" value="" placeholder="" id="billing_phone" name="billing_phone" class="input-text ">
</p>--%>
                        <div class="clear"></div>




                    </div>


                </div>

            </div>
            <p> </p>

        </div>

    </p>
</body>
<%--<%@include file="../include/rodape.jsp" %>--%>
<%
    if (request.getAttribute("msg") != null) {
%>
<script type="text/javascript"> alert("<%= request.getAttribute("msg")%>");</script>
<%
    }
%>
</html>
