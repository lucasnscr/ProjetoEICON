<%-- 
    Document   : paginaProdutoCRUD
    Created on : 26/06/2015, 17:41:13
    Author     : Lucas
--%>

<%@page import="RegraDeNegocio.Fachada"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <%@include file="../include/topo_admin.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>



    </head>
    <center>
        <body>
            <!--            <div class="mainmenu-area">
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

            <div>
                <br> </br>


                <h1><a><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Produto CRUD")%></a></h1>     

                <div class="container">

                    <center>
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <br> </br>
                                <br> </br>

                                


                                
                                

                                


                                <p> </p>

                            </div>

                        </div>
                    </center>
                    <button type="button"  style=";width: 100px; height: 100px " onclick="alert('Listar')"><a href="produtoListar.jsp">Listar</a></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                                <button type="button"  style=";width: 100px; height: 100px " onclick="alert('Adicionar')"><a href="produtoInsert.jsp">Adicionar</a></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                                <button type="button"  style=";width: 100px; height: 100px " onclick="alert('Remover')"><a href="produtoDelete.jsp">Remover</a></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                                <button type="button"  style=";width: 100px; height: 100px " onclick="alert('Alterar')"><a href="produtoUpdate.jsp">Alterar</a></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <br> </br>
                    <button type="button"  style=";width: 60px; height: 30px "><a href="../inicio.jsp">Inicio</a></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                </div>
            </div>
        </body>              
    </center>

</html>


