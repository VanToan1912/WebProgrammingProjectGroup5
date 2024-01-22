<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Cây giống Sài Gòn - Đặt lại mật khẩu</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="WebProject/asset/css/password_reset.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
  <title>Khôi phục mật khẩu</title>
</head>
<body>
<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
  <div class="container" id="container">
    <div class="password-reset-form">
      <form action="changePassword">
        <h1>Khôi phục mật khẩu</h1>
        <div class="input-box">
          <label><span class="icon"><i class="far fa-envelope"></i></span> <strong>Email</strong></label>
          <label for="email"></label><input type="email" placeholder="Nhập email..." id="email" required>
        </div>
        <div class="h" ><p>Gửi email khôi phục mật khẩu hoặc quay lại đăng nhập</p></div>
        <div class="button-container">
          <button type="submit" class="btn">Gửi đến Email</button>
          <button type="button" class="btn" onclick="window.location.href='login.jsp'">Quay lại đăng nhập</button>
        </div>
      </form>
    </div>
  </div>
</div>

<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>
