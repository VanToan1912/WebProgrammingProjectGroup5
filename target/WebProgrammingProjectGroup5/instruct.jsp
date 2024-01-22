<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Hướng dẫn mua hàng</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="WebProject/asset/css/instructions.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <!-- <link rel="stylesheet" href="./asset/css/styles.css"> -->
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <title>Hướng dẫn</title>
</head>
<body>
<!--Header Section-->
<header>
    <jsp:include page="WebProject/header/header-level1.jsp"></jsp:include>
</header>
<!--Body Section-->
<div class="container" id="hd-main">
    <div class="title">
        <div class="content" id="hd-content">
            <div class="content-img">
                <img src="WebProject/asset/img/anh-huong-dan-mua-hang/huong-dan-mua-hang.jpg" alt="">
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
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
<!-- ẨN HIỆN LIST-MENU -->
<%--<script>--%>

<%--    // Lấy phần tử nút kích hoạt--%>
<%--    const toggleButton = document.getElementById("toggle-products");--%>
<%--    // Lấy danh sách sản phẩm--%>
<%--    const productList = document.querySelector(".sub-nav");--%>

<%--    // Thêm sự kiện click cho nút kích hoạt--%>
<%--    toggleButton.addEventListener("click", function (e) {--%>
<%--        e.preventDefault(); // Ngăn chặn chuyển hướng đến "#"--%>

<%--        // Kiểm tra nếu danh sách sản phẩm đã ẩn, thì hiển thị, ngược lại, ẩn đi--%>
<%--        if (productList.style.display === "none" || productList.style.display === "") {--%>
<%--            productList.style.display = "block";--%>
<%--        } else {--%>
<%--            productList.style.display = "none";--%>
<%--        }--%>
<%--    });--%>

<%--</script>--%>

</body>
</html>