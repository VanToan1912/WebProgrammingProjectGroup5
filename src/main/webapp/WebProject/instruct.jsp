<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Hướng dẫn mua hàng</title>
    <link rel="icon" href="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="asset/css/instructions.css">
    <link rel="stylesheet" href="asset/fonts/themify-icons/themify-icons.css">
    <!-- <link rel="stylesheet" href="./asset/css/styles.css"> -->
    <link rel="stylesheet" href="asset/css/head-foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/logged-in-header-style.css">
    <title>Hướng dẫn</title>
</head>
<body>
<!--Header Section-->

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
        <a href="View/purchase.jsp">
            <div class="col-head">
                <button class="cart-button">
                    <i class="ti-shopping-cart">0.000đ</i>
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
            <ul class="sub-nav" style="display: none;">
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
        <li class="nav-togethger"><a href="${pageContext.request.contextPath}/index.jsp">TRANG CHỦ</a></li>
        <li class=" nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/introduce.jsp" class="nav-togethger">GIỚI THIỆU</a></li>
        <li class=" nav-togethger"><a href="products">SẢN PHẨM</a></li>
        <li class="nav-text-product nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/instruct.jsp">HƯỚNG DẪN MUA HÀNG</a></li>
        <li class="nav-togethger"><a href="${pageContext.request.contextPath}/WebProject/news.jsp">TIN TỨC</a></li>
    </ul>


    <!-- END NAV -->
    <div class="clear"></div>
</header>
<!--Body Section-->
<div class="container" id="hd-main">
    <div class="title">
        <div class="content" id="hd-content">
            <div class="content-img">
                <img src="asset/img/anh-huong-dan-mua-hang/huong-dan-mua-hang.jpg" alt="">
            </div>
            <div class="content-text">
                <p><em>Kính chào quý khách hàng!</em></p>
                <p>Các hình thức thanh toán bao gồm:</p>
                <p>
                    <strong>I.Khách hàng tại HCM vui lòng thanh toán như sau:</strong>
                    <br>
                    Hotline:<strong>0988939023</strong>
                </p>
                <p>
                    <strong>II. Mua hàng thu tiền tại nhà (COD)</strong>
                    <br>
                    Giao hàng thu tiền tại nhà là hình thức mua hàng rất tiện lợi cho quý khách mua hàng mà không có tài
                    khoản ngân hàng online và không gần cửa hàng của chúng tôi.
                    <br>
                    1 - Quý khách có thề gọi điện thoại hoặc nhắn tin, chúng tôi sẽ xác nhận đơn hàng và vận chuyển
                    <br>
                    2 - Quý khách đặt hàng trực tuyến tại website: www.caygiongnonglam.com
                </p>
                <p>
                    <strong>III. Mua hàng bằng cách thanh toán trực tuyến</strong>
                    <br>
                    NGÂN HÀNG VIETCOMBANK
                    <br>
                    Chủ tài khoản: <strong><em>TRẦN VĂN TOÀN</em></strong>
                    <br>
                    Quý khách vui lòng ghi rõ nội dung như sau:
                    <br>+ Họ tên:
                    <br>+ Số điện thoại:
                    <br>+ Tên sản phẩm:
                    <br> + Số lượng:
                </p>
                <p>
                    <strong>III. Vận chuyển và thời gian nhận hàng</strong>
                    <br>
                    Chúng tôi gửi chuyển phát nhanh đảm bảo qua bưu điện và 1 số dịch vụ chuyển phát khác trên toàn
                    quốc.
                    <br>
                    Hàng sẽ nhận được 2-3 ngày sau khi xác nhận đơn hàng.
                </p>
                <h4>Xin chân thành cảm ơn Quý Khách Hàng đã lựa chọn và ủng hộ chúng tôi!</h4>
            </div>
        </div>
    </div>
</div>
<!--Footer Section-->
<footer>
    <div class="row-footer">
        <div class="col-footer">
            <img src="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="" class="logo-footer" width="75%">
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
                <li><a href="introduce.jsp">Giới Thiệu</a></li>
                <li><a href="product.html">Sản Phẩm</a></li>
                <li><a href="instruct.html">Hướng Dẫn Mua Hàng</a></li>
                <li><a href="news.jsp">Tin Tức</a></li>

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
<!-- ẨN HIỆN LIST-MENU -->
<script>

    // Lấy phần tử nút kích hoạt
    const toggleButton = document.getElementById("toggle-products");
    // Lấy danh sách sản phẩm
    const productList = document.querySelector(".sub-nav");

    // Thêm sự kiện click cho nút kích hoạt
    toggleButton.addEventListener("click", function (e) {
        e.preventDefault(); // Ngăn chặn chuyển hướng đến "#"

        // Kiểm tra nếu danh sách sản phẩm đã ẩn, thì hiển thị, ngược lại, ẩn đi
        if (productList.style.display === "none" || productList.style.display === "") {
            productList.style.display = "block";
        } else {
            productList.style.display = "none";
        }
    });

</script>

</body>
</html>