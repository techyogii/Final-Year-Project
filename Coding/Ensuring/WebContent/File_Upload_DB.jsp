<%-- 
    Document   : File_Upload_DB
    Created on : 3 Mar, 2013, 12:07:51 PM
    Author     : venkatesh
--%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<center><h1>Your Profile has been Uploaded</h1></center>
<%!    
    String filename = "";
   // String filecost = "";
   // String refilecost = "";
    String filekey = "";
    int count1 = 0, count2 = 0, count3 = 0, count4 = 0;
%>
<%
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {
            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField()) {
                String name = item.getFieldName();
                String value = item.getString();
                if (name.equals("filename")) {
                    filename = value;
                    session.setAttribute("filename", filename);
                    count1 = 1;
                }
               
                if (name.equals("filekey")) {
                    filekey = value;
                    session.setAttribute("filekey", filekey);
                    count4 = 4;
                }
                
                response.sendRedirect("upload1.jsp");
%>

            } else {
                try {
                        
                    String itemName = item.getName();
                    File savedFile = new File("/var/lib/openshift/515516b35973cae68c00019f/app-root/data/file/" + itemName);
                    //item.write(savedFile);
                    session.setAttribute("savedFile", savedFile);
                    
<center>
    <table >
        <tr>
            <td width="210"></td>
            <td> <img  border="2" src=/<%=itemName%> width="137"  height="140"></td>
        </tr>
    </table>
    <table border="2" width="350">

    <% 
    if(count1 == 1) 
    {
        out.println("<tr><td align='left'><b>Name:</td><td><b>" + filename);
                        }
                        
                        if (count4 == 4) {
                            out.println("</td><tr><td align='left'><b>Contact No</td><td><b>" + filekey);
                        }
                        
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    %>
    </td></tr></table></center>

    
  <%--  <%
    String ff = request.getParameter("datafile");
    if(count1==1){
        String zz = request.getParameter("filename");
    }
    if(count2==2){
        int fcost = Integer.parseInt(request.getParameter("filecost"));
    }
    if(count3==3){
        int fcost1 = Integer.parseInt(request.getParameter("refilecost"));
    }
    String yy = (String) session.getAttribute("uname");
    if(count4==4){
        String filekey1 = request.getParameter("filekey");
    }
    java.util.Date now = new java.util.Date();
    String date = now.toString();
    String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now);

    //String a = "E:/TTA/Ensuring/WebContent/file/";

    String fname = "C:/file/"+ff;
    FileInputStream fis = null;
    File image = new File(fname);

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");

        PreparedStatement ps = con.prepareStatement("insert into upload (filename,file,ownername,utime,fcost,redwnloadcost,filekey) values(?,?,?,?,?,?,?)");

        ps.setString(1, zz);
        fis = new FileInputStream(image);
        ps.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
        ps.setString(3, yy);
        ps.setString(4, strDateNew);
        ps.setInt(5, fcost);
        ps.setInt(6, fcost1);
        ps.setString(7, filekey1);

        ps.executeUpdate();

        out.print("Successfully Registered");
        response.sendRedirect("ownerpage.jsp");
        


    } catch (Exception e1) {
        out.println(e1.getMessage());
    }

%>--%>