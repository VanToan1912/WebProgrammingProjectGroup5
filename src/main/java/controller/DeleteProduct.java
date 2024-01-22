//package controller;
//
//import java.io.*;
//
//import dao.ProductDAO;
//import jakarta.servlet.http.*;
//import jakarta.servlet.annotation.*;
//
//@WebServlet("/DeleteProduct-servlet")
//public class DeleteProduct extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        // Retrieve the productId from the request
//        int productId = Integer.parseInt(request.getParameter("productId"));
//
//        // Delete the product from the database using ProductDAO
//        boolean success = ProductDAO.deleteProduct(productId);
//
//        // Redirect back to the product list page with a success or error message
//        if (success) {
//            response.sendRedirect("product-list.jsp?deleteSuccess=true");
//        } else {
//            response.sendRedirect("product-list.jsp?deleteSuccess=false");
//        }
//    }
//}
