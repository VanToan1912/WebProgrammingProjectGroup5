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
    <title>User Information Form</title>
</head>
<body>
<%@ page import="controller.java.client_controller.UserInfoServlet" %>
<% UserInfoServlet userInfoServlet = new UserInfoServlet(); %>
<%
    // Retrieve the email value from the input field
    String email = (String)session.getAttribute("email"); // Assuming you store the email in the session

    // Append the email parameter to the URL and redirect to the servlet
    response.sendRedirect(request.getContextPath() + "/loadUserData?email=" + email);
%>

<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="userinfo">
            <!-- Display user information retrieved from the servlet -->
            <h1>HỒ SƠ NGƯỜI DÙNG</h1>
            <label for="fullName">Họ và tên:</label>
            <input type="text" id="fullName" name="fullName" value="${requestScope.fullName}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${sessionScope.email}" disabled>

            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" name="phone" value="${requestScope.phone}" required>

            <label for="gender">Giới tính:</label>
            <select id="gender" name="gender" required>
                <option value="Nam" ${"Nam".equals(requestScope.gender) ? "selected" : ""}>Nam</option>
                <option value="Nữ" ${"Nữ".equals(requestScope.gender) ? "selected" : ""}>Nữ</option>
                <option value="Khác" ${"Khác".equals(requestScope.gender) ? "selected" : ""}>Khác</option>
            </select>

            <label for="dob">Ngày sinh:</label>
            <input type="date" id="dob" name="dob" value="${requestScope.dob}" required>

            <div class="btn-container">
                <a href="${pageContext.request.contextPath}/change_password.jsp">
                    <button type="button" class="change-password-btn">Đổi mật khẩu</button>
                </a>
            </div>

            <a href="${pageContext.request.contextPath}/index.jsp">
                <button type="button" class="btn" onclick="cancel()">Quay lại</button>
            </a>

            <!-- The form is not needed for display purposes -->
        </div>
    </div>
</div>
<script>
    function cancel() {
        window.location.href = '${pageContext.request.contextPath}/user_page.jsp';
    }
</script>
<script>
    // Assuming you store the email in a variable
    var email = "<%= session.getAttribute("email") %>";

    // Check if the email is not null or empty
    if (email && email.trim() !== "") {
        // Encode the email for URL safety
        var encodedEmail = encodeURIComponent(email);

        // Redirect to the loadUserData servlet with the encoded email parameter
        window.location.href = '${pageContext.request.contextPath}/loadUserData?email=' + encodedEmail;
    }
</script>
<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>
