
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedor"%>
<%@page import="br.com.fatecpg.cadastro.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP PageCadastro de Fornecedores</title>
    </head>
    <body>
        <form action="" method="post">
            <h2>Fornecedores</h2><br />
            
            <label>Nome: </label>
            <input type="text" name="campoNome" size="60"/>

            <label>E-mail: </label>
            <input type="email" name="campoEmail" size="15"/>
            
            <label>Telefone: </label>
            <input type="text" name="campoTelefone" size="12"/>
            
            <label>Produto: </label>
            <input type="text" name="campoProduto" size="60"/>

            <button>Incluir</button>
            <button>Gravar Alteração</button>
        </form>
        <br />
        <hr>
        
        <table style="width:100%">
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>EMAIL</th>
                <th>TELEFONE</th>
                <th>AÇÃO</th>
            </tr>
            <tr>
                <td>00</td>
                <td>Nome de Sobrenome</td>
                <td>email@pessoa.com.br</td>
                <td>01311112222</td>
                <td><button>Alterar</button><button>Alterar</button></td>
            </tr>
        </table>
    </body>
</html>
