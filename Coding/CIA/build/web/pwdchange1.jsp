<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
    <head>
        <title>Untitled Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>

        <%
            String s1 = (String) session.getAttribute("uname");
            String p1 = (String) session.getAttribute("z");
            String p2 = (String) session.getAttribute("z1");
            Connection conn3 = null;
            PreparedStatement pstmt1 = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                pstmt1 = conn3.prepareStatement("update login set password='" + p1 + "', confirmpassword='" + p2 + "' where username='" + s1 + "'");

                int x = pstmt1.executeUpdate();
                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %></body>
</html>
