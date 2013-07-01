<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
    </head>

    <body>
        <div id="container" class="clearfix">

            <h1><em></em></h1>

            <h2></h2>

            <div id="content">
                <%
                    String u1 = (String) session.getAttribute("uname");
                    String p1 = (String) session.getAttribute("pwd");
                    String sql = "select * from requesttable where username='" + u1 + "' AND password='" + p1 + "'";
                    String reqpwd1 = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                        Statement st = conn3.createStatement();
                        ResultSet rs2 = st.executeQuery(sql);

                        while (rs2.next()) {
                            reqpwd1 = rs2.getString("newpassword");
                        }
                    } catch (Exception e) {
                        out.print(e);
                    }

                %>
                <form name="form2" action="#" method="post">
                    <table bgcolor="000000">
                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>Request CIA PASSWORD</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= reqpwd1%></font></td>
                        </tr>

                    </table>
                </form>
            </div>

            <ul id="nav">
                <div id="hme"> 
                    <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                </div>

                <!--<li><a href="view.jsp"></a></li>
                <li><a href="pwdchange.jsp"></a></li>
                <li><a href="downloadfile1.jsp"> </a></li>-->
                <li><a href="ownerpage.jsp">Back</a></li>
                <li><a href="#"></a></li>
            </ul>

        </div>

        <address>
            <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


    </body>
</html>

