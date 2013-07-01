/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParseException.*;
import com.oreilly.servlet.*;
import java.lang.*;
//import databaseconnection.*;
import java.text.SimpleDateFormat;
import java.lang.StringIndexOutOfBoundsException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
//import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author venkatesh
 */
@WebServlet("/File_Upload_DL")
public class File_Upload_DL extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filename = "";
        
        String filekey = "";
        int count1 = 0, count2 = 0, count3 = 0, count4 = 0;
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
        
        HttpSession session = request.getSession(true);
        /*String filename = request.getParameter("filename");
        String filecost = request.getParameter("filecost");
        String refilecost = request.getParameter("refilecost");
        String filekey = request.getParameter("filekey");
        
        System.out.println(filekey);
        HttpSession session = request.getSession(true);
        
        session.setAttribute("filename", filename);
        session.setAttribute("filecost", filecost);
        session.setAttribute("refilecost", refilecost);
        session.setAttribute("filekey", filekey);
        
        */
        

            try {
                List items = upload.parseRequest(request);
                Iterator iterator = items.iterator();
                while (iterator.hasNext()) {
                    FileItem item = (FileItem) iterator.next();
                    
                    if (!item.isFormField()) {
                        String fileName = item.getName();
                        String root = getServletContext().getRealPath("/");
                        File path1 = new File(root + "/uploads");
                        if (!path1.exists()) {
                            boolean status = path1.mkdirs();
                        }
                        InputStream is = item.getInputStream();
                        File uploadedFile1 = new File(path1 + "/" + fileName);
                        System.out.println(uploadedFile1);
                        session.setAttribute("uploadedFile1", uploadedFile1);
                        item.write(uploadedFile1);
                        response.sendRedirect("upload1.jsp");
                        File path = new File("/var/lib/openshift/515516b35973cae68c00019f/app-root/data/file/");
                        
                        File uploadedFile = new File(path + "/" + fileName);
                        //session.setAttribute("uploadedFile", uploadedFile);
                        
                        FileOutputStream os = new FileOutputStream(uploadedFile);
                        EncryptDecrypt.encrypt(is, os);
                        
                    }
                    else {
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


                    }
                }
                
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
            
        }
        

    }
}