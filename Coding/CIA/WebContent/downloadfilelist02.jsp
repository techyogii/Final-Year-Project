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


            String username1 = null, uname1 = null, utype = null;
            String password1 = null, pword1 = null, utype1 = null;
            username1 = request.getParameter("name");
            password1 = request.getParameter("password");
            out.println(username1);
            utype = request.getParameter("utype");
            String u1 = "DOWNLOAD";
            String u2 = "VIEWFILELIST";
            String ut=null;
            String st=null;

            if (utype.equals(u1)) {
                response.sendRedirect("downloadfile1.jsp");
            }
            if (utype.equals(u2)) {
                try {


                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn2 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                    Statement stmt1 = conn2.createStatement();
                    ResultSet rs1 = stmt1.executeQuery("select * from requesttable where username='" + username1 + "' AND newpassword='" + password1 + "'");
                    while(rs1.next()) {
                        ut=rs1.getString("usertype");
                        st=rs1.getString("status");
                    }
                    out.println(ut);
                    if(ut.equals("user")&&(st.equals("granted"))){
                        response.sendRedirect("downloadfilelist.jsp");
                    }
                    else if(ut.equals("owner")&&(st.equals("granted"))){
                        response.sendRedirect("Owner_DownloadList.jsp");
                    }
                    else{
                        response.sendRedirect("downloadfilelist02.jsp");
                    }
                } catch (Exception e) {
                    out.println("please enter the correct CIA password");
                    response.sendRedirect("downloadfilelist02.jsp");
                }
            } else {
                out.print("select any option");
                
            }

        %>

    </body>
</html>
