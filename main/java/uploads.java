package main.java;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "uploads",urlPatterns = {"/uploads/*"})
public class uploads extends HttpServlet {

  int BUFFER_LENGTH = 4;
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOExcep
tion {

  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOExcept
ion {

    String filePath = request.getRequestURI();

    File file = new File(System.getenv("OPENSHIFT_DATA_DIR") + filePath.replace("/uploads/",""));
    InputStream input = new FileInputStream(file);

    response.setContentLength((int) file.length());
    response.setContentType(new MimetypesFileTypeMap().getContentType(file));

    OutputStream output = response.getOutputStream();
    byte[] bytes = new byte[BUFFER_LENGTH];
    int read = 0;
    while (read != -1) {
      read = input.read(bytes, 0, BUFFER_LENGTH);
      if (read != -1) {
        output.write(bytes, 0, read);
        output.flush();
      }
    }

    input.close();