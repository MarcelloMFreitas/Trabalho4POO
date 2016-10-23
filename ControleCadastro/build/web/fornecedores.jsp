
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedor"%>
<%@page import="br.com.fatecpg.cadastro.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Fornecedor> lista = DadosFornecedor.getFornecedores();
    if (request.getParameter("incluir") != null) {
        Fornecedor f = new Fornecedor();
        f.setNome(request.getParameter("nome"));
        f.setRazao(request.getParameter("razao"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereço(request.getParameter("endereço"));
        lista.add(f);
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
        <title>Cadastro de Fornecedores</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <fieldset>
            <legend>Cadastro</legend>
            <form>
                Nome: <input type="text" name="nome"/>
                Razão Social: <input type="text" name="razao"/>
                CNPJ: <input type="text" name="cnpj"/>
                <br/>
                Email: <input type="text" name="email"/>
                Telefone: <input type="text" name="telefone"/>
                Endereço:<input type="text" name="endereço">
                <br/>
                <input type="submit" name="incluir" value="Incluir"/>
                <input type="submit" name="inc_alteracao" value="Gravar Alteração"/>
                
            </form>
        </fieldset>
        <h2>Lista de Fornecedores</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <br/>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Ação</th>
            </tr>
            <% for(Fornecedor f: lista) { %>
            <tr>
                <td><%= lista.indexOf(f) %></td>
                <td><%= f.getNome() %></td>
                <td><%= f.getRazao() %></td>
                <td><%= f.getCnpj() %></td>
                <td><%= f.getEmail() %></td>
                <td><%= f.getTelefone() %></td>
                <td><%= f.getEndereço() %></td>
                <td>
                    <form>
                        <input type="hidden" name="1" value="<%= lista.indexOf(f)%>"/>
                        <input type="submit" name="excluir" value="Excluir"/>
                        <input type="submit" name="alterar" value="Alterar"/>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
    
</html>
