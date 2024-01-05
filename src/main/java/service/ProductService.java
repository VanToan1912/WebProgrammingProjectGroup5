package service;

import bean.Product;
import controller.ProductController;
import dao.ProductDAO;

import java.util.List;

public class ProductService {
    private static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null) instance = new ProductService();
        return instance;
    }

    public List<Product> getAll() {

//        return ProductDAO.getAllProduct();
        try {
            return ProductDAO.getAllProduct();
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            System.err.println("Lỗi khi lấy danh sách sản phẩm từ ProductService: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
    }
    public List<Product> getAllByCategory(String category) {
        try {
            return ProductDAO.getAllProductByCategory(category);
        } catch (Exception e) {
            System.err.println("Lỗi khi lấy danh sách sản phẩm từ ProductService: " + e.getMessage());
            throw e;
        }
    }
    public List<Product> pagingProductByCategory(int pageIndex, String category) {
        return ProductDAO.pagingProductByCategory(pageIndex, category);
    }
    public int getTotalProductByCategory(String category) {
        return ProductDAO.getTotalProductByCategory(category);
    }

    public int getTotalProduct() {
        try {
            return ProductDAO.getTotalProduct();
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            System.err.println("Lỗi khi lấy tổng số sản phẩm từ ProductService: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
    }

    public List<Product> pagingProduct(int pageIndex, String category) {
        try {
            if (category == null || category.trim().isEmpty()) {
                // Nếu category là null hoặc trống, lấy tất cả sản phẩm và phân trang
                return ProductDAO.pagingProduct(pageIndex);
            } else {
                // Nếu có tham số category, lấy sản phẩm theo danh mục và phân trang
                return ProductDAO.pagingProductByCategory(pageIndex, category);
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            System.err.println("Lỗi khi phân trang sản phẩm từ ProductService: " + e.getMessage());
            throw e; // hoặc xử lý lỗi tùy theo yêu cầu của bạn
        }
    }





    public static void main(String[] args) {
        ProductService productService = ProductService.getInstance();

        try {
            // Gọi phương thức getAll để lấy danh sách sản phẩm
            List<Product> productList = productService.getAll();

            // In thông tin về sản phẩm
            System.out.println("Danh sách sản phẩm:");
            for (Product product : productList) {
                System.out.println(product);
            }

            // Gọi phương thức getTotalProduct để lấy tổng số sản phẩm
            int totalProduct = productService.getTotalProduct();

            // In thông tin về tổng số sản phẩm
            System.out.println("Tổng số sản phẩm: " + totalProduct);

            // Gọi phương thức pagingProduct để lấy danh sách sản phẩm theo trang
            int pageIndex = 0;
//            List<Product> pagedProductList = productService.pagingProduct(pageIndex);

            // In thông tin về sản phẩm trang đầu tiên
//            System.out.println("Danh sách sản phẩm trang " + (pageIndex + 1) + ":");
//            for (Product product : pagedProductList) {
//                System.out.println(product);
//            }

        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            e.printStackTrace();
        }
    }
}

