package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import br.com.fatecpg.cadastro.Fornecedor;
import br.com.fatecpg.cadastro.DadosFornecedor;

public final class fornecedores_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");

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
    if(request.getParameter("alterar")!=null){
        String par = request.getParameter("1");
        int i = Integer.parseInt(par);
        Fornecedor g = new Fornecedor();
        g.setNome(request.getParameter("nome"));
        g.setRazao(request.getParameter("razao"));
        g.setCnpj(request.getParameter("cnpj"));
        g.setEmail(request.getParameter("email"));
        g.setTelefone(request.getParameter("telefone"));
        g.setEndereço(request.getParameter("endereço"));
        lista.add(i,g);
     }
    

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Cadastro de Fornecedores</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <h1>Fornecedores</h1>\r\n");
      out.write("        <fieldset>\r\n");
      out.write("            <legend>Cadastro</legend>\r\n");
      out.write("            <form>\r\n");
      out.write("                Nome: <input type=\"text\" name=\"nome\"/>\r\n");
      out.write("                Razão Social: <input type=\"text\" name=\"razao\"/>\r\n");
      out.write("                CNPJ: <input type=\"text\" name=\"cnpj\"/>\r\n");
      out.write("                <br/>\r\n");
      out.write("                Email: <input type=\"text\" name=\"email\"/>\r\n");
      out.write("                Telefone: <input type=\"text\" name=\"telefone\"/>\r\n");
      out.write("                Endereço:<input type=\"text\" name=\"endereço\">\r\n");
      out.write("                <br/>\r\n");
      out.write("                <input type=\"submit\" name=\"incluir\" value=\"Incluir\"/>\r\n");
      out.write("                <input type=\"submit\" name=\"inc_alteracao\" value=\"Gravar Alteração\"/>\r\n");
      out.write("                \r\n");
      out.write("            </form>\r\n");
      out.write("        </fieldset>\r\n");
      out.write("        <h2>Lista de Fornecedores</h2>\r\n");
      out.write("        <table border=\"1\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <th>ID</th>\r\n");
      out.write("                <th>Nome</th>\r\n");
      out.write("                <th>Razão Social</th>\r\n");
      out.write("                <th>CNPJ</th>\r\n");
      out.write("                <br/>\r\n");
      out.write("                <th>Email</th>\r\n");
      out.write("                <th>Telefone</th>\r\n");
      out.write("                <th>Endereço</th>\r\n");
      out.write("                <th>Ação</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
 for(Fornecedor f: lista) { 
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>");
      out.print( lista.indexOf(f) );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getNome() );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getRazao() );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getCnpj() );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getEmail() );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getTelefone() );
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print( f.getEndereço() );
      out.write("</td>\r\n");
      out.write("                <td>\r\n");
      out.write("                    <form>\r\n");
      out.write("                        <input type=\"hidden\" name=\"1\" value=\"");
      out.print( lista.indexOf(f));
      out.write("\"/>\r\n");
      out.write("                        <input type=\"submit\" name=\"excluir\" value=\"Excluir\"/>\r\n");
      out.write("                        <input type=\"submit\" name=\"alterar\" value=\"Alterar\"/>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("    </body>\r\n");
      out.write("    \r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
