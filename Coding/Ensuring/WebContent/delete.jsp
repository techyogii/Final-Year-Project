<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
    <head>
        <title>Untitled Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>
        <%
            String u2 = (String) session.getAttribute("uname");
            String p2 = (String) session.getAttribute("pwd");
            String sql = "delete from login where username='" + u2 + "' AND password='" + p2 + "'";
            PreparedStatement ps1 = null;

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                ps1 = conn3.prepareStatement(sql);

                int x = ps1.executeUpdate();
                //valid();
                response.sendRedirect("index.html");

                conn3.close();
                ps1.close();
            } catch (Exception e) {
                out.print(e);
            }
        %>

    </body>
</html>
