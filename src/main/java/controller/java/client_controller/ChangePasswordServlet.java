package controller.java.client_controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/changePassword")
public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validate the form inputs (you may want to add more validation)
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("passwordNotMatch", "Mật khẩu mới không khớp, vui lòng kiểm tra lại!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/change_password.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Get the current user's information from the session (assuming you store user details in the session)
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("email") == null) {
            // User not logged in
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        String userEmail = (String) session.getAttribute("email");

        // Implement your logic for authenticating the user based on email and old password
        if (!authenticateUser(userEmail, oldPassword)) {
            request.setAttribute("wrongPass", "Sai mật khẩu cũ, vui lòng kiểm tra lại");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/change_password.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Implement your logic for updating the user's password based on email
        if (updatePassword(userEmail, newPassword)) {
            request.setAttribute("changePasswordSuccess", "Đổi mật khẩu thành công");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/change_password.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("changePasswordFail", "Đổi mật khẩu thất bại");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/change_password.jsp");
            dispatcher.forward(request, response);
        }
    }

    // Example method for authenticating the user based on email and old password
    private boolean authenticateUser(String email, String oldPassword) {
        // Fetch the stored plaintext password for the given email from the database
        String storedPassword = getStoredPasswordFromDatabase(email);

        // If the stored plaintext password is null (user not found), authentication fails
        if (storedPassword == null) {
            return false;
        }

        // Compare the plaintext old password with the stored plaintext password
        return oldPassword.equals(storedPassword);
    }

    // Example method to fetch the stored plaintext password from the database
    private String getStoredPasswordFromDatabase(String email) {
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/caygiongnonglam";
        String username = "root";
        String password = "";

        // SQL query to fetch the plaintext password based on email
        String sql = "SELECT pass FROM users WHERE email = ?";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, email);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    // Return the stored plaintext password
                    return resultSet.getString("pass");
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            // Log the exception and handle it appropriately
        }

        // Return null if user not found or an error occurs
        return null;
    }

    // Example method for updating the user's password based on email
    private boolean updatePassword(String email, String newPassword) {
        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/caygiongnonglam";
        String username = "root";
        String password = "";

        // SQL update statement
        String sql = "UPDATE users SET pass = ? WHERE email = ?";

        try (Connection connection = DriverManager.getConnection(url, username, password);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, newPassword);
            statement.setString(2, email);

            int rowsAffected = statement.executeUpdate();

            // Return true if the password is successfully updated
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            // Log the exception and handle it appropriately
            return false;
        }
    }
}
