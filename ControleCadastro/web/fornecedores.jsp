
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedor"%>
<%@page import="br.com.fatecpg.cadastro.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedores</title>
    </head>
    <body>
        <form action="" method="post">
            <h2>Fornecedores</h2><br />
            
            <label>Nome: </label>
            <input type="text" name="campoNome" size="30"/>

            <label>Razão Social:  </label>
            <input type="text" name="campoCPF" size="30"/>
            
            <label>CNPJ:  </label>
            <input type="text" name="campoRG" size="30"/>
            
            <label>E-mail: </label>
            <input type="email" name="campoEmail" size="15"/>
            
            <label>Telefone: </label>
            <input type="text" name="campoTelefone" size="12"/>
            
            <label>Endereço: </label>
            <input type="text" name="campoTelefone" size="30"/>

            <button>Incluir</button>
            <button>Gravar Alteração</button>
        </form>
        <br />
        <hr>
        
        <table style="width:100%">
            <tr>
                <th>NOME</th>
                <th>RAZÃO SOCIAL</th>
                <th>CNPJ</th>
                <th>EMAIL</th>
                <th>TELEFONE</th>
                <th>ENDEREÇO</th>
                <th>AÇÃO</th>
            </tr>
            <tr>
                <td>Nome de Sobrenome</td>
                <td>Razão</td>
                <td>051361164564/100</td>
                <td>email@pessoa.com.br</td>
                <td>01311112222</td>
                <td>Avenida Tal</td>
                <td><button>Alterar</button><button>Alterar</button></td>
            </tr>
        </table>
    </body>
</html>
