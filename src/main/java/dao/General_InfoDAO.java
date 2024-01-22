package dao;


import bean.General_Info;
import db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;

public class General_InfoDAO {
    public static void main(String[] args) {
        General_Info g =General_InfoDAO.getAllInfo();
        System.out.println(g);
    }
    public static General_Info getAllInfo(){
        String querry = "SELECT * FROM general_info";
        General_Info gI = new General_Info();
        try {
            JDBIConnector.me().withHandle(handle -> handle.createQuery(querry).map((rs, ctx) -> {
                gI.setEmail(rs.getString("email"));
                gI.setFacebook(rs.getString("facebook"));
                gI.setPhone_number(rs.getString("phone_number"));
                gI.setAddress(rs.getString("address"));
                gI.setIntroduction(rs.getString("introduction"));
                gI.setSlieshow(rs.getString("slideshow"));

                return gI;
            }).list());
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return gI;
    }
}
