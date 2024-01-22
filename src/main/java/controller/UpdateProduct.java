//package controller;
//
//import bean.Product;
//import dao.ProductDAO;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.*;
//
//import java.io.IOException;
//
//@WebServlet("/UpdateProduct")
//public class UpdateProduct extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Retrieve form data
//        int productId = Integer.parseInt(request.getParameter("productId"));
//        String productName = request.getParameter("productName");
//        String categories = request.getParameter("categories");
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//        double price = Double.parseDouble(request.getParameter("price"));
//
//        // Create a Product object with updated details
//        Product updatedProduct = new Product(productId, productName, categories, quantity, price, null);
//
//        // Update the product in the database using ProductDAO
//        boolean success = ProductDAO.updateProduct(updatedProduct);
//
//        // Redirect back to the edit-product.jsp with a success or error message
//        if (success) {
//            response.sendRedirect("../AdminSite/product/edit-product.jsp?productId=" + productId + "&success=true");
//            request.setAttribute("updatedProduct", updatedProduct);
//            request.getRequestDispatcher("/edit-product.jsp").forward(request, response);
//        } else {
//            request.setAttribute("updatedProduct", updatedProduct);
//            request.getRequestDispatcher("/edit-product.jsp").forward(request, response);
//            response.sendRedirect("../AdminSite/product/edit-product.jsp?productId=" + productId + "&success=false");
//        }
//    }
//}
