<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cây giống Sài Gòn - Đăng ký</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <meta charset="UTF-8">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="WebProject/asset/css/register_styles.css">

    <title>Đăng ký</title>
</head>
<body>
<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="sign-up-form">

            <script>
                function validateForm() {
                    var email = document.getElementById("email").value;
                    var password = document.getElementById("password").value;
                    var confirmPassword = document.getElementById("password-confirm").value;
                    var acceptTerms = document.getElementById("accept-terms").checked;

                    // Simple email validation (you can replace it with a more robust solution)
                    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (!emailRegex.test(email)) {
                        alert("Invalid email format");
                        return false;
                    }

                    // Simple password validation (you can replace it with a more robust solution)
                    if (password.length < 6) {
                        alert("Password must be at least 6 characters long");
                        return false;
                    }

                    // Check if passwords match
                    if (password !== confirmPassword) {
                        alert("Passwords does not match");
                        return false;
                    }

                    // Check if terms are accepted
                    if (!acceptTerms) {
                        alert("Please accept the terms and conditions");
                        return false;
                    }

                    return true; // Form is valid, submit to the backend
                }
            </script>

            <form action="registerServlet" method="POST" onclick="validateForm()">
                <h1>ĐĂNG KÍ TÀI KHOẢN</h1>

                <div class="input-box">
                    <label for="email">
                        <span class="icon"><i class="far fa-envelope"></i></span>
                        <strong>Email</strong>
                    </label>
                    <input type="email" name="email" id="email" placeholder="Nhập email..." required>
                </div>

                <div class="input-box">
                    <label for="password">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong>Mật khẩu</strong>
                    </label>
                    <input type="password" name="password" id="password" placeholder="Nhập mật khẩu..." required>
                    <!-- Add password strength indicator here if needed -->
                </div>

                <div class="input-box">
                    <label for="confirmPassword">
                        <span class="icon"><i class="fas fa-key"></i></span>
                        <strong>Nhập lại mật khẩu</strong>
                    </label>
                    <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Nhập lại mật khẩu..." required>
                </div>

                <div class="input-remember-checkbox">
                    <label>
                        <input type="checkbox" id="accept-terms">Tôi đã đọc và chấp nhận <a href="WebProject/terms-page.jsp">điều khoản</a>
                    </label>
                </div>

                <button type="submit" class="btn" id="registerButton">Đăng ký</button>

                <div class="login-register">
                    <p>Đã có tài khoản? <a href="login.jsp">Đăng nhập</a></p>
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
                <li><a href="introduce.jsp">Giới Thiệu</a></li>
                <li><a href="WebProject/product.html">Sản Phẩm</a></li>
                <li><a href="WebProject/instruct.html">Hướng Dẫn Mua Hàng</a></li>
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
                </a>
                <a href="#" class="tooltip ti-mobile">
                    <span class="tooltiptext">0929729120</span></a>
                </a>
                <a href="mailto:mail@mail.com" class="tooltip ti-email">
                    <span class="tooltiptext">Đóng Góp Ý Kiến</span></a>
                </a>
            </nav>
        </div>
    </div>
</footer>
<%--<script>--%>
<%--    document.getElementById("registerButton").addEventListener("click", function () {--%>
<%--    // Hiển thị thông báo--%>
<%--    alert("Bạn đã đăng ký thành công!");--%>

<%--    // Chờ 2 giây trước khi chuyển hướng--%>
<%--    setTimeout(function () {--%>
<%--        window.location.href = "index.html"; // Chuyển hướng về trang chủ--%>
<%--    }, 2000); // 2 giây--%>
<%--});--%>

<%--</script>--%>

</body>
</html>
