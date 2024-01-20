package dao;

import bean.AdProduct;
import bean.Product;
import db.JDBIConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdProdDAO {
    public static void main(String[] args) {
        List<AdProduct> listP = new AdProdDAO().getAllProduct();
        for (AdProduct p : listP) {
            System.out.println(p);
        }
    }

    public List<AdProduct> getAllProduct() {
        List<AdProduct> listP = new ArrayList<>();
        Map<Integer, AdProduct> productMap = new HashMap<>();
        String query = "SELECT * FROM products";

        try {
            JDBIConnector.me().withHandle(handle -> handle.createQuery(query).map((rs, ctx) -> {
                                int productId = rs.getInt("productId");

                                AdProduct product;
                                if (productMap.containsKey(productId)) {
                                    // Nếu sản phẩm đã tồn tại trong map, lấy nó ra
                                    product = productMap.get(productId);
                                } else {
                                    // Nếu sản phẩm chưa tồn tại trong map, tạo mới và thêm vào map
                                    product = new AdProduct();
                                    product.setProductId(rs.getInt("productId"));
                                    product.setProductName(rs.getString("productName"));
                                    product.setCategorieId(rs.getInt("categorieId"));
                                    product.setQuanity(rs.getInt("quanity"));
                                    product.setPrice(rs.getDouble("price"));
//                                    product.setImageUrls(new ArrayList<>());

                                    productMap.put(productId, product);
                                    listP.add(product);
                                }

                                // Thêm ảnh vào danh sách
//                                String imgUrl = rs.getString("imgUrl");
//                                if (imgUrl != null) {
//                                    product.getImageUrls().add(imgUrl);
//                                }

                                return product;
                            })
                            .list()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách tất cả sản phẩm: " + e.getMessage());
            throw e;
        }
        return listP;
    }
}
