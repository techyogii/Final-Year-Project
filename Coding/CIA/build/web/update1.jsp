<%@ page  import="java.sql.*"  %>
<html>
    <head>
        <title>Untitled Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>
        <form action="pwdchange.html" method="post" name="formupdate">

            <%
                String old1 = request.getParameter("oldpassword");
                String npwd = request.getParameter("newpassword");
                String cpwd = request.getParameter("confirmpassword");
                session.setAttribute("z", npwd);
                session.setAttribute("z1", cpwd);
                String old = (String) session.getAttribute("old");
                if (old.equals(old1)) {
                    response.sendRedirect("pwdchange1.jsp");
                } else {
                    out.println("enter a correct old passwords");
                }
            %>
            <input type="submit" value="BACK">
        </form>
    </body>
</html>
