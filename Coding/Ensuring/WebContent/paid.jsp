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

            java.util.Date now = new java.util.Date();
            String date = now.toString();
            String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
            SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
            String strDateNew = sdf.format(now);

            String idy = (String) session.getAttribute("idx");
            String fname = (String) session.getAttribute("filenamex");
            String ownernamey = (String) session.getAttribute("ownernamex");
            String utimez = (String) session.getAttribute("utimex");
            
            String modepymt = request.getParameter("mode");
            String cardname1 = request.getParameter("cardname");
            int accno1 = Integer.parseInt(request.getParameter("accno"));
            String edate = request.getParameter("cedate");
            String cspname1 = (String) session.getAttribute("cspname");
            String username1 = (String) session.getAttribute("uname");
            String z = (String) session.getAttribute("fk");


            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                PreparedStatement ps = conn.prepareStatement("insert into ciaproperty (fileid,filename,ownername,uploadtime,modeofthepayment,nameofthecard,accno,expirydate,cspname,username,downloadtime,filekey) values (?,?,?,?,?,?,?,?,?,?,?,?)");

                ps.setString(1, idy);
                ps.setString(2, fname);
                ps.setString(3, ownernamey);
                ps.setString(4, utimez);
               
                ps.setString(5, modepymt);
                ps.setString(6, cardname1);
                ps.setInt(7, accno1);
                ps.setString(8, edate);
                ps.setString(9, cspname1);
                ps.setString(10, username1);
                ps.setString(11, strDateNew);
                ps.setString(12, z);


                int x = ps.executeUpdate();

                if (x == 0) {
                    response.sendRedirect("filedownload.jsp");
                } else {
                    response.sendRedirect("filedownload.jsp");
                }
            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>
