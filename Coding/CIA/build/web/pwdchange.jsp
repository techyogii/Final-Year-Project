<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <script type="text/javascript">
            function valid3()
            {
                var a=document.fpwd.oldpassword.value;
                if(a=="")
                {
                    alert ("enter a old password");
                    document.fpwd.oldpassword.focus();
                    return false;
                }
                var b=document.fpwd.newpassword.value;
                if(b=="")
                {
                    alert ("enter a new password");
                    document.fpwd.newpassword.focus();
                    return false;
                }
                var c=document.fpwd.confirmpassword.value;
                if(c=="")
                {
                    alert ("enter a confirm password");
                    document.fpwd.confirmpassword.focus();
                    return false;
                }
                if(b!=c)
                {
                    alert ("enter a correct confirm password");
                    document.fpwd.confirmpassword.select();
                    return false;
                }
	
            }
        </script>

    </head>

    <body>
        <%
            String u2 = (String) session.getAttribute("uname");
        //out.print(s);

            String old = null;
            Connection conn2 = null;

            ResultSet rs1 = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                Statement stmt1 = conn2.createStatement();
                rs1 = stmt1.executeQuery("select confirmpassword from login where username='" + u2 + "'");
                while (rs1.next()) {
                    old = rs1.getString("confirmpassword");
                }
                session.setAttribute("old", old);

            } catch (SQLException e) {
                out.print(e);
            }

        %>
        <form name="fpwd" action="update1.jsp" method="post" onSubmit="return valid3()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">
                    <div id="pwdchange"> <img src="images/profile_change_password.jpg"  width="190" height="200"/> </div>
                    <h3> CHANGE PASSWORD </h3>
                    <table bgcolor="#003333" height="170">
                        <br /><br />
                        <tr><td><strong><font color="#FFFFFF" size="2">Old Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="oldpassword" placeholder="enter old password" ></td>
                        </tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">New Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="newpassword" placeholder="enter password" ></td>
                        </tr>

                        <tr><td><strong><font color="#FFFFFF" size="2">Confirm Password</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><input type="password" name="confirmpassword" placeholder="enter password" ></td>
                        </tr>

                        <tr><td></td><td></td><td><input type="submit" style="color:black;background:#cccccc" value="SUBMIT" name="submit"></td></tr>
                        <tr><td></td><td></td>

                    </table>
                </div>

                <ul id="nav">
                    <div id="hme"> 
                        <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                    </div>

                    <li><a href="login.jsp">Login</a></li>

                    <li><a href="pwdchange.jsp">Change Password</a></li>

                    <li><a href="userpage.jsp">Back</a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>

            </div>

            <address>
                <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
            </address>

        </form>

    </body>
</html>
