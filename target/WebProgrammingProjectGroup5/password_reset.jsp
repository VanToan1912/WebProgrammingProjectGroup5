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

          <button type="submit" class="btn" ><a href="reset_passord.jsp"> Gửi đến Email </a> <button>
          <button type="button" class="btn" onclick="window.location.href='login.jsp'">Quay lại đăng nhập</button>
        </div>
      </form>
    </div>
  </div>
</div>

<footer>
    <div class="row-footer">
        <div class="col-footer">
            <img src="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="" class="logo-footer" width="75%">
        </div>
        <div class="col-footer">
            <h3>Giới Thiệu</h3>
            <p>Điểm đến lý tưởng cho những người yêu đam mê và đang tìm kiếm cây giống nông nghiệp chất lượng
                cao. Với
                mục tiêu hỗ trợ và nâng cao năng suất trong nông nghiệp.</p>
        </div>
        <div class="col-footer">
            <h3>Văn phòng</h3>
            <p>Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</p>
            <p class="email-id">nls@hcmuaf.edu.vn</p>
            <p>028-38974560</p>
        </div>
        <div class="col-footer">
            <h3>Thông Tin</h3>
            <ul>
                <li><a href="WebProject/index.html">Trang Chủ</a></li>
                <li><a href="WebProject/introduce.jsp">Giới Thiệu</a></li>
                <li><a href="WebProject/product.html">Sản Phẩm</a></li>
                <li><a href="WebProject/instruct.jsp">Hướng Dẫn Mua Hàng</a></li>
                <li><a href="WebProject/news.jsp">Tin Tức</a></li>

            </ul>
        </div>
        <div class="col-footer">
            <h3>Nhận Email Thông Báo</h3>
            <form>
                <i class="ti ti-email"></i>
                <label>
                    <input type="email" placeholder="Nhập email của bạn..." required>
                </label>
                <button type="submit"><i class="ti ti-arrow-right"></i></button>
            </form>
            <nav class="socials">
                <a href="#" class="tooltip ti-facebook">
                    <span class="tooltiptext">Theo Dõi Chúng Tôi</span></a>
                <a href="#" class="tooltip ti-mobile">
                    <span class="tooltiptext">0929729120</span></a>
                <a href="mailto:mail@mail.com" class="tooltip ti-email">
                    <span class="tooltiptext">Đóng Góp Ý Kiến</span></a>
            </nav>
        </div>
    </div>
</footer>
</body>
</html>
