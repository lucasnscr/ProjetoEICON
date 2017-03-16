package RegraDeNegocio;

/**
 *
 * @author Thales Tiago
 */
import Persistencia.RepCliente;
import Entidades.Cliente;
import Excecoes.ExceptionClienteJaCadastrado;
import Excecoes.ExceptionClienteNaoCadastrado;
import java.util.Objects;

public class Controlador_Cliente {

    private RepCliente clientes;

    public Controlador_Cliente() {
        this.clientes = new RepCliente();
    }

    public void cadastrarCliente(Cliente cliente) throws ExceptionClienteJaCadastrado {

        if (cliente.getNomeCliente() == null) {
            clientes.saveCliente(cliente);
        } else {
            throw new ExceptionClienteJaCadastrado();
        }
    }

    public void atualizarCliente(Cliente cliente)
            throws ExceptionClienteNaoCadastrado {
        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO
        if (!Objects.equals(cliente.getCodCliente(), cliente.getCpfCnpjCliente())) {
            throw new ExceptionClienteNaoCadastrado();
        } else {
            clientes.updateCliente(cliente);
        }
    }

    public void descadastrarCliente(Cliente cliente)
            throws ExceptionClienteNaoCadastrado {
        //fazer essa comparação
        try {
            clientes.deleteCliente(cliente);
        } catch (Exception e) {
            throw new ExceptionClienteNaoCadastrado();
        }
    }

    public Cliente recuperarCliente(Cliente cliente)
            throws ExceptionClienteNaoCadastrado {

        //VERIFICAR ESSAS COMARAÇÕES PARA VER SE TÁ CORRETO
        if (cliente.getNomeCliente().equals(cliente.getCodCliente())) {
            cliente = this.clientes.searchClientePorCpf(cliente);
        } else {
            throw new ExceptionClienteNaoCadastrado();
        }

        return cliente;
    }
}
