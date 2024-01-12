package service;

import bean.ProductDetail;
import dao.ProductDetailDAO;

import java.util.Collections;
import java.util.List;

public class ProductDetailService {
    private static ProductDetailService instance;

    public static ProductDetailService getInstance() {
        if (instance == null) instance = new ProductDetailService();
        return instance;
    }

    public static List<ProductDetail> getAllProductDetail() {
        try {
            return ProductDetailDAO.getAllProductDetail();
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách chi tiết sản phẩm từ ProductDetailService: " + e.getMessage());
            throw e;
        }
    }

    public ProductDetail getProductDetailByPdId(int pdId) {
        try {
            return ProductDetailDAO.getProductDetailByPdId(pdId);
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy chi tiết sản phẩm theo pdId từ ProductDetailService: " + e.getMessage());
            throw e;
        }
    }

    public static void main(String[] args) {
        ProductDetailService productDetailService = ProductDetailService.getInstance();

        try {
            // Gọi phương thức getAllProductDetail để lấy danh sách chi tiết sản phẩm
            List<ProductDetail> productDetailList = productDetailService.getAllProductDetail();

            // In thông tin về chi tiết sản phẩm
            System.out.println("Danh sách chi tiết sản phẩm:");
            for (ProductDetail productDetail : productDetailList) {
                System.out.println(productDetail);
            }

            // Gọi phương thức getProductDetailByPdId để lấy chi tiết sản phẩm theo ID
            int pdId = 1; // Thay đổi ID tùy vào dữ liệu thực tế
            ProductDetail productDetailById = productDetailService.getProductDetailByPdId(pdId);

            // In thông tin chi tiết sản phẩm theo ID
            System.out.println("Chi tiết sản phẩm theo ID " + pdId + ":");
            System.out.println(productDetailById);

        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            e.printStackTrace();
        }
    }
}
