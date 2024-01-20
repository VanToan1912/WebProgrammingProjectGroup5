package service;

import bean.AdProduct;
import bean.Product;
import dao.AdProdDAO;
import dao.ProductDAO;

import java.util.List;

public class AdProdService {
    private static AdProdService instance;
    public static AdProdService getInstance() {
        if (instance == null) instance = new AdProdService();
        return instance;
    }

    public List<AdProduct> getAll() {

//        return ProductDAO.getAllProduct();
        try {
            return new AdProdDAO().getAllProduct();
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            System.err.println("Lỗi khi lấy danh sách sản phẩm từ ProductService: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
    }
}
