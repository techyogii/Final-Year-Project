<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
        <style type="text/css">
            .c1
            {
                font-family:verdana;
                font-size:11px;
                color:#0074E8;
                font-weight:bold;
                padding:2px 2px 2px 2px;
            }
            .c1:hover
            {
                color:red;
                font-size:12px;
            }
            .c2
            {
                font-family:verdana;
                font-size:12px;
                color:#000000;
                border:0px solid #ddd;
                font-weight:normal;
                padding:2px 2px 2px 2px;
            }
        </style>
    </head>



    <body>
        <form name="f1" action="#" method="post" onSubmit="return valid4()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content1">


                    <h4>All Request</h4>
                    <table  cellspacing="4" >




                        <%
                            String s1 = "user";
                            String sql = "select * from requesttable";
                            String id1 = null, n1 = null, un1 = null, eid1 = null, pwd1 = null, cpwd1 = null, dob1 = null, add1 = null, mno1 = null, cry1 = null, ger1 = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                                Statement st = conn3.createStatement();
                                ResultSet rs2 = st.executeQuery(sql);

                                while (rs2.next()) {
                                    id1 = rs2.getString("username");
                                    n1 = rs2.getString("password");
                                    un1 = rs2.getString("usertype");


                        %>
                        <tr>
                            <td class="c1">User Name</td>
                            <td class="c2"><%= id1%></td></tr>
                        <tr>
                            <td class="c1">Password</td>
                            <td class="c2"><%= n1%></td></tr>
                        <tr>
                            <td class="c1">User Type</td>
                            <td class="c2"><%= un1%></td></tr>

                        <tr>
                            <td class="c1">Grant a Request</td>
                            <td class="c2"><a href="granted1.jsp?<%=id1%>" class="c1">Grant</a></td>
                        </tr>

                        <tr><td align="center"><img src="images/border2.png" height="50" width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/border2.png" height="50" width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/border2.png" height="50" width="50"></td></tr>

                        <%
                                }
                                session.setAttribute("u1", id1);


                            } catch (Exception e) {
                                out.print(e);
                            }

                        %>

                    </table>



                </div>

                <ul id="nav">
                    <li><a href="index.html" >Home</a></li>

                    <li><a href="admin.jsp">Back</a></li>


                </ul>

            </div>

            <address>
                <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
            </address>


        </form>
    </body>
</html>
