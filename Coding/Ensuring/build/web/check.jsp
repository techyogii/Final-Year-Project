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
            String u1="CIA";
            String u2="CIA";
            if (username1.equals(u1) && password1.equals(u2)) {
                response.sendRedirect("admin.jsp");
            } else {
                try {


                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                    Statement stmt1 = conn2.createStatement();
                    ResultSet rs1 = stmt1.executeQuery("select * from login where username='" + username1 + "' AND password='" + password1 + "' AND utype='" + utype + "'");
                    if (rs1.next()) {
                        uname1 = rs1.getString("username");
                        pword1 = rs1.getString("password");
                        utype = rs1.getString("utype");
                        session.setAttribute("uname", uname1);
                        session.setAttribute("pwd", pword1);

                        if (utype.equals("owner")) {
                            response.sendRedirect("ownerpage.jsp");
                        }
                        if (utype.equals("user")) {
                            response.sendRedirect("userpage.jsp");
                        }
                        if (utype.equals("csp")) {
                            response.sendRedirect("csppage.jsp");
                        }


                    } else {
                        response.sendRedirect("login.jsp");
                    }
                    conn2.close();
                    stmt1.close();
                    rs1.close();
                } catch (Exception e) {
                    out.println(e);
                }
            }
        %>

    </body>
</html>
