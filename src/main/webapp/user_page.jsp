<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
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
            <form id="userForm" action="${pageContext.request.contextPath}/updateUserDetails" method="post">
                <h1>HỒ SƠ NGƯỜI DÙNG</h1>
                <label for="firstName">Họ và tên:</label>
                <input type="text" id="firstName" name="firstName" required value="${sessionScope.firstName}">

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required value="${sessionScope.email}" readonly>

                <label for="phone">Số điện thoại:</label>
                <input type="tel" id="phone" name="phone" required value="${sessionScope.phone}" >

                <label for="gender">Giới tính:</label>
                <select id="gender" name="gender" required>
                    <option value="Nam" ${sessionScope.gender eq 'Nam' ? 'selected' : ''}>Nam</option>
                    <option value="Nu" ${sessionScope.gender eq 'Nu' ? 'selected' : ''}>Nu</option>
                    <option value="Khac" ${sessionScope.gender eq 'Khac' ? 'selected' : ''}>Khac</option>
                </select>

                <label for="address">Địa chỉ:</label>
                <input type="text" id="address" name="address" required value="${sessionScope.address}">

                <!-- Your other form fields -->

                <div class="btn-container">
                    <a href="${pageContext.request.contextPath}/change_password.jsp">
                        <button type="button" class="change-password-btn">Đổi mật khẩu</button>
                    </a>
                </div>
                <a href="${pageContext.request.contextPath}/index.jsp">
                    <button type="button" class="btn" id="undoButton" onclick="cancel()">Quay lại</button>
                </a>
                <button type="submit" name="saveData">Lưu</button>
            </form>
        </div>
    </div>
</div>
<script>
    function cancel() {
        window.location.href = '${pageContext.request.contextPath}/user_page.jsp';
    }
</script>
<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>





