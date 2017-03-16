
<%@page import="RegraDeNegocio.ControladorProduto"%>
<%@page import="Entidades.Produto"%>
<%@page import="RegraDeNegocio.Fachada"%>
<%@page import="Entidades.ProdutoVenda"%>
<%@page import="Excecoes.ExceptionProdutoJaCadastrado"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- 
    Document   : DelProd
    Created on : 25/06/2015, 17:53:03
    Author     : Lucas
--%>
<%%>
<%
int p = Integer.parseInt(request.getParameter("dell"));
Fachada.getFachada().getControladorProduto().descadastrarProduto(p);


//  if(request.getParameter("pesquisa").equals("SELECT*FROM produto WHERE nome_produto= 'pesquisa'")){
//        response.sendRedirect("DELETE produto WHERE nome_produto like + 'pesquisa' ");
//        }
//       
//       
//        request.setAttribute("msg", "Tudo OK!");
   response.sendRedirect("../paginas/produtoDelete.jsp");


%>
 
