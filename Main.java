/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import Entidades.*;
import Excecoes.ExceptionClienteNaoCadastrado;
import HibernateUtil.NewHibernateUtil;
import Persistencia.RepCliente;
import RegraDeNegocio.Fachada;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/*
 *
 * @autho String nome = "nome"; String cpf = "cpfcnpj"; String email = "email";
 * String senha = "senha";
 *
 *
 * Cliente cliente = new Cliente(nome, cpf, email, senha);
 *
 * try { Fachada.getFachada().getControladorCliente().saveCliente(cliente); }
 * catch (Exception ex) {
 * Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex); }
 *
 * r frs-93
 */
public class Main {

    public static void main(String[] args) throws ExceptionClienteNaoCadastrado, Exception {

        String nome = "Felipe Santos";
        String cpf = "123";
        String email = "Frsantos93@gmail.com";
        String senha = "123";

        int cep = 51020050;
        String logradouro = "Rua francisco da cunha apt 1702";
        String cidade = "Recife";
        int numero = 123;
        String pais = "Brasil";

        EnderecoCliente endereco = new EnderecoCliente(cep, cidade, logradouro, numero, pais);
        Cliente c = new Cliente(endereco, nome, cpf, email, senha);

        try {
         //   Fachada.getFachada().getControladorEndereco().saveEndereco(endereco);
            //////    int cod = Fachada.getFachada().getControladorEndereco().searchCodEndereco(logradouro, numero).getCodEndereco();

//            Fachada.getFachada().getControladorCliente().saveCliente(c);
            Cliente c1 = Fachada.getFachada().getControladorCliente().searchClientePorCpfCnpj(c.getCpfCnpjCliente());
            System.out.println(c1.getNomeCliente());
            System.err.println(c.getCpfCnpjCliente());
            System.out.println("saveeeeeeeeeeeeeeeeeee");
        } catch (Exception ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }

        Cliente c2 = null;

        try {

            System.out.println(" entrou ");

            c2 = Fachada.getFachada().getControladorCliente().searchClientePorCpfCnpj(c.getCpfCnpjCliente());

            if (c2.getSenhaUsuario().equals(c.getSenhaUsuario())) {
                System.out.println("../index.jsp");
            } else {
                System.err.println("../paginas/login.jsp");
            }

        } catch (ExceptionClienteNaoCadastrado e) {
            System.out.println("Nada OK!");
        }
    }
}
