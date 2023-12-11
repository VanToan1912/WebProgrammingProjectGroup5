package dao;

import db.JDBIConnector;
import model.Product;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.util.List;

public class Test {

    public static List<Product> getAllProduct() {
        String query = "SELECT * FROM products";
        List<Product> list;
        try {
            list = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query).map((ResultSet rs, StatementContext ctx) -> {
                        Product p = new Product();
                        p.setId(rs.getInt("pdId"));
                        p.setName(rs.getString("pdName"));
                        p.setCategories(rs.getString("categories"));
                        p.setQuantity(rs.getInt("quanity"));
                        p.setPrice(rs.getDouble("price"));
                        p.setDescription(rs.getString("description"));
                        return p;
                    }).list()
            );
        } catch (Exception e) {
            // Xử lý exception nếu có
            System.err.println("Lỗi khi lấy danh sách sản phẩm: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
        return list;
    }



    public static void main(String[] args) {
        System.out.println(Test.getAllProduct());
    }

}
