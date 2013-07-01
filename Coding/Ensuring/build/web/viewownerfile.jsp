<%-- 
    Document   : viewownerfile
    Created on : 26 Feb, 2013, 4:34:45 PM
    Author     : venkatesh@
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                border:1px solid #ddd;
                font-weight:normal;
                padding:2px 2px 2px 2px;
            }
        </style>
    </head>



    <body>
        <form name="f1" action="upload1.jsp" method="post" onSubmit="return valid4()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content">
                    <%
                        String ux1 = request.getQueryString();

                    %>

                    <h4>UPLOADED FILES</h4>
                    <table  cellspacing="10" >
                        <th class="c1">ID</th>
                        <th class="c1">FILE NAME</th>
                        <th class="c1">OWNER NAME</th>
                        <th class="c1">UPLOAD TIME</th>

                        <%
                            String sql = "select * from upload where ownername='" + ux1 + "'";
                            String id1 = null, filename1 = null, ownername1 = null, utime = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                                Statement st = conn3.createStatement();
                                ResultSet rs2 = st.executeQuery(sql);

                                while (rs2.next()) {
                                    id1 = rs2.getString("id");
                                    filename1 = rs2.getString("filename");
                                    ownername1 = rs2.getString("ownername");
                                    utime = rs2.getString("utime");
                        %>
                        <tr>

                            <td class="c2"><%= id1%></td>
                            <td class="c2"><%= filename1%></td>
                            <td class="c2"><%= ownername1%></td>
                            <td class="c2"><%= utime%></td>
                        </tr>



                        <%
                                }
                            } catch (Exception e) {
                                out.print(e);
                            }

                        %>

                    </table>






                </div>

                <ul id="nav">


                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="viewrecords.jsp">View Record</a></li> 
                    <li><a href="viewuser.jsp">View User List</a></li>  
                    <li><a href="csppage.jsp">Back</a></li>    

                </ul>

            </div>

           
        </form>
    </body>
</html>

