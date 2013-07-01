<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
    <head>
        <title>Untitled Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>
        <%


            String username1 = null, uname1 = null, utype = null;
            String password1 = null, pword1 = null, utype1 = null;
            username1 = request.getParameter("name");
            password1 = request.getParameter("password");
            utype = request.getParameter("utype");
            session.setAttribute("n1", username1);
            session.setAttribute("p1", password1);
            session.setAttribute("u5", utype);
            try {


                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                Statement stmt1 = conn2.createStatement();
                ResultSet rs1 = stmt1.executeQuery("select * from requesttable where username='" + username1 + "'");
                if (rs1.next()) {
                    out.print("you are already raised CIA Request ");

                } else {
                    response.sendRedirect("requestcia2.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }

        %>
        <a href="requestcia1.jsp">go back</a>
    </body>
</html>
