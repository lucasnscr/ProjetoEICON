<%-- 
    Document   : addCart
    Created on : 30/06/2015, 10:39:11
    Author     : Lucas
--%>

<%@page import="Entidades.Venda"%>
<%@page import="Entidades.Produto"%>
<%@page import="RegraDeNegocio.Fachada"%>
<%%>
<%
    
   
    int q = Integer.parseInt(request.getParameter("quantity"));
    Produto p = Fachada.getFachada().getControladorProduto().recuperarProduto(Integer.parseInt(request.getParameter("cod")));    Fachada.getFachada().getControladorVenda().addCarrinho(p,q);
    Fachada.getFachada().getControladorVenda().addCarrinho(p, q);
    
    
    
    response.sendRedirect("../paginas/cart.jsp");


%>
