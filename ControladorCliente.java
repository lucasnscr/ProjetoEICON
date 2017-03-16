package RegraDeNegocio;


import Persistencia.RepCliente;
import Entidades.Cliente;
import Excecoes.ExceptionClienteJaCadastrado;
import Excecoes.ExceptionClienteNaoCadastrado;
import java.util.List;

public class ControladorCliente {

    private RepCliente clientes;

    public ControladorCliente() {
        this.clientes = new RepCliente();
    }

    public void saveCliente(Cliente cliente) throws ExceptionClienteJaCadastrado, Exception {
        if (cliente.getCodCliente() != null && cliente.getCpfCnpjCliente() != null) {
            throw new Exception("Parametro invalido!");
        } else {
            Cliente cliente2 = this.searchClientePorCpfCnpj(cliente.getCpfCnpjCliente());
            if (cliente2 == null) {
                this.clientes.saveCliente(cliente);
            } else {
                throw new ExceptionClienteJaCadastrado();
            }
        }
    }

    public void updateCliente(Cliente cliente)
            throws ExceptionClienteNaoCadastrado, Exception {
        if (cliente.getCodCliente() != null && cliente.getCpfCnpjCliente() != "") {
            throw new Exception("Parametro invalido!");
        } else {
            Cliente cliente2 = this.searchClientePorCpfCnpj(cliente.getCpfCnpjCliente());
            if (cliente2 == null) {
                this.clientes.updateCliente(cliente);
            } else {
                throw new ExceptionClienteJaCadastrado();
            }
        }
    }

    public void deleteCliente(Cliente cliente)
            throws ExceptionClienteNaoCadastrado, Exception {
        //fazer essa comparação
        if (cliente.getCpfCnpjCliente() == null) {
            throw new Exception("CPF/CNPJ invalido");
        }
        try {
            this.clientes.deleteCliente(cliente);
        } catch (Exception e) {
            throw new ExceptionClienteNaoCadastrado();
        }
    }

    public Cliente searchClientePorCpfCnpj(String cpfCnpjCliente)
            throws ExceptionClienteNaoCadastrado {
        Cliente cliente = null;
        
            if (cpfCnpjCliente != null) {
                cliente = this.clientes.searchClientePorCpfCnpj(cpfCnpjCliente);
            }
         

        return cliente;

    }

    public List listClientes() throws Exception {
        List clientes = null;

        clientes = this.clientes.listClientes();
        if (clientes != null) {
            return clientes;
        } else {
            throw new Exception("Não há clientes cadastrados ");
        }
    }

    public Cliente loginCliente(Cliente c)
            throws ExceptionClienteNaoCadastrado {

        if (c.getCpfCnpjCliente().equals(clientes.searchClientePorCpfCnpj(c.getCpfCnpjCliente()))) {
            return searchClientePorCpfCnpj(c.getCpfCnpjCliente());
        } else {
            throw new ExceptionClienteNaoCadastrado();
        }

    }
}
