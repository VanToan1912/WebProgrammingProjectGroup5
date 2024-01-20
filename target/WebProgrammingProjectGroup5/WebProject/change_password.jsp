<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Đặt lại mật khẩu</title>
    <link rel="icon" href="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="asset/css/change-password.css">
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
        <div class="password-reset-form">
            <form action="#">
                <h1>Thay đổi mật khẩu</h1>
                <div class="input-box">
                    <label for="current-password"></label><input type="password" name="currentpass" placeholder="Nhập mật khẩu hiện tại..." id="current-password" required>
                    <label for="new-password"></label><input type="password" name="newpass" placeholder="Nhập mật khẩu mới..." id="new-password" required>
                    <label for="comfirm-password"></label><input type="password" name="compass" placeholder="Xác nhận lại mật khẩu mới..." id="comfirm-password" required>
                </div>
                <a href="#"></a>
                <div class="button-container">
                    <button type="submit" class="btn">Hủy</button>
                    <button type="button" class="btn" onclick="window.location.href='user_page.jsp'">Quay lại hồ sơ</button>
                </div>
            </form>
        </div>
    </div>
</div>
<footer>
    <jsp:include page="/WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>
