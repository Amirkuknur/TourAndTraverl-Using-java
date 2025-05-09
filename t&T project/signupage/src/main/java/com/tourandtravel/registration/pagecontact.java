package com.tourandtravel.registration;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/conncet")
public class pagecontact extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    String url = "jdbc:mysql://localhost:3306/contact_db";
    String user = "root";
    String password = "amirak07";

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      Connection conn = DriverManager.getConnection(url, user, password);

      String sql = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";

      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, name);
      pstmt.setString(2, email);
      pstmt.setString(3, message);

      pstmt.executeUpdate();

      response.sendRedirect("consuc.jsp");

    } catch (Exception e) {
      e.printStackTrace();
      response.sendRedirect("conerro.jsp");
    }
  }
}