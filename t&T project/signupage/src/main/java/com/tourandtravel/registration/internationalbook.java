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

@WebServlet("/books")
public class internationalbook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String destination = request.getParameter("destination");
        int rooms = Integer.parseInt(request.getParameter("rooms"));
        int adults = Integer.parseInt(request.getParameter("adults"));
        int children = Integer.parseInt(request.getParameter("children"));

        // JDBC Database Connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/inter";
        String dbUser = "root";
        String dbPassword = "amirak07";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Prepare SQL statement to insert data into the Bookings table
            String sql = "INSERT INTO interbook (name, email, destination, rooms, adults, children) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, destination);
                preparedStatement.setInt(4, rooms);
                preparedStatement.setInt(5, adults);
                preparedStatement.setInt(6, children);

                // Execute the SQL statement
                preparedStatement.executeUpdate();
            }

            // Close the database connection
            connection.close();

            // Redirect to a confirmation page or do any other necessary processing
            response.sendRedirect("interpayment.jsp"); // Replace "confirmation.jsp" with your confirmation page

        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
    }
}
