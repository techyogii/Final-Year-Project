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
                    String sql = "select * from login where username='" + u1 + "' AND password='" + p1 + "'";
                    String id1 = null, n1 = null, un1 = null, eid1 = null, pwd1 = null, cpwd1 = null, dob1 = null, add1 = null, mno1 = null, cry1 = null, ger1 = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                        Statement st = conn3.createStatement();
                        ResultSet rs2 = st.executeQuery(sql);

                        while (rs2.next()) {
                            id1 = rs2.getString("id");
                            n1 = rs2.getString("name");
                            un1 = rs2.getString("username");
                            eid1 = rs2.getString("emailid");
                            dob1 = rs2.getString("dob");
                            add1 = rs2.getString("address");
                            mno1 = rs2.getString("mobileno");
                            cry1 = rs2.getString("country");
                            ger1 = rs2.getString("gender");
                        }
                    } catch (Exception e) {
                        out.print(e);
                    }

                %>
                <form name="form2" action="delete.jsp" method="post">
                    <table bgcolor="000000">
                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>NAME</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= n1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>USER NAME</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= un1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>EMAIL ID</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= eid1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>DOB</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= dob1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>ADDRESS</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= add1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>MOBILE NO.</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= mno1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>COUNTRY</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= cry1%></font></td>
                        </tr>

                        <tr>
                            <td><font color="#CCFFFF" face="Courier New"  size="+2"><strong>GENDER</font></strong></td>
                            <td><font color="#FFFFFF">:</font></td>
                            <td><font color="#CCFFFF" face="mono" size="+2"><%= ger1%></font></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td><font color="#FFFFFF"><input type="submit" value="DELETE" name="del"></font></td>
                        </tr>



                    </table>
                </form>
            </div>

            <ul id="nav">
                <div id="hme"> 
                    <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                </div>

                <li><a href="view.jsp">View Account</a></li>
                <li><a href="userpage.jsp">Back</a></li>
                <li><a href="#"></a></li>
            </ul>

        </div>


    </body>
</html>

