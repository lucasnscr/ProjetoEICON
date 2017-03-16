package RegraDeNegocio;

import Entidades.Produto;
import Entidades.Venda;
import Excecoes.ExceptionVendaNaoCadastrado;
import Persistencia.RepVenda;
import java.util.ArrayList;

/**
 *
 * @author Thales Tiago
 */
public class ControladorVenda {

    public ArrayList<Produto> carrinho = null;
    
    private RepVenda vendas;

    public ControladorVenda() {
        this.vendas = new RepVenda();
    }

    /**
     *
     * @param p
     * @param qnt
     * @param venda
     */
    public void addCarrinho (Produto p,int qnt){
        
        for(int i = 0;i<qnt;i++){
        carrinho.add(p);
        }
        // se ele adicionar mais de 1 Loop do ADD
    }
    
    public void cadastrarVenda(Venda venda) throws ExceptionVendaNaoCadastrado {

        if (vendas.searchVenda(venda) == null) {
            vendas.saveVenda(venda);
        } else {

            throw new ExceptionVendaNaoCadastrado();
        }
    }

    public void atualizarVenda(Venda venda)
            throws ExceptionVendaNaoCadastrado {
        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO
        if (vendas.searchVenda(venda).equals(venda.getCodVenda())) {
            vendas.updateVenda(venda);
        } else {
            throw new ExceptionVendaNaoCadastrado();
        }
    }

    public void descadastrarVenda(Venda venda)
            throws ExceptionVendaNaoCadastrado {
        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO O ".EQUALS" NO FIM
        try {
            vendas.deleteVenda(venda);
        } catch (Exception e) {
            throw new ExceptionVendaNaoCadastrado();
        }
    }

    public Venda recuperarVenda(Venda venda)
            throws ExceptionVendaNaoCadastrado {

        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO
        if (venda.getProdutoVendas().equals(venda.getCodVenda())) {
            venda = this.vendas.searchVenda(venda);
        } else {
            throw new ExceptionVendaNaoCadastrado();
        }

        return venda;
    }
}
