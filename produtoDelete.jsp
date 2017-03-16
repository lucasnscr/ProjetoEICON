<%-- 
    Document   : produtoDelete
    Created on : 25/06/2015, 17:51:28
    Author     : Lucas
--%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@include file="../include/topo_admin.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> jQuery UI Autocomplete - Default functionality</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">

    </head>
    <body>
        <p>  </p>
    <li><a href="produtoDelete.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Deletar Produto")%></a></li>
    <li><a href="produtoInsert.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Inserir Produto")%></a></li>
    <li><a href="produtoUpdate.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Atualizar Produto")%></a></li>
    <li><a href="produtoListar.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Listar Produto")%></a></li>
    <form class="navbar-form navbar-left" action="../jsp/delProd.jsp" method="POST">
        <div class="ui-widget">
            <input id="dell" name="dell" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("id do produto p/DEL")%>">


            <button type="submit" class="btn btn-default"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Submit")%></button>
        </div>
    </form>


</body>

</html>
