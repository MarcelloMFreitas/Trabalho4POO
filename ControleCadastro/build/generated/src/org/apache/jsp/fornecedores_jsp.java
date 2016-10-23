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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Cadastro de Fornecedores</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <form action=\"\" method=\"post\">\r\n");
      out.write("            <h2>Fornecedores</h2><br />\r\n");
      out.write("            \r\n");
      out.write("            <label>Nome: </label>\r\n");
      out.write("            <input type=\"text\" name=\"campoNome\" size=\"30\"/>\r\n");
      out.write("\r\n");
      out.write("            <label>Razão Social:  </label>\r\n");
      out.write("            <input type=\"text\" name=\"campoCPF\" size=\"30\"/>\r\n");
      out.write("            \r\n");
      out.write("            <label>CNPJ:  </label>\r\n");
      out.write("            <input type=\"text\" name=\"campoRG\" size=\"30\"/>\r\n");
      out.write("            <br/>\r\n");
      out.write("            <label>E-mail: </label>\r\n");
      out.write("            <input type=\"email\" name=\"campoEmail\" size=\"15\"/>\r\n");
      out.write("            \r\n");
      out.write("            <label>Telefone: </label>\r\n");
      out.write("            <input type=\"text\" name=\"campoTelefone\" size=\"12\"/>\r\n");
      out.write("            \r\n");
      out.write("            <label>Endereço: </label>\r\n");
      out.write("            <input type=\"text\" name=\"campoTelefone\" size=\"30\"/>\r\n");
      out.write("            <br/>\r\n");
      out.write("            <button>Incluir</button>\r\n");
      out.write("            <button>Gravar Alteração</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        <br />\r\n");
      out.write("        <hr>\r\n");
      out.write("        \r\n");
      out.write("        <table style=\"width:100%\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <th>NOME</th>\r\n");
      out.write("                <th>RAZÃO SOCIAL</th>\r\n");
      out.write("                <th>CNPJ</th>\r\n");
      out.write("                <th>EMAIL</th>\r\n");
      out.write("                <th>TELEFONE</th>\r\n");
      out.write("                <th>ENDEREÇO</th>\r\n");
      out.write("                <th>AÇÃO</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>Nome de Sobrenome</td>\r\n");
      out.write("                <td>Razão</td>\r\n");
      out.write("                <td>051361164564/100</td>\r\n");
      out.write("                <td>email@pessoa.com.br</td>\r\n");
      out.write("                <td>01311112222</td>\r\n");
      out.write("                <td>Avenida Tal</td>\r\n");
      out.write("                <td><button>Alterar</button><button>Alterar</button></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </body>\r\n");
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
