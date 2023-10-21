package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import dbpack.DbManager;

public final class news_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");

    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

        

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"../css/bootstrap.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"../js/bootstrap.bundle.js\"></script>\n");
      out.write("         <link href=\"../css/style.css\"rel=\"stylesheet\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid mt-1\">\n");
      out.write("                 ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12\"style=\"min-height: 600px;background-color:grey;\">\n");
      out.write("                    <h2 style=\"color:blue;text-align: center;\">Add News & Events</h2>\n");
      out.write("                    <form class=\"form-group\"method=\"post\"action=\"admincontroller.jsp\">\n");
      out.write("                        <input type=\"hidden\"name=\"page\"value=\"news\"/>\n");
      out.write("                        <table class=\"table table-bordered\"style=\"width: 70%;margin: auto;\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter news</td>\n");
      out.write("                                <td><textarea name=\"newstext\"class=\"form-control\"></textarea></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td>\n");
      out.write("                                    <button type=\"submit\"class=\"btn btn-outline-success\">Post</button>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                      \n");
      out.write("                    </form>\n");
      out.write("                    <br/>\n");
      out.write("                    <h2 style=\"text-align: center;color: blue;\">News Management</h2>\n");
      out.write("                    <table class=\"table table-bordered\"style=\"width: 80%;margin: auto;text-align: center;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Id</th>\n");
      out.write("                            <th>News Text</th>\n");
      out.write("                            <th>Posted Date</th>\n");
      out.write("                        <th>Delete</th>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from news");
                            while(rs.next())
                            {
                            
                        
      out.write("\n");
      out.write("                             <tr>\n");
      out.write("                                 <td>");
      out.print(rs.getInt("id"));
      out.write("</td>\n");
      out.write("                                 <td>");
      out.print(rs.getString("newstext"));
      out.write("</td>\n");
      out.write("                                 <td>");
      out.print(rs.getString("posteddate"));
      out.write("</td>\n");
      out.write("                                 <td>\n");
      out.write("                                     <a href=\"deletenews.jsp?id=");
      out.print(rs.getInt("id"));
      out.write("\">\n");
      out.write("                                         <button class=\"btn btn-danger \">Delete</button>\n");
      out.write("                                     </a>\n");
      out.write("                                 </td>\n");
      out.write("                                </tr>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\" style=\"font-family: calbari\">\n");
      out.write("                <div class=\"col-sm-6\"style=\"min-height: 60px;background-color: black;color:white;font-size: 20px;text-align: center;line-height: 60px;\">\n");
      out.write("                    Copyright&copy; Farmer Merchant Integration\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\"style=\"min-height: 60px;background-color: navy;color:white;font-size: 20px;text-align: center;line-height: 60px;\">\n");
      out.write("                    Developed by - Brijesh Kumar\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
}
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
