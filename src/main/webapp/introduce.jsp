<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="WebProject/asset/css/user_info_styles.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <title>Cây giống Sài Gòn - Giới thiệu</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="WebProject/asset/css/introduce.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">


</head>

<body>
<header>
    <jsp:include page="WebProject/header/header-level1.jsp"></jsp:include>
</header>
<!--Body Section-->
<div id="content" class="content-area page-wrapper" role="main">

    <img src="WebProject/asset/img/anh-gioi-thieu/img-giới-thiệu.jpg" alt="" width="30%" class="img-introduce">
    <div class="text-content">
        <p>Lời đầu tiên, cho phép CAYGIONGNONGLAM.COM gửi đến Quý Khách hàng lời chúc sức khoẻ và thành
            công.<br>CAYGIONGNONGLAM.COM ra đời nhằn đáp ứng và cung cấp ra thị trường những loại cây giống chất lượng
            tốt nhất, phụ hợp với khí hậu vùng miền.<br>CAYGIONGNONGLAM.COM chuyên cung cấp các loại cây giống nhập khẩu
            và trong nước như<br>– Cây giống ăn quả.<br>– Cây giống hoa.<br>– Cây giống hoa lan các loại<br>– Cây giống
            trang trí sân vườn.<br>– Cây cảnh, cây công trình<br>– Vật tư nông nghiệp</p>
        <p>Với mong muốn đem đến cho Quý khách hàng sự lựa chọn tin cậy<br>Chúng tôi đáng giá sự thành công của mình
            không chỉ trong thành tựu kinh doanh của chúng tôi, mà còn bằng mức độ phục vụ cộng đồng tốt đến
            đâu.<br>CAYGIONGSAIGON.COM hoan nghênh sự hợp tác và đóng góp ý kiến của Quý khách hàng để sản phẩm và dịch
            vụ được tốt hơn nữa</p>
        <p>Trân trọng!</p>
    </div>


</div>
<div class="clear"></div>
<!--Footer Section-->
<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
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
<!-- END ẨN HIỆN LIST-MENU -->
</body>

</html>