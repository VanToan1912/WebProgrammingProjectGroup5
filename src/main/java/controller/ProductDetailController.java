package controller;

import bean.ProductDetail;
import service.ProductDetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "ProductDetailController", urlPatterns = "/product-detail")
public class ProductDetailController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy id sản phẩm từ tham số request
            String productIdParam = request.getParameter("id");

            // Kiểm tra xem tham số id có tồn tại và có giá trị hợp lệ không
            if (productIdParam == null || productIdParam.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
                return;
            }

            // Xử lý ngoại lệ khi chuyển đổi id từ chuỗi sang số nguyên
            int productId = Integer.parseInt(productIdParam);

            // Gọi service hoặc DAO để lấy thông tin chi tiết sản phẩm
            ProductDetail productDetail = ProductDetailService.getInstance().getProductDetailByPdId(productId);

            if (productDetail == null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                return;
            }

            // Đặt thông tin chi tiết sản phẩm vào request để sử dụng trong JSP
            request.setAttribute("productDetail", productDetail);

            // Forward đến trang product-detail.jsp
            request.getRequestDispatcher("./WebProject/View/product-detail.jsp").forward(request, response);
            System.out.println("ProductDetail: " + productDetail);


        } catch (NumberFormatException e) {
            // Xử lý ngoại lệ nếu id không phải là số nguyên
            e.printStackTrace(); // In ra stack trace để theo dõi lỗi trong console hoặc log
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID format");
        } catch (Exception e) {
            // Xử lý ngoại lệ khác nếu có
            e.printStackTrace(); // In ra stack trace để theo dõi lỗi trong console hoặc log
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal server error");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}


