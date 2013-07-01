<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <title>Registration</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>
        <%
            String name1 = null, username1 = null, emailid1 = null, password1 = null, confirmpassword1 = null, dob1 = null, address1 = null;
            String country1 = null, gender1 = null, mobilenum1 = null, utype = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                PreparedStatement ps = conn.prepareStatement("insert into login (name,username,emailid,password,confirmpassword,utype) values (?,?,?,?,?,?)");

                name1 = request.getParameter("name");
                username1 = request.getParameter("username");
                emailid1 = request.getParameter("emailid");
                password1 = request.getParameter("password");
                confirmpassword1 = request.getParameter("confirmpassword");
                dob1 = request.getParameter("dob");
                address1 = request.getParameter("address");
                country1 = request.getParameter("country");
                gender1 = request.getParameter("gender");
                mobilenum1 = request.getParameter("mobilenum");
                utype = request.getParameter("utype");
                ps.setString(1, name1);
                ps.setString(2, username1);
                ps.setString(3, emailid1);
                ps.setString(4, password1);
                ps.setString(5, confirmpassword1);
                ps.setString(6, utype);
                int x = ps.executeUpdate();

                if (x == 0) {
                    response.sendRedirect("register.jsp?message=success");
                } else {
                    response.sendRedirect("index.html?message=success");
                }
            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>
