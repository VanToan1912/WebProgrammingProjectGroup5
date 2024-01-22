package controller.java.client_controller;

import java.io.*;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/caygiongnonglam";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "123456";

    private static final String SESSION_EMAIL_ATTRIBUTE = "email";

    private Connection connection;

    public void init() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        try {
            if (this.connection != null && !this.connection.isClosed()) {
                this.connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        if (validateUser(email, password)) {
//            int userRole = getUserRole(email);
//
//            HttpSession httpSession = request.getSession();
//            httpSession.setAttribute(SESSION_EMAIL_ATTRIBUTE, email);
//
//            if (userRole == 1) {
//                response.sendRedirect("index");
//            } else {
//                response.sendRedirect("index.jsp");
//            }
//        } else {
//            request.setAttribute("error", "Sai thông tin đăng nhập, vui lòng thử lại!");
//            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
//            dispatcher.forward(request, response);
//        }
//    }
//
    private int getUserRole(String email) {
        try {
            if (this.connection != null) {
                String query = "SELECT role FROM users WHERE email = ?";
                try (PreparedStatement preparedStatement = this.connection.prepareStatement(query)) {
                    preparedStatement.setString(1, email);
                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            return resultSet.getInt("role");
                        }
                    }
                }
            } else {
                System.err.println("Connection is not initialized.");
                return -1; // Return an invalid role value in case of an error
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1; // Return an invalid role value in case of an error
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (validateUser(email, password)) {
            int userRole = getUserRole(email);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute(SESSION_EMAIL_ATTRIBUTE, email);
            if (userRole == 1) {
                // Redirect to admin.jsp if user has role=1
                response.sendRedirect("AdminSite/index-admin.jsp");
            } else {
                // Redirect to index.jsp for other roles
                response.sendRedirect("index.jsp");
            }
        } else {
            request.setAttribute("error", "Sai thông tin đăng nhập, vui lòng thử lại!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
    }

    private boolean validateUser(String email, String password) {
        try {
            if (this.connection != null) {
                String query = "SELECT * FROM users WHERE email = ? AND pass = ?";
                try (PreparedStatement preparedStatement = this.connection.prepareStatement(query)) {
                    preparedStatement.setString(1, email);
                    preparedStatement.setString(2, password);
                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        return resultSet.next();
                    }
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



