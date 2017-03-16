<%-- 
    Document   : produtoDelete
    Created on : 25/06/2015, 17:51:28
    Author     : Lucas
--%>
<%@page import="Excecoes.ExceptionProdutoNaoCadastrado"%>
<%@page import="Entidades.Produto"%>
<%@page import="RegraDeNegocio.Fachada"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@include file="../include/topo_admin.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--        <title> jQuery UI Autocomplete - Default functionality</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">-->

    </head>
    <body>
        <p>  </p>
    <li><a href="produtoDelete.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Deletar Produto")%></a></li>
    <li><a href="produtoInsert.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Inserir Produto")%></a></li>
    <li><a href="produtoUpdate.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Atualizar Produto")%></a></li>
    <li><a href="produtoListar.jsp"><i class="fa fa-user"></i> <%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Listar Produto")%></a></li>

    <p>  <h3><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Products")%></h3>  </p> 
    <%

        //List<Produto> Lp =
        Produto p;
        int tam = Fachada.getFachada().getControladorProduto().tamanho();

        for (int i = 0; i < tam; i++) {
            try {

                p = Fachada.getFachada().getControladorProduto().recuperarAll(i);

    %>
    <p>  </p>
    <% out.println("Nome do produto: " + p.getNomeProduto());
    %><p> </p><%
        out.println("Codigo do Produto: " + p.getCodProduto());
    %><p> </p><%
        out.println("Status do Produto: " + p.getStatusProduto());
    %><p> </p><%
        out.println("Preço do Produto: " + p.getPrecoProduto());
    %><p> </p><%
        out.println("Preço de Venda: " + p.getPrecoVenda());
    %><p> </p><%
                out.println("---------------------------------------");
            } catch (IndexOutOfBoundsException e) {

            }
        }
//   for(int i=0;i<Lp.size();i++){

//   }
%>


</body>

</html>
