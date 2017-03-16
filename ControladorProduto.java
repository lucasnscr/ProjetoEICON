package RegraDeNegocio;

import Entidades.Produto;
import Excecoes.ExceptionProdutoNaoCadastrado;
import Persistencia.RepProduto;
import java.util.List;

/**
 *
 * @author Thales Tiago
 */
public class ControladorProduto {

    private RepProduto produtos;

    public ControladorProduto() {
        this.produtos = new RepProduto();
    }

    public void cadastrarProduto(Produto produto) throws ExceptionProdutoNaoCadastrado {

        //if (produtos.searchProduto(produto) == null) {
        produtos.saveProduto(produto);
        /*} else {
         throw new ExceptionProdutoNaoCadastrado();
         }*/

    }

    public void atualizarProduto(int cod, Produto produto)
            throws ExceptionProdutoNaoCadastrado {
        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO

        try {
            produtos.updateProduto(cod, produto);
        } catch (Exception e) {
            throw new ExceptionProdutoNaoCadastrado();
        }
    }

    public void descadastrarProduto(int produto)
            throws ExceptionProdutoNaoCadastrado {

        try {
            produtos.deleteProdutoQuery(produto);
        } catch (Exception e) {
            throw new ExceptionProdutoNaoCadastrado();
        }
    }

    public Produto recuperarAll(int index)
            throws ExceptionProdutoNaoCadastrado {
        Produto prts = null;
        prts = produtos.AllProduto(index);
        return prts;

    }

    public int tamanho()
            throws ExceptionProdutoNaoCadastrado {
        int tam = 0;
        tam = produtos.Tamanho();
        return tam;

    }

    public Produto recuperarProduto(int produto)
            throws ExceptionProdutoNaoCadastrado {
        Produto retorno = null;
        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO
        if (produto!=0) {
            retorno = this.produtos.searchProduto(produto);
        } else {
            throw new ExceptionProdutoNaoCadastrado();
        }

        return retorno;
    }
}
