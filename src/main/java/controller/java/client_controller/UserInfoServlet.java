package controller.java.client_controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/loadUserData")
public class UserInfoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get user's email from the session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");

        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/test";
        String username = "root";
        String password = "123456";

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String sql = "SELECT firstName, phone, gender, dob FROM users WHERE email=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, email);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        // Set user information as request attributes
                        request.setAttribute("fullName", resultSet.getString("firstName"));
                        request.setAttribute("phone", resultSet.getString("phone"));
                        request.setAttribute("gender", resultSet.getString("gender"));
                        request.setAttribute("dob", resultSet.getString("dob"));

                        // Forward the request to the JSP page for rendering
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/user_page.jsp");
                        dispatcher.forward(request, response);
                    } else {
                        // User not found in the database
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "User not found");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving user data");
        }
    }
}
