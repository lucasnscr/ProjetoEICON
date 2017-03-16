/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import HibernateUtil.NewHibernateUtil;
import Entidades.Produto;
import java.sql.ResultSet;
import java.sql.Statement;

public class RepProduto {

    private List<Produto> Lprodutos;
    SessionFactory factory = NewHibernateUtil.getSessionFactory();

    public void saveProduto(Produto p) {
        Session session;
        session = factory.openSession();
        Transaction trans = session.beginTransaction();
        //trans.begin();

        session.save(p);

        trans.commit();
        session.close();

    }

    public void updateProduto(int cod, Produto p) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        // trans.begin();

        SQLQuery query = session.createSQLQuery("UPDATE produto SET cod_produto=" + cod + ",preco_produto='" + p.getPrecoProduto() + "',preco_venda='" + p.getPrecoVenda() + "', status_produto='" + p.getStatusProduto() + "',nome_produto='" + p.getNomeProduto() + "',qtd_produto='" + p.getQtdProduto() + "' WHERE cod_produto=" + cod);
//        UPDATE produto SET cod_produto=cod,preco_produto=p.getPrecoProduto(),preco_venda=p.getPrecoVenda(),status_produto=p.getStatusProduto(),nome_produto=p.getNomeProduto(),qtd_produto=p.getQtdProduto() WHERE cod_produto=cod
        query.executeUpdate();

        trans.commit();
        session.close();
    }

//    public void deleteProduto(Produto p) {
//        Session session = factory.openSession();
//        Transaction trans = session.beginTransaction();
//        //  trans.begin();
//
//        session.delete(p);
//
//        trans.commit();
//        session.close();
//    }
    public void deleteProdutoQuery(int p) {
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        SQLQuery query = session.createSQLQuery("DELETE FROM produto WHERE cod_produto=" + p);
        query.executeUpdate();
        trans.commit();
        session.close();

    }

    public Produto searchProduto(int p) {
        Produto produto = null;
        Session session = factory.openSession();

        SQLQuery query = session.createSQLQuery("SELECT * FROM produto WHERE  cod_produto=" + p);

        query.addEntity("produto", Produto.class);

        if (query.list().size() > 0) {
            produto = (Produto) query.list().get(0);
            RepProduto.initialize(produto);

        }
        return produto;
    }

    public Produto AllProduto(int index) {
        Produto prt = null;
        Session session = factory.openSession();
        // Transaction trans = session.beginTransaction();
        SQLQuery query = session.createSQLQuery("SELECT * FROM produto");
        query.addEntity("produto", Produto.class);
//        trans.commit();

        prt = (Produto) query.list().get(index);
        RepProduto.initialize(prt);
//        System.out.println(query.getQueryReturns());
//            System.out.println(prt.getNomeProduto() + " " + prt.getCodProduto());


        /* if (query.list().size() > 0) {
         prt = (Produto) query.list().get(0);
         Lprodutos.add((Produto) query.list().get(0));
         RepProduto.initialize(prt);
        
         }*/
        session.close();
        return prt;
    }

    public int Tamanho() {

        Session session = factory.openSession();
        // Transaction trans = session.beginTransaction();
        SQLQuery query = session.createSQLQuery("SELECT * FROM produto");
        //query.addEntity("produto", Produto.class);
        int tam=0;
        
        tam= query.list().size();

        session.close();
        return tam;
    }

    private static void initialize(Produto p) {
        Hibernate.initialize(p);
        Hibernate.initialize(p.getProdutoVendas());

    }
}
