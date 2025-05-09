package com.tourandtravel.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/feedback")
public class feedbackpage extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    int rating = Integer.parseInt(request.getParameter("rating"));
    String comments = request.getParameter("comments");

    String url = "jdbc:mysql://localhost:3306/feedback_db";
    String user = "root";
    String password = "amirak07";

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");

      Connection conn = DriverManager.getConnection(url, user, password);

      String sql = "INSERT INTO feedback (name, email, rating, comments) VALUES (?, ?, ?, ?)";

      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, name);
      pstmt.setString(2, email);
      pstmt.setInt(3, rating);
      pstmt.setString(4, comments);

      pstmt.executeUpdate();

      response.sendRedirect("success.jsp");

    } catch (Exception e) {
      e.printStackTrace();
      response.sendRedirect("Error.jsp");
    }
  }
}