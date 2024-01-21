<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Đặt lại mật khẩu</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="WebProject/asset/css/register_styles.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <title>Đổi mật khẩu</title>
</head>
<body>
<header>
    <jsp:include page="/WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="sign-up-form">
            <form action="changePassword" method="POST">
                <h1>ĐỔI MẬT KHẨU</h1>

                <% String successMessage = (String)request.getAttribute("changePasswordSuccess"); %>
                <% if (successMessage != null) { %>
                <div style="color: green;"> <%= successMessage %> </div>
                <% } %>

                <div class="input-box">
                    <label for="password">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong>Mật khẩu</strong>
                    </label>
                    <input type="password" name="oldPassword" id="oldPassword" placeholder="Nhập mật khẩu..." required>
                    <!-- Add password strength indicator here if needed -->
                </div>

                <div class="input-box">
                    <label for="password">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong>Mật khẩu mới</strong>
                    </label>
                    <input type="password" name="newPassword" id="Password" placeholder="Mật khẩu mới..." required>
                    <!-- Add password strength indicator here if needed -->
                </div>
                <div class="input-box">
                    <label for="confirmPassword">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong>Nhập lại mật khẩu</strong>
                    </label>
                    <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Nhập lại mật khẩu..." required>
                </div>
                <button type="submit" class="btn" id="registerButton">Đổi mật khẩu</button>
            </form>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="/WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>