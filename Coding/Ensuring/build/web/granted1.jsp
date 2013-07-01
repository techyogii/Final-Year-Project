<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<%
    String s1 = request.getQueryString();
    int n = ((int) (Math.random() * 200000));
    String p1 = "granted";



    Connection conn3 = null;
    PreparedStatement pstmt1 = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
        pstmt1 = conn3.prepareStatement("update requesttable set status='" + p1 + "',newpassword='" + n + "' where username='" + s1 + "'");

        int x = pstmt1.executeUpdate();
        response.sendRedirect("#");
    } catch (Exception e) {
        out.println(e.getMessage());
    }

%>
