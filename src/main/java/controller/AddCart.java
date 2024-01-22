package controller;

import bean.Product;
import dao.ProductDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddCartServlet", urlPatterns = "/add-cart")
public class AddCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart == null) {
                cart = new Cart();
            }

            String productIdString = req.getParameter("id");

            if (productIdString != null && !productIdString.isEmpty()) {
                try {
                    int id = Integer.parseInt(productIdString);

                    // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng hay chưa
                    CartProduct existingProduct = cart.getProductById(id);

                    if (existingProduct != null) {
                        // Sản phẩm đã tồn tại, chỉ cần cập nhật số lượng
                        existingProduct.setquantity(existingProduct.getQuantity() + 1);
                    } else {
                        // Sản phẩm chưa tồn tại, thêm mới vào giỏ hàng
                        Product product = ProductDAO.getProductByPdID(id); // Thay thế bằng cách lấy sản phẩm từ cơ sở dữ liệu
                        cart.add(id, 1);
                    }

                    // Lưu giỏ hàng mới vào session
                    session.setAttribute("cart", cart);

                } catch (NumberFormatException e) {
                    // Xử lý ngoại lệ và gửi phản hồi
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID format");
                }
            }
        } catch (NumberFormatException e) {
            // Xử lý ngoại lệ (ví dụ: ghi log hoặc phản hồi với một thông báo lỗi)
            e.printStackTrace();
            // Có thể thêm phản hồi với thông báo lỗi
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID format");
        }

        // Chuyển hướng đến trang purchase.jsp sau khi thêm vào giỏ hàng
        req.getRequestDispatcher("./WebProject/View/purchase.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
