package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Farmer Merchant Integration</title>\r\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css\" integrity=\"sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\"/>\r\n");
      out.write("        <script src=\"js/bootstrap.bundle.js\"></script>\r\n");
      out.write("        <link href=\"css/style.css\"rel=\"stylesheet\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container-fulid\">\r\n");
      out.write("            <!--Outer section start-->\r\n");
      out.write("\r\n");
      out.write("            <!--Header.jsp section start-->\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("            <!--Header.jsp section end-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- Main section start-->\r\n");
      out.write("            <div class=\"container-fulid\">\r\n");
      out.write("                <div class=\"row mt-2\">\r\n");
      out.write("                    <div class=\"col-sm-4 bg-info\" style=\"min-height:600px;\"></div>\r\n");
      out.write("                    <div class=\"col-sm-8 bg-secondary bg-opacity-25\" style=\"min-height:600px;\">\r\n");
      out.write("                        <h2 style=\"text-align:center; color:blue;\">Farmer Enquiry Form</h2>\r\n");
      out.write("                        <form class=\"form-group\" method=\"post\" action=\"controller.jsp\">\r\n");
      out.write("                            <input type=\"hidden\" name=\"page\" value=\"contactus\"/>\r\n");
      out.write("                            <table class=\"table\" style=\"width:80%; margin: auto;\">\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Enter Name</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"text\" name=\"name\" class=\"form-control\"/>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Select Gender</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"radio\" name=\"gender\" value=\"Male\" class=\"form-check-input\"/>Male\r\n");
      out.write("                                        <input type=\"radio\" name=\"gender\" value=\"Female\" class=\"form-check-input\"/>Female\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Enter Address</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <textarea name=\"address\" class=\"form-control\"></textarea>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Enter Contact No</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"text\" name=\"contactno\" class=\"form-control\" />\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Enter Email Address</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <input type=\"email\" name=\"emailaddress\" class=\"form-control\" />\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>Enter Enquiry Text</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <textarea name=\"enquirytext\" class=\"form-control\"></textarea>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td></td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-outline-success\">Submit</button>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- main section end-->\r\n");
      out.write("            <!--Footer.jsp section start-->\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("            <!--Footer.jsp section end-->\r\n");
      out.write("\r\n");
      out.write("            <!--Outer section end-->\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
