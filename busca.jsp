<%-- 
    Document   : newjsp
    Created on : 16/06/2015, 03:09:20
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../include/topo.jsp" %>
<%int tam = Fachada.getFachada().getControladorProduto().tamanho();
   Produto[] p = new Produto[tam];
%>
<%for (int j = 0; j < tam; j++) {

        try {

            p[j] = Fachada.getFachada().getControladorProduto().recuperarAll(j);
            
        } catch (IndexOutOfBoundsException e) {
        }
    }
System.out.println(p[1].getNomeProduto());

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> jQuery UI Autocomplete - Default functionality</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">

        <script>
            $(function () {
                var availableTags = [
                    <%for(int i =0;i<tam;i++){%>
                    "<%=p[i].getNomeProduto().toString()%>",
                <%}%>
                    
                ];
                $("#tags").autocomplete({
                    source: availableTags
                });
            });
        </script>
    </head>
    <body>

        <form class="navbar-form navbar-left" action="../jsp/search.jsp" method="POST">
            <div class="ui-widget">
                <input id="tags" name="pesquisa" placeholder="<%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Search")%>">


                <button type="submit" class="btn btn-default"><%=java.util.ResourceBundle.getBundle("Strings/newproperties").getString("Submit")%></button>
            </div>
        </form>


    </body>

</html>

