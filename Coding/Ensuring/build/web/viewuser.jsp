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

            }
        </style>
    </head>



    <body>
        <form name="f1" action="upload1.jsp" method="post" onSubmit="return valid4()">
            <div id="container" class="clearfix">

                <h1><em></em></h1>

                <h2></h2>

                <div id="content" style="overflow:scroll;height:300px;width:68%;overflow:auto">


                    <h4>UPLOADED FILES</h4>
                    <table>
                        <th class="c1">ID</th>
                        <th class="c1">USERNAME</th>
                        <th class="c1">E-MAIL</th>
                        <th class="c1">DOB</th>
                        <th class="c1">ADDRESS</th>
                        <th class="c1">MOBILE</th>
                        <th class="c1">GENDER</th>

                        <%
                            String sql = "select * from login where utype='User' ";
                            String id = null, uname = null, email = null, dob = null, address = null, mobile = null, gender = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                                Statement st = conn3.createStatement();
                                ResultSet rs2 = st.executeQuery(sql);

                                while (rs2.next()) {
                                    id = rs2.getString(1);
                                    uname = rs2.getString(3);
                                    email = rs2.getString(4);
                                    dob = rs2.getString(7);
                                    address = rs2.getString(8);
                                    mobile = rs2.getString(9);
                                    gender = rs2.getString(11);
                        %>
                        <tr>

                            <td class="c2"><%= id%></td>
                            <td class="c2"><%= uname%></td>
                            <td class="c2"><%= email%></td>
                            <td class="c2"><%=dob%></td>
                            <td class="c2"><%=address%></td>
                            <td class="c2"><%=mobile%></td>
                            <td class="c2"><%=gender%></td>
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
                    <li><a href="viewuser.jsp.jsp">View User List</a></li>  
                    <li><a href="csppage.jsp">Back</a></li>    

                </ul>

            </div>

        </form>
    </body>
</html>

