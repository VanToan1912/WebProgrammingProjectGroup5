package dao;


import db.JDBIConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PasswordResetDAO {
    private Connection connection;

    public PasswordResetDAO(Connection connection) {
        this.connection = connection;
    }
    //kiem tra xem email co ton tai hay chua
    public boolean isValidResetRequest(String email, String passcode) {
        try {
            String query = "SELECT * FROM reset_requests WHERE email = ? AND passcode = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, email);
                statement.setString(2, passcode);

                try (ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi email chưa tồn tại hoặc không đúng");
        }
    }

    public boolean resetPassword(String email, String newPassword) {
        try {
            String query = "UPDATE users SET password = ? WHERE email = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, newPassword);
                statement.setString(2, email);

                int rowsUpdated = statement.executeUpdate();
                return rowsUpdated > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("SAI MÃ XÁC NHẬN");
        }
    }
}
