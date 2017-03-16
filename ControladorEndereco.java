/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RegraDeNegocio;

import Entidades.EnderecoCliente;
import Excecoes.ExceptionEnderecoJaCadastrado;
import Excecoes.ExceptionEnderecoNaoCadastrado;
import Persistencia.RepEndereco;
import Persistencia.RepEndereco;
import java.util.List;

public class ControladorEndereco {

    private RepEndereco enderecos;

    public ControladorEndereco() {
        this.enderecos = new RepEndereco();
    }

    public void saveEndereco(EnderecoCliente endereco) throws ExceptionEnderecoJaCadastrado, Exception {
        if (endereco.getCodEndereco() != null) {
            throw new Exception("Parametro invalido!");
        } else {
            this.enderecos.saveEndereco(endereco);
            
        }
    }

    
    public void updateEndereco(EnderecoCliente endereco)
            throws ExceptionEnderecoNaoCadastrado, Exception {
        if (endereco.getCodEndereco() != null) {
            throw new Exception("Parametro invalido!");
        } else {
            this.enderecos.updateEndereco(endereco);
        }
    }

    public void deleteEndereco(EnderecoCliente endereco)
            throws ExceptionEnderecoNaoCadastrado, Exception {
        //fazer essa comparação
        if (endereco.getCodEndereco() == null) {
            throw new Exception("Cod invalido");
        }
        try {
            this.enderecos.deleteEndereco(endereco);
        } catch (Exception e) {
            throw new ExceptionEnderecoNaoCadastrado();
        }
    }

    public EnderecoCliente searchEndereco(EnderecoCliente e)
            throws ExceptionEnderecoNaoCadastrado {
        EnderecoCliente end = null;
        if (e.getCodEndereco() != null && !e.getCodEndereco().equals("")) {
            end = this.enderecos.searchEndereco(e);
        }

        return end;

    }

    public EnderecoCliente searchCodEndereco(String rua, int numero)
            throws ExceptionEnderecoNaoCadastrado {
        EnderecoCliente endereco = null;

        if (numero != 0 && !rua.isEmpty()) {
            endereco = this.enderecos.searchCod(rua, numero);
        }

        return endereco;

    }

    public List listEnderecos() throws Exception {
        List enderecos = null;

        enderecos = this.enderecos.listEnderecos();
        if (enderecos != null) {
            return enderecos;
        } else {
            throw new Exception("Não há enderecos cadastrados ");
        }
    }
}
