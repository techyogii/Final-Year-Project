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
                color:#685268;
                font-size:18px;
            }

            .c2
            {
                font-family:verdana;
                font-size:12px;
                color:#000000;
                border:4px solid #ddd;
                font-weight:normal;
                padding:2px 2px 2px 2px;
            }
        </style>
        <script LANGUAGE="JavaScript">
            function validation()
            {
                if(document.f1.cspnames.selectedIndex==0)
                { 
                    alert("Please select your csp member type");
                    document.f1.cspnames.focus();
                    return false;
                }
            }
        </script>

    </head>

    <body>
        <form name="f1" action="viewdownloadrec.jsp" method="post" onSubmit="return validation()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">

                    <h4> DOWNLOAD FILE</h4>
                    <h4>&nbsp;</h4>
                    <table height="150">
                        <tr><td class="c1">Select Your CSP</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                            <td><select name="cspnames" class="c2">
                                    <option value="--Select--">--Select--</option>
                                    <%
                                        String s1 = "csp";
                                        String sql = "select name from login where utype='" + s1 + "'";
                                        String utype1 = null;
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                                            Statement st = conn3.createStatement();
                                            ResultSet rs2 = st.executeQuery(sql);

                                            while (rs2.next()) {
                                                utype1 = rs2.getString("name");

                                    %>

                                    <option value="<%=utype1%>" class="c1"><%=utype1%></option>
                                    <%
                                                session.setAttribute("cspname", utype1);
                                            }

                                        } catch (Exception e) {
                                            out.print(e);
                                        }

                                    %>


                                </select></td>
                        </tr>

                        <tr><td></td><td><input type="submit" value="SUBMIT" class="c1"></td></tr>
                    </table>




                </div>

                <ul id="nav">
                    <div id="hme"> 
                        <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                    </div>



                    <li><a href="downloadfile1.jsp">File DownLoad </a></li>

                    <li><a href="userpage.jsp">Back</a></li>
                </ul>

            </div>

            <address>
                <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
            </address>

        </form>
    </body>
</html>
