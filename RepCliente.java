package Persistencia;

/**
 *
 * @author Felipe
 */
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import HibernateUtil.NewHibernateUtil;
import Entidades.Cliente;

/**
 *
 * @author Thales Tiago
 */
public class RepCliente {

    SessionFactory factory = NewHibernateUtil.getSessionFactory();

    public void saveCliente(Cliente cliente) {

        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();

        //trans.begin();

        session.save(cliente);

        trans.commit();

        session.close();
    }

    /**
     * Método para atualizar cliente no banco de dados.
     *
     *
     * @param a
     */
    public void updateCliente(Cliente cliente) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();

      //  trans.begin();

        session.update(cliente);

        trans.commit();
        session.close();
    }

    /**
     * Método para deletar cliente no banco de dados.
     *
     * @param a
     */
    public void deleteCliente(Cliente cliente) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
     //   trans.begin();

        session.delete(cliente);

        trans.commit();
        session.close();
    }

    /**
     * Método para pesquisar usuario por Matricula.
     *
     * @param Cliente a
     * @return Usuario
     */
    public Cliente searchClientePorCpfCnpj(String cpfCnpjCliente) {
        Cliente cliente = null;
        Session session = factory.openSession();

        SQLQuery query = session.createSQLQuery("SELECT*FROM CLIENTE  WHERE cpf_cnpj_cliente LIKE '" + cpfCnpjCliente + "'");
        //SELECT * FROM `cliente` WHERE `cpf_cnpj_cliente` LIKE '123'

        query.addEntity("cliente", Cliente.class);

        if (query.list().size() > 0) {
            cliente = (Cliente) query.list().get(0);
            RepCliente.initialize(cliente);
        }
        session.close();
        return cliente;
    }

    public List listClientes() {

        Session session = factory.openSession();
        List clientes = null;
        SQLQuery query = session.createSQLQuery("SELECT * FROM cliente");

        query.addEntity(
                "cliente", Cliente.class
        );
        clientes = query.list();
        for (Object o : clientes) {
            RepCliente.initialize((Cliente) o);

        }

        session.close();
        return clientes;
    }

    /**
     * Método para inicializar os objetos do banco de dados com os seus valores.
     *
     * @param cliente
     * @param a
     */
    public static void initialize(Cliente cliente) {
        Hibernate.initialize(cliente);
        Hibernate.initialize(cliente.getCpfCnpjCliente());
    }

}
