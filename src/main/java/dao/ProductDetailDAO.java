package dao;

import bean.ProductDetail;
import db.JDBIConnector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDetailDAO {

    public static List<ProductDetail> getAllProductDetail() {
        String query = "SELECT product_detail.pdDetailId, product_detail.pdId, product_detail.title, " +
                "product_detail.content, product_detail.morphologyDescription, " +
                "product_detail.utilityDescription, product_detail.plantingCareDescription, " +
                "images.imgUrl " +
                "FROM product_detail " +
                "LEFT JOIN images ON product_detail.pdId = images.pdId";

        List<ProductDetail> list;
        try {
            list = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .map((rs, ctx) -> {
                                ProductDetail productDetail = new ProductDetail();
                                productDetail.setPdDetailId(rs.getInt("pdDetailId"));
                                productDetail.setPdId(rs.getInt("pdId"));
                                productDetail.setTitle(rs.getString("title"));
                                productDetail.setContent(rs.getString("content"));
                                productDetail.setMorphologyDescription(rs.getString("morphologyDescription"));
                                productDetail.setUtilityDescription(rs.getString("utilityDescription"));
                                productDetail.setPlantingCareDescription(rs.getString("plantingCareDescription"));

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (productDetail.getImageUrls() == null) {
                                    productDetail.setImageUrls(new ArrayList<>());
                                }
                                if (imgUrl != null) {
                                    productDetail.getImageUrls().add(imgUrl);
                                }

                                return productDetail;
                            })
                            .list()
            );
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách chi tiết sản phẩm: " + e.getMessage());
            throw e;
        }
        return list;
    }

    public static ProductDetail getProductDetailByPdId(int pdId) {
        String query = "SELECT product_detail.pdDetailId, product_detail.pdId, title, content, morphologyDescription, " +
                "utilityDescription, plantingCareDescription, imgUrl " +
                "FROM product_detail " +
                "LEFT JOIN images ON product_detail.pdId = images.pdId " +
                "WHERE product_detail.pdId = :pdId";

        try {
            Map<Integer, ProductDetail> productDetailMap = JDBIConnector.me().withHandle(handle ->
                    handle.createQuery(query)
                            .bind("pdId", pdId)
                            .reduceResultSet(new HashMap<Integer, ProductDetail>(), (map, rs, ctx) -> {
                                int currentPdDetailId = rs.getInt("pdDetailId");
                                ProductDetail productDetail = map.get(currentPdDetailId);

                                if (productDetail == null) {
                                    productDetail = new ProductDetail();
                                    productDetail.setPdDetailId(currentPdDetailId);
                                    productDetail.setPdId(pdId);
                                    productDetail.setTitle(rs.getString("title"));
                                    productDetail.setContent(rs.getString("content"));
                                    productDetail.setMorphologyDescription(rs.getString("morphologyDescription"));
                                    productDetail.setUtilityDescription(rs.getString("utilityDescription"));
                                    productDetail.setPlantingCareDescription(rs.getString("plantingCareDescription"));
                                    productDetail.setImageUrls(new ArrayList<>());
                                }

                                // Thêm ảnh vào danh sách
                                String imgUrl = rs.getString("imgUrl");
                                if (imgUrl != null) {
                                    productDetail.getImageUrls().add(imgUrl);
                                }

                                map.put(currentPdDetailId, productDetail);
                                return map;
                            })
            );

            List<ProductDetail> productDetails = new ArrayList<>(productDetailMap.values());
            if (productDetails.size() > 1) {
                throw new IllegalStateException("Found multiple elements for pdId: " + pdId);
            }

            return productDetails.isEmpty() ? null : productDetails.get(0);

        } catch (Exception e) {
            System.err.println("Lỗi khi lấy chi tiết sản phẩm theo pdId: " + e.getMessage());
            throw e;
        }
    }


    public static void main(String[] args) {
        // Test lấy danh sách chi tiết sản phẩm
        List<ProductDetail> productDetailList = getAllProductDetail();

        // In thông tin chi tiết sản phẩm
        System.out.println("Danh sách chi tiết sản phẩm:");
        for (ProductDetail productDetail : productDetailList) {
            System.out.println(productDetail);
        }

        // Test lấy chi tiết sản phẩm theo ID
        int pdDetailId = 1; // Thay đổi ID tùy vào dữ liệu thực tế
        ProductDetail productDetailById =  getProductDetailByPdId(pdDetailId);

        // In thông tin chi tiết sản phẩm theo ID
        System.out.println("Chi tiết sản phẩm theo ID " + pdDetailId + ":");
        System.out.println(productDetailById);
    }
}
