<%-- 
    Document   : verificaloguin
    Created on : 27/05/2015, 01:36:48
    Author     : Lucas
--%>




<%@page import="RegraDeNegocio.Fachada"%>
<%@page import="Entidades.Cliente"%>
<%@page import="Excecoes.*"%>

<%
    Cliente c = new Cliente();
    Cliente c2 = new Cliente();

    String password = request.getParameter("password");

    String cpfCnpjCliente = request.getParameter("cpf/cnpj");
    c.setCpfCnpjCliente(cpfCnpjCliente);
    c.setSenhaUsuario(password);
    try {

        c2 = Fachada.getFachada().getControladorCliente().searchClientePorCpfCnpj(c.getCpfCnpjCliente());
        if (cpfCnpjCliente.equals("admin") && password.equals("admin")) {
            response.sendRedirect("../paginas/paginaProdutoCRUD.jsp");
        } else if (c2.getSenhaUsuario().equals(c.getSenhaUsuario())) {

            response.sendRedirect("../index.jsp");

        } else {
            response.sendRedirect("../paginas/error.jsp");
        }

    } catch (ExceptionClienteNaoCadastrado e) {
        request.setAttribute("msg", "Nada OK!");
    }
%>
