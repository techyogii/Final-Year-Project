package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import java.util.HashSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.*;

public final class downloadfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title></title>\r\n");
      out.write("        \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");


            String a = (String) session.getAttribute("idx");
            String b = (String) session.getAttribute("fk");
            String c = request.getParameter("fkeyvalue");
            String id="";
            String fn="";


            if (b.equals(c)) {
                Blob file = null;

                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                String sql = null;
                sql = "select * from upload where id ='" + a + "'";

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    rs.next();
                    file = rs.getBlob("file");
                    id=rs.getString("id");
                    fn=rs.getString("filename");
                } catch (Exception e) {
                    out.println("Exception :" + e);
                } finally {
                    if (con != null) {
                        con.close();
                    }
                    if (ps != null) {
                        ps.close();
                    }
                    if (rs != null) {
                        rs.close();
                    }
                }
                session.setAttribute("resumeBlob", file);
                session.setAttribute("id", id);
                session.setAttribute("fn", fn);
                response.sendRedirect("view_budget.jsp");
            } else {
                out.print("enter correct file key value");
            }
        
      out.write("\r\n");
      out.write("        <a href=\"filedownload.jsp\">back</a>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
