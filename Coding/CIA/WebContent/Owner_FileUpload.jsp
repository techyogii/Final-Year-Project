<%-- 
    Document   : Owner_FileUpload
    Created on : 3 Mar, 2013, 10:21:31 AM
    Author     : venkatesh
--%>

<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
    <head>
        <title>Untitled Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>

    <body>
        <%


            String username1 = null;
            String password1 = null;
            username1 = request.getParameter("name");
            password1 = request.getParameter("password");
            String ut=null;
            String st=null;
            if(username1!="" && password1!=""){
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                    Statement stmt1 = conn2.createStatement();
                    ResultSet rs1 = stmt1.executeQuery("select * from requesttable where username='" + username1 + "' AND newpassword='" + password1 + "'");
                    while(rs1.next()) {
                        ut=rs1.getString("usertype");
                        st=rs1.getString("status");
                    }
                    if(st.equals("granted")){
                        response.sendRedirect("fileupdload.jsp");
                    }
                    else{
                        response.sendRedirect("downloadfilelist03up.jsp");
                    }
                } catch (Exception e) {
                    out.println("Please enter the correct CIA password");
                    response.sendRedirect("downloadfilelist03up.jsp");
                }
            } else {
                out.print("please enter CIA password");
            }

        %>

    </body>
</html>

