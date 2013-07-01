<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
    <head>
        <title></title>
        
    </head>
    <body>
        <%

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
        %>
        <a href="filedownload.jsp">back</a>

    </body>
</html>