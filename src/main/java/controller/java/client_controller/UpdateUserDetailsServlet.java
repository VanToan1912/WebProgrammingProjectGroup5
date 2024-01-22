package controller.java.client_controller;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateUserDetails")
public class UpdateUserDetailsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String firstName = request.getParameter("firstName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");

        String jdbcUrl = "jdbc:mysql://localhost:3306/caygiongnonglam";
        String jdbcUser = "root";
        String jdbcPassword = "123456";

        // Debugging statements
        System.out.println("firstName: " + firstName);
        System.out.println("email: " + email);
        System.out.println("phone: " + phone);
        System.out.println("gender: " + gender);
        System.out.println("address: " + address);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword)) {
                System.out.println("Connection successful!");

                String query = "UPDATE users SET firstName = ?, phone = ?, gender = ?, address = ? WHERE email = ?";
                System.out.println("SQL Query: " + query);

                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setString(1, firstName);
                    preparedStatement.setString(2, phone);
                    preparedStatement.setString(3, gender);
                    preparedStatement.setString(4, address);
                    preparedStatement.setString(5, email);

                    System.out.println("Executing SQL Query...");

                    int rowsAffected = preparedStatement.executeUpdate();
                    System.out.println("Rows affected: " + rowsAffected);

                    if (rowsAffected > 0) {
                        System.out.println("User details updated successfully.");

                        // Set the updated details in the session
                        HttpSession session = request.getSession();
                        session.setAttribute("firstName", firstName);
                        session.setAttribute("phone", phone);
                        session.setAttribute("gender", gender);
                        session.setAttribute("address", address);

                        response.sendRedirect(request.getContextPath() + "/user_page.jsp");
                    } else {
                        System.out.println("Failed to update user details. No rows affected.");
                        System.out.println("Email from form: " + email);
                        response.getWriter().println("Failed to update user details. Please try again.");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error connecting to the database. Please try again.");
        }

    }
}






