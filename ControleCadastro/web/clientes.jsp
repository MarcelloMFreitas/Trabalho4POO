

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
        int i = Integer.parseInt(request.getParameter("parametro"));
        lista.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("alterar")!=null){
        Cliente c = new Cliente();
        int i = Integer.parseInt(request.getParameter("parametro"));
            
        c.setNome(request.getParameter("nomeAlteravel"));
        c.setCpf(request.getParameter("cpfAlteravel"));
        c.setRg(request.getParameter("rgAlteravel"));
        c.setEmail(request.getParameter("emailAlteravel"));
        c.setTelefone(request.getParameter("telefoneAlteravel"));
        c.setEndereco(request.getParameter("enderecoAlteravel"));
        lista.set(i, c);
        
        response.sendRedirect(request.getRequestURI());
     }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <fieldset>
            <legend>Cadastro</legend>
            <form>
                Nome: <input type="text" name="nome"/>
                CPF: <input type="number" name="cpf"/>
                RG: <input type="number" name="rg"/>
                <br/>
                Email: <input type="email" name="email"/>
                Telefone: <input type="number" name="telefone"/>
                Endereço:<input type="text" name="endereco">
                
                <input type="submit" name="incluir" value="Incluir"/>
                
                
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
                <form>
                <td><input type="text" name="id" value="<%= lista.indexOf(c) %>" size="2" disabled/></td>
                <td><input type="text" name="nomeAlteravel" value="<%= c.getNome() %>"/></td>
                <td><input type="number" name="cpfAlteravel" value="<%= c.getCpf() %>" /></td>
                <td><input type="number" name="rgAlteravel" value="<%= c.getRg() %>" /></td>
                <td><input type="email" name="emailAlteravel" value="<%= c.getEmail() %>" /></td>
                <td><input type="number" name="telefoneAlteravel" value="<%= c.getTelefone() %>" /></td>
                <td><input type="text" name="enderecoAlteravel" value="<%= c.getEndereco() %>" /></td>
                <td>
                        <input type="hidden" name="parametro" value="<%= lista.indexOf(c)%>"/>
                        <input type="submit" name="excluir" value="Excluir"/>
                        <input type="submit" name="alterar" value="Alterar"/>
                </td>
                </form>
            </tr>
            <% } %>
        </table>
    </body>
</html>
