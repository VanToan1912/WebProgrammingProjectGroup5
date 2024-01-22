package controller.java.client_controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Step 1: Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Step 2: Check for duplicate email
        if (isEmailDuplicate(email)) {
            out.println("Email đã đăng ký hoặc không đúng. Vui lòng nhập email khác.");
            return;
        }

        // Step 3: Continue with registration
        if (isValidPassword(password) && password.equals(confirmPassword)) {
            // Step 4: Hash the password (if needed)
//            String hashedPassword = hashPassword(password);

            // Step 5: Store user in the database (or perform other registration logic)
            if (registerUser(email, password)) {
                out.println("Đăng nhập thành công");
            }
            else {
                out.println("Đăng ký thất bại. Vui lòng thử lại. ");
            }

        } else {
            out.println("Invalid password format or passwords do not match.");
        }
    }

    private boolean isEmailDuplicate(String email) {
        // Implement database logic to check for duplicate email
        // Return true if the email already exists, false otherwise
        // You should use PreparedStatement to prevent SQL injection

        // Example using JDBC and MySQL
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/caygiongnonglam", "root", "123456");
            String query = "SELECT COUNT(*) FROM users WHERE email = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        int count = resultSet.getInt(1);
                        return count > 0; // If count > 0, email already exists
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Default to false in case of an error
    }

    private boolean isValidPassword(String password) {
        // Implement password validation logic (e.g., minimum length, complexity)
        // Return true if the password is valid, false otherwise
        return password.length() >= 6;
    }

    private String hashPassword(String password) {
        // Implement password hashing logic (e.g., using BCrypt)
        // Return the hashed password
        // Make sure to include a strong password hashing library in your project

        // Example using BCrypt
        String salt = BCrypt.gensalt();
        return BCrypt.hashpw(password, salt);
    }

    private boolean registerUser(String email, String password) {
        // Implement database logic to store user information
        // Return true if registration is successful, false otherwise
        // You should use PreparedStatement to prevent SQL injection

        // Example using JDBC and MySQL
        try {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace(); // Or handle the exception in a way that makes sense for your application
            }
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/caygiongnonglam", "root", "123456");
            String query = "INSERT INTO users (email, pass) VALUES (?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                int rowsAffected = preparedStatement.executeUpdate();
                return rowsAffected > 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}




