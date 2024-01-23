package dao;

import db.JDBIConnector;
import model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    public static void main(String[] args) {
        for(User u : UserDAO.getAllUser()){
            System.out.println(u);
        }
    }
    public static List<User> getAllUser() {
        List<User> listR = new ArrayList<>();
        String query = "SELECT * FROM users";

        try {
            JDBIConnector.me().withHandle(handle -> handle.createQuery(query).map((rs, ctx) -> {
                User user = new User();
                user.setUserID(rs.getInt("userId"));
                if (rs.getInt("role") == 1) {
                    user.setRole("Quản Trị Viên");
                } else user.setRole("Người Dùng");
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setGender(rs.getString("gender"));
                user.setFirstName(rs.getString("firstName"));
                if(rs.getString("lastName") != null){
                    user.setLastName(rs.getString("lastName"));
                } else user.setLastName("");
                listR.add(user);
                return user;
            }).list());
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return listR;
    }
}
