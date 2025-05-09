package com.tourandtravel.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/paymentServlet")
public class payus extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Replace with your database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/paymentus";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "amirak07";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String destination = request.getParameter("destination");
        double amount = Double.parseDouble(request.getParameter("amount"));
        String paymentType = request.getParameter("paymentType");

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "INSERT INTO payments (destination, amount, payment_type) VALUES (?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, destination);
            preparedStatement.setDouble(2, amount);
            preparedStatement.setString(3, paymentType);

            preparedStatement.executeUpdate();

            response.sendRedirect("packcus.jsp"); // Redirect to success page
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
