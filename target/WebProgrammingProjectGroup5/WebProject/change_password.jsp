<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Đặt lại mật khẩu</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="asset/css/register_styles.css">
    <link rel="stylesheet" href="asset/css/head-foot.css">
    <link rel="stylesheet" href="asset/fonts/themify-icons/themify-icons.css">
    <title>Đổi mật khẩu</title>
</head>
<body>
<header>
    <jsp:include page="/WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="sign-up-form">
            <form action="" id="change">
                <h1>THAY ĐỔI MẬT KHẨU</h1>
                <div class="input-box">
                    <label for="password">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong> Mật khẩu</strong>
                    </label>
                    <input type="password" name="password" id="oldPassword" placeholder="Nhập mật khẩu hiện tại..." required>
                    <!-- Add password strength indicator here if needed -->
                </div>

                <div class="input-box">
                    <label for="password">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong> Mật khẩu mới</strong>
                    </label>
                    <label for="Password"></label><input type="password" name="password" id="Password" placeholder="Nhập mật khẩu mới..." required>
                    <!-- Add password strength indicator here if needed -->
                </div>
                <div class="input-box">
                    <label for="confirmPassword">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong> Nhập lại mật khẩu</strong>
                    </label>
                    <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Nhập lại mật khẩu..." required>
                </div>
                <div class="btn-container">
                    <button type="submit" class="btn" onclick="changePassword()">Đổi mật khẩu</button>
                    <a href="${pageContext.request.contextPath}/user_page.jsp">
                        <button type="submit" class="btn" id="undoButton" onclick=" goBack()">Quay lại</button>
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>
<script>
    function changePassword() {
        // Add logic for changing password here
        alert('Đổi mật khẩu thành công.');
    }
    function goBack() {
        window.location.href = '${pageContext.request.contextPath}/user_page.jsp';

    }
</script>
<footer>
    <jsp:include page="/WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>
