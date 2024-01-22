<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duyen
  Date: 1/14/2024
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%--                            /--%>
<%--                            <a href="${pageContext.request.contextPath}/AdminSite/index-admin.jsp">Admin</a>--%>
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
                                    <a href="${pageContext.request.contextPath}/user_page.jsp">Profile</a>
                                    <a href="${pageContext.request.contextPath}/logoutServlet">Logout</a>
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
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="logo" class="logo "></a>
        </div>


    </div>

</header>

</body>
</html>
