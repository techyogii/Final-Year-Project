<%@page import="java.lang.String"%>
<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 


<%
    File ff = (File)session.getAttribute("uploadedFile1");
    //String ff = request.getParameter("datafile");
    //String zz = request.getParameter("filename");
    String zz = (String) session.getAttribute("filename");
    
    String yy = (String) session.getAttribute("uname");
    //String filekey1 = request.getParameter("filekey");
    String filekey1 = (String) session.getAttribute("filekey");
    java.util.Date now = new java.util.Date();
    String date = now.toString();
    String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now);
    out.println("ddsg "+filekey1);
    out.println("ddsg "+ff);
    out.println("ddsg "+zz);
   out.println(yy);
    //String a = "E:/TTA/Ensuring/WebContent/file/";

    File fname = ff;
    
    FileInputStream fis = null;
    //File image = new File(fname);

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");

        PreparedStatement ps = con.prepareStatement("insert into upload (filename,file,ownername,utime,filekey) values(?,?,?,?,?)");

        ps.setString(1, zz);
        fis = new FileInputStream(fname);
        ps.setBinaryStream(2, (InputStream) fis, (int) (fname.length()));
       // ps.setString(2,"101001010011");
        ps.setString(3, yy);
        ps.setString(4, strDateNew);
        ps.setString(5, filekey1);

        ps.executeUpdate();

        out.print("Successfully Registered");
        response.sendRedirect("ownerpage.jsp");
        


    } catch (Exception e1) {
        out.println(e1.getMessage());
    }

%>

