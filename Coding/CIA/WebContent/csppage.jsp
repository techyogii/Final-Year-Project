<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

        <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
    </head>
    <%
        String name = null;
        String uname2 = (String) session.getAttribute("uname");
        String pass2 = (String) session.getAttribute("pwd");

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
            Statement stmt1 = conn2.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from login where username='" + uname2 + "' AND password='" + pass2 + "'");
            if (rs1.next()) {
                name = rs1.getString("name");
            }
        } catch (Exception e) {
            out.print(e);
        }


    %>
    <body>
        <div id="container" class="clearfix">

            <h1><em></em></h1>

            <h2></h2>

            <div id="content">

                <h3></h3>


                <h4><font color="#FFCC00">WELCOME </font> 
                    <font color="#FFCC00"> <%=name%>
                    !</font></h4>

                <p>
                </p>

                <h4></h4>

                <p>    </p>

                <h4></h4>

                <p>
                </p>

                <h4></h4>

                <p>
                </p>

            </div>

            <ul id="nav">

                <div id="hme"> 
                    <li><a href="index.html" title="">Home <img src="images/HomeGreen.png" width="35" height="30" align="texttop"  ></a></li>
                </div>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="viewrecords.jsp">View Record</a></li> 
                <li><a href="viewuser.jsp">View User List</a></li> 
                <li><a href="index.html">LogOut</a></li>     


            </ul>

        </div>

  

    </body>
</html>
