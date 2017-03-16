<%-- 
    Document   : Search
    Created on : 24/06/2015, 20:58:25
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        if(request.getParameter("pesquisa").equals("GTA 5 PS4")){
        response.sendRedirect("../pagProdutos/gTA5_PS.jsp");
        }
        else if(request.getParameter("pesquisa").equals("GTA 5 XBOX ONE")){
        response.sendRedirect("../pagProdutos/gTA5_XO.jsp");
        }
        else if(request.getParameter("pesquisa").equals("The Witcher 3 PS4")){
        response.sendRedirect("../pagProdutos/theWitcher3_PS.jsp");
        }
        else if(request.getParameter("pesquisa").equals("The Witcher 3 XBOX ONE")){
        response.sendRedirect("../pagProdutos/theWitcher3_XO.jsp");
        }
        else{
        response.sendRedirect("../paginas/busca.jsp");
        }
        
        %>
    </body>
</html>
