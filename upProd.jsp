
<%@page import="java.util.HashSet"%>
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
    HashSet<ProdutoVenda> produtoVendas = new HashSet<ProdutoVenda>(0);
    int codP = Integer.parseInt(request.getParameter("codProduto"));
    long precoP = Long.parseLong(request.getParameter("precoProduto"));
    long precoV = Long.parseLong(request.getParameter("precoVenda"));
    String status = request.getParameter("statusProduto");
    String nome = request.getParameter("nomeProduto");
    int qtd = Integer.parseInt(request.getParameter("qtdProduto"));
    
    Produto pr = new Produto(precoP, precoV, status , nome, qtd , produtoVendas);
    //Venda v = new Venda(c, statusVenda, dataVenda, totalVenda, produtoVendas);
    //ProdutoVenda pv = new ProdutoVenda(id, pr, venda);
    //Produto produto = new Produto(precoProduto, precoVenda, statusProduto, nomeProduto, qtdProduto, p);


 //Cliente cliente = new Cliente(end, nome, cpf, email, senha, v);
    try{
        Fachada.getFachada().getControladorProduto().atualizarProduto(codP, pr);
        
      //  Fachada.getFachada().getControladorEndereco().saveEndereco(end);
    //Fachada.getFachada().getControladorCliente().saveCliente(cliente);
    } catch(Exception e){
    request.setAttribute("msg", "Tudo OK!");
}
    
    request.setAttribute("msg", "Tudo OK!");
    response.sendRedirect("../paginas/produtoUpdate.jsp");


%>
 