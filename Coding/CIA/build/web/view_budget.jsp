<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
    <head>
        <title></title>
        
    </head>

    <body>		
        <%
            try {

                Blob b = (Blob) session.getAttribute("resumeBlob");
                String id=(String) session.getAttribute("id");
                String fn=(String) session.getAttribute("fn");
                //String identity = session.getId();
                //System.out.println("identity ===============" + identity );
                //InputStream is = b.getBinaryStream();
                if (b != null) {
                    InputStream is = b.getBinaryStream();
                    String sql = "select * from upload where id = '" + id + "' ";
                    System.out.println("SQL OTPUT ===============" + sql );
                            String id1 = null, filename = null, ownername1 = null, utime = null, cost = null, recost = null;
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn3 = DriverManager.getConnection("jdbc:mysql://127.8.1.1/cia", "adminsWtjE3x", "8h1kTabnsNwn");
                                Statement st = conn3.createStatement();
                                ResultSet rs2 = st.executeQuery(sql);
                                          
                                
                                while (rs2.next()) {
                                      id1 = rs2.getString("id");
                                      filename = rs2.getString("filename");
                                           }
                   // String filename = "filename";
                  //  filename += ".doc";
                    byte[] ba = b.getBytes(1, (int) b.length());
                    
                    response.setContentType("application/msword");
                    response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
                    OutputStream os = response.getOutputStream();
                    //EncryptDecrypt.decrypt(is, os);
                    os.write(ba);
                    os.close();
                    ba = null;

                    session.removeAttribute("budget");
                    response.sendRedirect("login.jsp");
                }

            } catch (Exception e) {
                out.println("Exception :" + e);
            }



        %>

    </body>
</html>