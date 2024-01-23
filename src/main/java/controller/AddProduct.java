package controller;

import java.io.*;

import bean.Product;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/AdminSite/product/AddProduct")
public class AddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve data from the request parameters
        String productName = request.getParameter("productName");
        String quanity = request.getParameter("quanity");
        String price = request.getParameter("price");
        // Retrieve other product details...

        // Create a Product object with the retrieved data
        Product newProduct = new Product();
        newProduct.setProductName(productName);
        newProduct.setQuanity(Integer.parseInt(quanity));
        newProduct.setPrice(Double.parseDouble(price));

        // Call the addProduct method in ProductDAO
        boolean success = ProductDAO.addProduct(newProduct);

        // Redirect back to the product list page with a success or error message
        if (success) {
            response.sendRedirect("/WebProgrammingProjectGroup5_war/AdminSite/product/manage-product.jsp");
        } else {
            response.sendRedirect("/WebProgrammingProjectGroup5_war/AdminSite/product/manage-product.jsp");
        }
    }
}
