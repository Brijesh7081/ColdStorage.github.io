package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import dbpack.DbManager;

public final class book_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"../css/style.css\"rel=\"stylesheet\"/>\n");
      out.write("     \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid mt-1\">\n");
      out.write("                 ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12\"style=\"min-height: 600px;background-color:grey;\">\n");
      out.write("                    <h2 style=\"text-align: center;color:white;margin-top: 30px;\">Booking Form</h2>\n");
      out.write("                    ");

                        String aadharno=session.getAttribute("ano").toString();
                        DbManager dm=new DbManager();
                        String query="select * from farmerinfo where aadharno='"+aadharno+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                    
      out.write("\n");
      out.write("                    <form class=\"form-group\"method=\"post\">\n");
      out.write("                        <table class=\"table table-bordered\"style=\"margin: auto;width: 70%;\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Registration Id</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"regid\" value=\"");
      out.print(rs.getString("regid"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Farmer Name</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"name\"value=\"");
      out.print(rs.getString("name"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Village</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"village\"value=\"");
      out.print(rs.getString("village"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Post</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"post\"value=\"");
      out.print(rs.getString("post"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>District</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"district\"value=\"");
      out.print(rs.getString("district"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                <td>State</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"state\"value=\"");
      out.print(rs.getString("state"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Pin Code</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\"name=\"pincode\"value=\"");
      out.print(rs.getString("pincode"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Contact No</td>\n");
      out.write("                                <td>\n");
      out.write("                                     <input type=\"text\"name=\"contactno\"value=\"");
      out.print(rs.getString("contactno"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Aadhar No</td>\n");
      out.write("                                <td>\n");
      out.write("                                     <input type=\"text\"name=\"aadharno\"value=\"");
      out.print(rs.getString("aadharno"));
      out.write("\"class=\"form-control\"readonly/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Number of packet</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\"name=\"noofpacket\"class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Duration in months</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\"name=\"duration\"class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Rate</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\"name=\"rate\"class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Advance Amount</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\"name=\"advanceamt\"class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td>\n");
      out.write("                                    <button type=\"submit\"class=\"btn btn-success\">Submit</button>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\" style=\"font-family: calbari\">\n");
      out.write("                <div class=\"col-sm-6\"style=\"min-height: 40px;background-color: black;color:white;font-size: 20px;text-align: center;line-height: 40px;\">\n");
      out.write("                    Copyright&copy; Farmer Merchant Integration\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\"style=\"min-height: 40px;background-color: navy;color:white;font-size: 20px;text-align: center;line-height: 40px;\">\n");
      out.write("                    Developed by - <u><i>Brijesh Kumar</i></u>\n");
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
