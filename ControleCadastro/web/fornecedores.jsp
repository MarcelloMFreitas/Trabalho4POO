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
        f.setEndereço(request.getParameter("endereco"));
        lista.add(f);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("excluir")!=null){
        int i = Integer.parseInt(request.getParameter("parametro"));
        lista.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("alterar")!=null){
        Fornecedor f = new Fornecedor();
        int i = Integer.parseInt(request.getParameter("parametro"));
            
        f.setNome(request.getParameter("nomeAlteravel"));
        f.setRazao(request.getParameter("razaoAlteravel"));
        f.setCnpj(request.getParameter("cnpjAlteravel"));
        f.setEmail(request.getParameter("emailAlteravel"));
        f.setTelefone(request.getParameter("telefoneAlteravel"));
        f.setEndereço(request.getParameter("enderecoAlteravel"));
        lista.set(i, f);
        
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
                CNPJ: <input type="number" name="cnpj"/>
                <br/>
                Email: <input type="email" name="email"/>
                Telefone: <input type="number" name="telefone"/>
                Endereço:<input type="text" name="endereco">
                
               
                <input type="submit" name="incluir" value="Incluir"/>
                
            </form>
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
                <form>
                <td><input type="text" name="id" value="<%= lista.indexOf(f) %>" size="2" disabled /></td>
                <td><input type="text" name="nomeAlteravel" value="<%= f.getNome() %>" /></td>
                <td><input type="text" name="razaoAlteravel" value="<%= f.getRazao() %>" /></td>
                <td><input type="number" name="cnpjAlteravel" value="<%= f.getCnpj() %>" /></td>
                <td><input type="email" name="emailAlteravel" value="<%= f.getEmail() %>" /></td>
                <td><input type="number" name="telefoneAlteravel" value="<%= f.getTelefone() %>" /></td>
                <td><input type="text" name="enderecoAlteravel" value="<%= f.getEndereço() %>" /></td>
                <td>
                    
                    <input type="hidden" name="parametro" value="<%= lista.indexOf(f) %>"/>
                    <input type="submit" name="excluir" value="Excluir"/>
                    <input type="submit" name="alterar" value="Alterar"/>
                    
                </td>
                </form>
            </tr>
            
            <% } %>
            
        </table>
            
        </fieldset>
    </body>    
</html>
