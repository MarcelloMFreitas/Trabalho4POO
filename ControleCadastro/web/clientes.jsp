

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.cadastro.Cliente"%>
<%@page import="br.com.fatecpg.cadastro.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    ArrayList<Cliente> lista = DadosCliente.getClientes();
    if (request.getParameter("incluir") != null) {
        Cliente c = new Cliente();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        lista.add(c);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("excluir")!=null){
        String par = request.getParameter("1");
        int i = Integer.parseInt(par);
        lista.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadstro de Clientes</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <fieldset>
            <legend>Cadastro</legend>
            <form>
                Nome: <input type="text" name="nome"/>
                CPF: <input type="text" name="cpf"/>
                RG: <input type="text" name="rg"/>
                <br/>
                Email: <input type="text" name="email"/>
                Telefone: <input type="text" name="telefone"/>
                Endereço:<input type="text" name="endereco">
                <br/>
                <input type="submit" name="incluir" value="Incluir"/>
                <input type="submit" name="inc_alteracao" value="Gravar Alteração"/>
                
            </form>
        </fieldset>
        <h2>Lista de Clientes</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <br/>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Ação</th>
            </tr>
            <% for(Cliente c: lista) { %>
            <tr>
                <td><%= lista.indexOf(c) %></td>
                <td><%= c.getNome() %></td>
                <td><%= c.getCpf() %></td>
                <td><%= c.getRg() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getEndereco() %></td>
                <td>
                    <form>
                        <input type="hidden" name="1" value="<%= lista.indexOf(c)%>"/>
                        <input type="submit" name="excluir" value="Excluir"/>
                        <input type="submit" name="alterar" value="Alterar"/>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
