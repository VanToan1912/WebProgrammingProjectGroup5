package controller;

import bean.Product;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/products")
public class ProductController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy trang hiện tại
        String indexPage = req.getParameter("index");
        int index = (indexPage != null) ? Integer.parseInt(indexPage) : 1;

        // Lấy danh mục nếu có
        String category = req.getParameter("category");

        ProductService productService = ProductService.getInstance();

        try {
            List<Product> productList;
            int totalProduct;

            if (category != null && !category.equals("null")) {
                // Nếu có tham số category, lấy sản phẩm theo danh mục và phân trang
                productList = productService.pagingProductByCategory(index, category);
                totalProduct = productService.getTotalProductByCategory(category);
                // Đặt thuộc tính category để sử dụng trong JSP
                req.setAttribute("category", category);
            } else {
                // Nếu không có tham số category hoặc có giá trị "null", lấy tất cả sản phẩm và phân trang
                productList = productService.pagingProduct(index, null);
                totalProduct = productService.getTotalProduct();
            }

            // Tính tổng số trang
            int totalPages = (int) Math.ceil((double) totalProduct / 12);

            // Đặt các thuộc tính cho request để sử dụng trong JSP
            req.setAttribute("productList", productList);
            req.setAttribute("currentPage", index);
            req.setAttribute("totalPages", totalPages); // Replace totalPages with the actual value

            // Forward request đến trang JSP để hiển thị danh sách sản phẩm và phân trang
            req.getRequestDispatcher("/WebProject/product.jsp").forward(req, resp);


        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            System.err.println("Lỗi khi xử lý request: " + e.getMessage());
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
