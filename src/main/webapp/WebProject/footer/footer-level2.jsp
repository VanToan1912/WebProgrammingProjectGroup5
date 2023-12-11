<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/2/2023
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<footer>
    <div class="row-footer">
        <div class="col-footer">
            <img src="${pageContext.request.contextPath}/WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="" class="logo-footer" width="75%">
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
                <li><a href="index.html">Trang Chủ</a></li>
                <li><a href="introduce.html">Giới Thiệu</a></li>
                <li><a href="product.html">Sản Phẩm</a></li>
                <li><a href="instruct.html">Hướng Dẫn Mua Hàng</a></li>
                <li><a href="news.html">Tin Tức</a></li>

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
</body>
</html>
