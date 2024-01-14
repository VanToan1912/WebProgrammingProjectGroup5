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

</head>
<body>
<header id="header">
    <div class="nav-bar top-bar ">
        <div class="web-name mg-left" style="font-weight: bold"> Trung Tâm Cây Giống Sài Gòn</div>
        <nav class="list-contact-infor ">
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
                        <span class="tooltiptext">Theo dõi chúng tôi</span></a>
                </li>
                <li>
                    <a href="mailto:mail@mail.com" class="tooltip ti-email">
                        <span class="tooltiptext">Đóng góp ý kiến</span></a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/WebProject/register.jsp">
                        <button class="sign-up-button">
                            Đăng Ký
                        </button>
                    </a>

                    /
                    <a href="${pageContext.request.contextPath}/WebProject/login.jsp"">
                    <button class="login-button">
                        Đăng Nhập
                    </button>
                    </a>
                    <a href="user_page.jsp" class="tooltip ti-user" id="userIcon" style="display: none;">
                        <span class="tooltiptext">Tài khoản của tôi</span></a>
                </li>

            </ul>
        </nav>
    </div>

    <div class="nav-bar middle-bar row-head ">
        <div class="col-head mg-left">
            <a href="index.html"><img src="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="logo" class="logo "></a>
        </div>


    </div>

</header>

</body>
</html>
