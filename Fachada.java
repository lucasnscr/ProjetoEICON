package RegraDeNegocio;

import Entidades.Cliente;
import Entidades.Produto;
import Entidades.Venda;
import Excecoes.ExceptionClienteJaCadastrado;
import Excecoes.ExceptionClienteNaoCadastrado;
import Excecoes.ExceptionProdutoNaoCadastrado;
import Excecoes.ExceptionVendaNaoCadastrado;


public class Fachada {

    private ControladorCliente controladorCliente;
    private ControladorProduto controladorProduto;
    private ControladorVenda controladorVenda;
    private ControladorEndereco contraladorEndereco;
    private static Fachada fachada;

    private Fachada() {
        this.controladorCliente = new ControladorCliente();
        this.controladorProduto = new ControladorProduto();
        this.controladorVenda = new ControladorVenda();
        this.contraladorEndereco = new ControladorEndereco();
    }

    public static Fachada getFachada() {
        if (fachada == null) {
            fachada = new Fachada();
        }
        return fachada;
    }

    
    public ControladorCliente getControladorCliente() {
        return this.controladorCliente;
    }
    
    public ControladorProduto getControladorProduto() {
        return this.controladorProduto;
    }
    
    public ControladorVenda getControladorVenda() {
       return this.controladorVenda;
   }
    
    public ControladorEndereco getControladorEndereco() {
        return this.contraladorEndereco;
    }
    
}
