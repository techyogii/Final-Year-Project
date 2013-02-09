package main.java;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.Part;

@WebServlet(name = "uploadFile",urlPatterns = {"/uploadFile"})
@MultipartConfig
public class fileuploader extends javax.servlet.http.HttpServlet {
  protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse resp
onse) throws javax.servlet.ServletException, IOException {
    processRequest(request,response);
  }

  protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse respo
nse) throws javax.servlet.ServletException, IOException {
    processRequest(request,response);
  }

  protected void processRequest(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletRespo
nse response) throws javax.servlet.ServletException, IOException {
    PrintWriter out = response.getWriter();
    for (Part part : request.getParts()) {
      InputStream is = request.getPart(part.getName()).getInputStream();
      int i = is.available();
      byte[] b  = new byte[i];
      is.read(b);
      String fileName = getFileName(part);
      FileOutputStream os = new FileOutputStream(System.getenv("OPENSHIFT_DATA_DIR") + fileName);
      os.write(b);
      is.close();
      out.println(fileName + " was uploaded to " + System.getenv("OPENSHIFT_DATA_DIR"));
    }
  }

  private String getFileName(Part part) {
    String partHeader = part.getHeader("content-disposition");