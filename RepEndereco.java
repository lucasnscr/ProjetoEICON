/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Entidades.Cliente;
import Entidades.EnderecoCliente;
import HibernateUtil.NewHibernateUtil;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Felipe
 */
public class RepEndereco {

    SessionFactory factory  = NewHibernateUtil.getSessionFactory();

    public void saveEndereco(EnderecoCliente endereco) {

        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();

      //  trans.begin();

        session.save(endereco);

        trans.commit();

        session.close();
    }

    /**
     * Método para atualizar endereco no banco de dados.
     *
     *
     * @param a
     */
    public void updateEndereco(EnderecoCliente endereco) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();

      //  trans.begin();

        session.update(endereco);

        trans.commit();
        session.close();
    }

    /**
     * Método para deletar endereco no banco de dados.
     *
     * @param a
     */
    public void deleteEndereco(EnderecoCliente endereco) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
     //   trans.begin();

        session.delete(endereco);

        trans.commit();
        session.close();
    }

    /**
     * Método para pesquisar endereco por codigo.
     *
     */
    public EnderecoCliente searchEndereco(EnderecoCliente e) {
        EnderecoCliente endereco = null;
        Session session = factory.openSession();
// SE DER ERRO WHERE codEndereco = '" + codEndereco "'"
        SQLQuery query = session.createSQLQuery("SELECT * FROM 	endereco_cliente WHERE codEndereco =" + e.getCodEndereco());

        query.addEntity("endereco", EnderecoCliente.class);

        if (query.list().size() > 0) {
            endereco = (EnderecoCliente) query.list().get(0);
            RepEndereco.initialize(endereco);
        }
        session.close();
        return endereco;
    }

    public EnderecoCliente searchCod(String rua, int numero) {
        EnderecoCliente endereco = null;
        Session session = factory.openSession();
// SE DER ERRO WHERE codEndereco = '" + codEndereco "'"
        SQLQuery query = session.createSQLQuery("SELECT cod_endereco FROM endereco_cliente WHERE Logradouro = '" + rua +"' AND Numero = "+ numero );

        query.addEntity("endereco", EnderecoCliente.class);

        if (query.list().size() > 0) {
            endereco = (EnderecoCliente) query.list().get(0);
            RepEndereco.initialize(endereco);
        }
        session.close();
        return endereco;
    }
    
    
    public List listEnderecos() {

        Session session = factory.openSession();
        List enderecos = null;
        SQLQuery query = session.createSQLQuery("SELECT * FROM endereco_cliente");

        query.addEntity(
                "endereco", EnderecoCliente.class
        );
        enderecos = query.list();
        for (Object o : enderecos) {
            RepEndereco.initialize((EnderecoCliente) o);

        }

        session.close();
        return enderecos;
    }

    /**
     * Método para inicializar os objetos do banco de dados com os seus valores.
     *
     * @param endereco
     * @param e
     */
    public static void initialize(EnderecoCliente endereco) {
        Hibernate.initialize(endereco);
        Hibernate.initialize(endereco.getCodEndereco());
    }

}
