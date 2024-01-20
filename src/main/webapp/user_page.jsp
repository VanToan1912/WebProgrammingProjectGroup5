<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="WebProject/asset/css/login_styles.css">
    <link rel="stylesheet" href="WebProject/asset/css/user_info_styles.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <title>User Information Form</title>
</head>
<body>
<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="userinfo">
            <form id="userForm">
                <label for="fullName">Họ và tên:</label>
                <input type="text" id="fullName" name="fullName" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Số điện thoại:</label>
                <input type="tel" id="phone" name="phone" required>

                <label for="gender">Giới tính:</label>
                <select id="gender" name="gender" required>
                    <option value="Nam">Nam</option>
                    <option value="Nữ">Nữ</option>
                    <option value="Khác">Khác</option>
                </select>
                <label for="dob">Ngày sinh:</label>
                <input type="date" id="dob" name="dob" required>

                <button type="button" onclick="changePassword()">Đổi mật khẩu</button>
                <button type="submit">Lưu</button>
                <button type="button" onclick="cancel()">Hủy</button>
            </form>
        </div>
    </div>

</div>
<script>
   function changePassword() {
        // Add logic for changing password here
        alert('Chức năng đổi mật khẩu chưa được triển khai.');
   }

    function cancel() {
        document.getElementById('userForm').reset();
    }
</script>
<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>





