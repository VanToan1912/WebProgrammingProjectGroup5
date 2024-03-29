<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/2/2023
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="controller.Cart" %>

<%

//  HttpSession sessiona = (HttpSession) request.getSession();
//  HttpSession sessiona = (HttpSession) request.getSession(true);
  jakarta.servlet.http.HttpSession sessiona = request.getSession(true);

  int numberOfItems = 0;
  if (sessiona != null) {
    Cart cart = (Cart) sessiona.getAttribute("cart");
    numberOfItems = (cart != null) ? cart.getNumberOfItems() : 0;

  }
%>
<html>
<head>
  <meta charset="UTF-8">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/logged-in-header-style.css">
</head>
<body>
<header id="header">
  <div class="nav-bar top-bar">
    <div class="web-name mg-left" style="font-weight: bold">Trung Tâm Cây Giống Sài Gòn</div>
    <nav class="list-contact-infor">
      <ul>
        <li>
          <div class="contact-infor">
            <i class="ti-help"></i>
            <p class="tooltip">Hỗ trợ
              <span class="tooltiptext">Hỗ trợ</span>
            </p>
          </div>
        </li>
        <li>
          <a href="#" class="tooltip ti-time"> 8:00 - 17:00
            <span class="tooltiptext">8:00 - 17:00</span></a>
        </li>
        <li>
          <a href="#" class="tooltip ti-mobile"> 0929729120
            <span class="tooltiptext">0929729120</span></a>
        </li>
        <li>
          <a href="#" class="tooltip ti-facebook">
            <span class="tooltiptext">Theo dõi chúng tôi</span>
          </a>
        </li>
        <li>
          <a href="mailto:mail@mail.com" class="tooltip ti-email">
            <span class="tooltiptext">Đóng góp ý kiến</span>
          </a>
        </li>

        <!-- Conditionally show buttons based on user login status -->
        <c:choose>
          <c:when test="${empty sessionScope.email}">
            <!-- User is not logged in -->
            <li>
              <a href="${pageContext.request.contextPath}/register.jsp">
                <button class="sign-up-button">Đăng Ký</button>
              </a>
              /
              <a href="${pageContext.request.contextPath}/login.jsp">
                <button class="login-button">Đăng Nhập</button>
              </a>
<%--              /--%>
<%--              <a href="${pageContext.request.contextPath}/AdminSite/index-admin.jsp">Admin</a>--%>
            </li>
          </c:when>
          <c:otherwise>
            <!-- User is logged in -->
            <li>
              <!-- Display the user's email with dropdown menu -->
              <div class="dropdown">
                <span>Welcome, ${sessionScope.email}!</span>
                <!-- Display the narrow down icon next to the email -->
                <span class="narrow-down-icon"></span>
                <div class="dropdown-content">
                  <a href="${pageContext.request.contextPath}/user_page.jsp">Hồ sơ</a>
                  <a href="logoutServlet">Đăng xuất</a>
                </div>
              </div>
            </li>
          </c:otherwise>
        </c:choose>
      </ul>
    </nav>
  </div>


  <div class="nav-bar middle-bar row-head ">
    <div class="col-head mg-left">
      <a href=""><img src="${pageContext.request.contextPath}/WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="logo" class="logo "></a>
    </div>
    <div class="col-head">
      <form>
        <label>
          <input placeholder="Tìm kiếm...">
        </label>
        <button type="submit" class="search-button"><i class="ti ti-search"></i></button>
      </form>
    </div>
    <a href="add-cart">
      <div class="col-head">
        <button class="cart-button">
          <i class="ti-shopping-cart"><%=numberOfItems%> sản phẩm</i>
        </button>
      </div>
    </a>


  </div>
  <!-- BEGIN NAV -->
  <ul id="nav" class="back-dark-green">
    <li>
      <a href="#" id="toggle-products">
        <i class="nav-menu ti-menu"></i>
        DANH MỤC SẢN PHẨM

      </a>
      <ul class="sub-nav">
        <li><a href="product.html">
          <i class="ti-control-play"></i>
          CÂY ĂN TRÁI
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY CÓ HOA
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY HOA LEO
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY CÂY CẢNH
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY LỚN
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY ĐỘC LẠ - HIẾM
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY BONSAI
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          CÂY GIỐNG
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          HOA LAN
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          HOA LAN CÂY GIỐNG
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          PHÂN BÓN-VẬT TƯ
        </a></li>
        <li><a href="#">
          <i class="ti-control-play"></i>
          SẢN PHẨM KHUYẾN MÃI
        </a></li>
      </ul>
    </li>
    <li class="nav-text-product nav-togethger"><a href="index.jsp">TRANG CHỦ</a></li>
    <li class="nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/introduce.jsp" class="nav-togethger">GIỚI THIỆU</a></li>
    <li class=" nav-togethger"><a href="products">SẢN PHẨM</a></li>
    <li class="nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/instruct.jsp">HƯỚNG DẪN MUA HÀNG</a></li>
    <li class="nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/news.jsp">TIN TỨC</a></li>
  </ul>
  <!-- END NAV -->
  <div class="clear"></div>
</header>

</body>
</html>
