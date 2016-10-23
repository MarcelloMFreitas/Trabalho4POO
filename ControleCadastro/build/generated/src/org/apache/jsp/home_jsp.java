package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title> Tunel do Tempo </title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div>\r\n");
      out.write("            <h1> Antiquário Tunel do Tempo </h1>\r\n");
      out.write("            <h2> A arte de comprar e vender antiguidades </h2>\r\n");
      out.write("\r\n");
      out.write("            <p> Venha comprar e vender seus móveis e apetrechos antigos conosco.<br> \r\n");
      out.write("                Fazemos todo o intermédio entre comprador e vendedor. </p>\r\n");
      out.write("            <p>Cadastre-se já nos links abaixo: </p>\r\n");
      out.write("\r\n");
      out.write("            <table>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>  \r\n");
      out.write("                        <!-- \r\n");
      out.write("                        <a class=\"botao\" href=\"cliente.jsp\">Cliente</a>\r\n");
      out.write("                        !-->\r\n");
      out.write("                        <a href=\"clientes.jsp\">Clientes</a> \r\n");
      out.write("                    </td>\r\n");
      out.write("\r\n");
      out.write("                    <td>\r\n");
      out.write("                        \r\n");
      out.write("                        <!-- \r\n");
      out.write("                        <a class=\"botao\" href=\"fornecedor.jsp\">Fornecedor</a>\r\n");
      out.write("                        !-->\r\n");
      out.write("                        <a href=\"fornecedores.jsp\">Fornecedores</a>\r\n");
      out.write("        </td>    \r\n");
      out.write("    </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
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
