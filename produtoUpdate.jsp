<%-- 
    Document   : produtoInsert
    Created on : 24/06/2015, 21:18:58
    Author     :  Lucas
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
    <li><a href="produtoDelete.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Deletar Produto")%></a></li>
    <li><a href="produtoInsert.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Inserir Produto")%></a></li>
    <li><a href="produtoUpdate.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Atualizar Produto")%></a></li>
    <li><a href="produtoListar.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Listar Produto")%></a></li>    
    <%--<div class="mainmenu-area">
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

</div> --%> <!-- End mainmenu area -->

    <div class =" container">  
        <div id="customer_details" class="col2-set" >

            <div class="col-1">
                <div class="woocommerce-billing-fields">

                    <p>  <h3><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Update Product")%></h3>  </p> 

                    <form  name="produto" method="post" action="../jsp/upProd.jsp">
                        <label class="" for="codProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CodProduto")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value=""  placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("CodProduto")%>" id="codProduto" name="codProduto" class="input-text ">

                        <label class="" for="nomeProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Nome")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value=""  placeholder="" id="nomeProduto" name="nomeProduto" class="input-text ">
                        <%--
                        <label class="" for="codProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Codigo")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Codigo")%>" id="codprod" name="codProduto" class="input-text ">
                        --%>
                        <label class="" for="precoProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Preco")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value="" placeholder="" id="precoProduto" name="precoProduto" class="input-text ">

                        <label class="" for="qtdProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Quantidade")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Quantidade produto")%>" id="qtdProduto" name="qtdProduto" class="input-text ">


                        <label class="" for="precoVenda"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Preco Venda")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Preco Venda")%>" id="precoVenda" name="precoVenda" class="input-text ">

                        <label class="" for="statusProduto"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("statusProduto")%> <abbr title="required" class="required">*</abbr>
                        </label>
                        <input type="text" value="" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("statusProduto")%>" id="statusProduto" name="statusProduto" class="input-text ">

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


</body>
<%
    if (request.getAttribute("msg") != null) {
%>
<script type="text/javascript"> alert("<%= request.getAttribute("msg")%>");</script>
<%
    }
%>
</html>