<%-- 
    Document   : validaRegistro
    Created on : 26/05/2015, 21:25:15
    Author     : Lucas
--%>
<%@page import="Excecoes.ExceptionClienteJaCadastrado"%>
<%@page import="java.util.HashSet"%>
<%@page import="Entidades.Venda"%>
<%@page import="RegraDeNegocio.Fachada"%>
<%@page import="Entidades.Cliente"%>
<%@page import="Entidades.EnderecoCliente"%>
<%%>
<%
    HashSet<Venda> v = new HashSet<Venda>(0);
    HashSet<Cliente> c = new HashSet<Cliente>(0);
    String nome = request.getParameter("nome");
    String cpf = request.getParameter("cpfCnpjCliente");
    String email = request.getParameter("billing_email");
    String senha = request.getParameter("account_password");
    int cep = Integer.parseInt(request.getParameter("billing_postcode")) ;
    String cidade = request.getParameter("billing_city");
    String logradouro = request.getParameter("billing_address_1");
    int numero = Integer.parseInt(request.getParameter("billing_address_number"));
    String pais = request.getParameter("billing_state");

    EnderecoCliente end = new EnderecoCliente(cep, cidade, logradouro, numero, pais, c);
    Cliente cliente = new Cliente(end, nome, cpf, email, senha, v);
    try{
        Fachada.getFachada().getControladorEndereco().saveEndereco(end);
    Fachada.getFachada().getControladorCliente().saveCliente(cliente);
    }catch(ExceptionClienteJaCadastrado e){
    request.setAttribute("msg", "Tudo OK!");
}
    
    request.setAttribute("msg", "Tudo OK!");
    response.sendRedirect("../inicio.jsp");


%>
