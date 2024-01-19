<%@ page import="java.util.List" %>
<%@ page import="bean.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.ProductDetail" %>

<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/2/2023
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Other imports and HTML code --%>

<%
  List<Product> productList = (List<Product>) request.getAttribute("productList");
  if (productList == null) {
    productList = new ArrayList<>(); // Hoặc xử lý trường hợp null tùy theo yêu cầu của bạn
  }
  String category = (String) request.getAttribute("category");
  int currentPage = (int) request.getAttribute("currentPage");
  int totalPages;

  if (category != null && !category.equals("null")) {
    totalPages = (request.getAttribute("totalPagesByCategory") != null) ?
            (int) request.getAttribute("totalPagesByCategory") :
            (int) request.getAttribute("totalPages");
  } else {
    totalPages = (int) request.getAttribute("totalPages");
  }

%>

<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Cây giống Sài Gòn</title>
  <link rel="icon" href="../asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/head-foot.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/product.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/fonts/themify-icons/themify-icons.css">
</head>

<body>

<div id="product" style="">
  <header>
    <jsp:include page="../header/header-level1.jsp"></jsp:include>
  </header>

  <div id="main">
    <h3 class="text-product text-blue mg-left">CÂY ĂN TRÁI</h3>
    <div class="order-by">
      <p class="text-order-by">Hiển thị 1–12 của 27 kết quả</p>
      <div class="select_st">
        <select name="" class="menu-order-by">
          <option value="">Thứ tự mặc định</option>
          <option value="">Thứ tự theo mức độ phổ biến</option>
          <option value="">Mới nhất</option>
          <option value="">Thứ tự theo giá: thấp đến cao</option>
          <option value="">Thứ tự theo giá: cao đến thấp</option>
        </select>
      </div>
    </div>
    <div class="addr-current mg-left">
      <a href="index.html" class="link-index text-gray fs-18">
        <p>TRANG CHỦ</p>
      </a>
      <div class="product text-gray fs-18">/ SẢN PHẨM /</div>
      <p class="addr-current-product">CÂY ĂN TRÁI</p>
    </div>
    <div class="content-product">
      <div class="head-product">
        <div class="text-menu-product mg-left">DANH MỤC SẢN PHẨM</div>
        <div class="line mg-left"></div>
        <div class="list-menu-product mg-left">
          <div class="menu-product">
            <a href="products?category=CAY-AN-TRAI" id="category_antrai" class="<%= (category == null || category.equals("CAY_AN_TRAI")) ? "active" : "" %>">
              <b>CÂY ĂN TRÁI</b>
            </a>
          </div>
          <div class="menu-product">
            <a href="products?category=CAY-BONSAI" id="category_bonsai" class="<%= (category != null && category.equals("CAY-B0NSAI")) ? "active" : "" %>">
              CÂY BONSAI
            </a>
          </div>                    <div class="menu-product"><a href="#" id="category-canh">CÂY CẢNH</a></div>
          <div class="menu-product"><a href="products?category=CAY-CO-HOA">CÂY CÓ HOA</a></div>
          <div class="menu-product"><a href="#">CÂY ĐỘC LẠ-HIẾM</a></div>
          <div class="menu-product"><a href="#">CÂY GIA VỊ</a></div>
          <div class="menu-product"><a href="#">CÂY GIỐNG</a></div>
          <div class="menu-product"><a href="#">CÂY HOA LEO</a></div>
          <div class="menu-product"><a href="#">CÂY LỚN</a></div>
          <div class="menu-product"><a href="#">CỦ GIỐNG</a></div>
          <div class="menu-product"><a href="#">HOA LAN</a></div>
          <div class="menu-product"><a href="#">HOA LAN CÂY GIỐNG</a></div>
          <div class="menu-product"><a href="#">PHÂN BÓN-VẬT TƯ</a></div>
          <div class="menu-product"><a href="#">SẢN PHẨM KHUYẾN MÃI</a></div>
        </div>
      </div>
      <div id="page-container">
        <div class="container">
          <div class="row">
            <% int count = 0; %>
            <% for (Product product : productList) { %>
            <div class="col-third col">
              <!-- Các thông tin sản phẩm -->

              <% List<String> imageUrls = product.getImageUrls(); %>
              <% if (imageUrls != null && !imageUrls.isEmpty()) { %>
              <a href="<%= request.getContextPath() %>/product-detail?id=<%= product.getPdid()%>">
                <img class="size-img img-product" src="<%= imageUrls.get(0) %>" alt="">
              </a>

              <% } else { %>
              <%-- Nếu không có hình ảnh, có thể hiển thị một hình ảnh mặc định hoặc thông báo thiếu hình ảnh --%>
              <img class="size-img img-product" src="path_to_default_image.jpg" alt="No Image">
              <% } %>

              <p class="text-sale back-orange">Giảm giá!</p>
              <p class="text-review review">XEM NHANH</p>
              <p class="name-product"><%= product.getPdname() %></p>
              <div class="price">
                <p class="price-initial text-gray"><%= product.getPrice() %>đ</p>
              </div>

              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <% count++; %>
            <% if (count == 3) { %>
          </div>
          <div class="row">
            <% count = 0; %>
            <% } %>
            <% } %>

          </div>
        </div>
        <div class="list-btn">
          <nav aria-label="Page navigation example">
            <ul class="pagination">
              <%-- Hiển thị nút Previous nếu không phải trang đầu tiên --%>
              <li class="page-item <%=(currentPage == 1) ? "disabled" : "" %>">
                <a class="page-link" <% if (currentPage != 1) { %>href="?index=<%= currentPage - 1 %>&category=<%= category %>"<% } %> aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>

              <%-- Hiển thị các trang --%>
              <% for (int i = 1; i <= totalPages; i++) { %>
              <li class="page-item <%=(i == currentPage) ? "active" : "" %>">
                <a class="page-link" href="?index=<%= i %>&category=<%= category %>"><%= i %></a>
              </li>
              <% } %>

              <%-- Hiển thị nút Next nếu không phải trang cuối cùng --%>
              <li class="page-item <%=(currentPage == totalPages) ? "disabled" : "" %>">
                <a class="page-link" <% if (currentPage != totalPages) { %>href="?index=<%= currentPage + 1 %>&category=<%= category %>"<% } %> aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>
            </ul>
          </nav>
        </div>

      </div>

    </div>

  </div>

  <footer>
    <jsp:include page="../footer/footer-level1.jsp"></jsp:include>
  </footer>
</div>

</body>
