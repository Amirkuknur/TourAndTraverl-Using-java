package com.adminpage.in;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connect() {
		  try {
		    String url = "jdbc:mysql://localhost:3306/admins";
		    String user = "root";
		    String password = "amirak07";
		    return DriverManager.getConnection(url, user, password);
		  } catch (SQLException e) {
		    e.printStackTrace();
		    return null;
		  }
		}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
		  String password = request.getParameter("password");

		  Connection connection = connect();

		  if (connection != null) {
		    String query = "INSERT INTO admins (username, password) VALUES (?, ?)";
		    PreparedStatement preparedStatement;
		    try {
		      preparedStatement = connection.prepareStatement(query);
		      preparedStatement.setString(1, username);
		      preparedStatement.setString(2, password);

		      preparedStatement.executeUpdate();

		      preparedStatement.close();
		    } catch (SQLException e) {
		      e.printStackTrace();
		    }

		    try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  }

		  RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		  dispatcher.forward(request, response);
		}
	}


