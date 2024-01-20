package controller.java.client_controller;

import java.io.*;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/caytrongnonglam";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "123456";

    // JDBC variable for managing connection
    private Connection connection;

    public void init() {
        try {
            // Initialize the connection when the servlet is started
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        try {
            // Close the connection when the servlet is stopped
            if (this.connection != null && !this.connection.isClosed()) {
                this.connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (validateUser(email, password)) {
            // Valid user, redirect to index.jsp
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("email", email);
            response.sendRedirect("index.jsp");
        } else {
            // Invalid credentials, redirect back to login.jsp with an error message
            response.sendRedirect("index.jsp?error=1");
        }
    }

    private boolean validateUser(String email, String password) {
        try {
            if (this.connection != null) {
                // Query to check if the user with provided email and password exists in the database
                String query = "SELECT * FROM users WHERE email = ? AND pass = ?";
                try (PreparedStatement preparedStatement = this.connection.prepareStatement(query)) {
                    preparedStatement.setString(1, email);
                    preparedStatement.setString(2, password);
                    ResultSet resultSet = preparedStatement.executeQuery();
                    return resultSet.next(); // If resultSet has any rows, then the user is valid
                }
            } else {
                System.err.println("Connection is not initialized.");
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
