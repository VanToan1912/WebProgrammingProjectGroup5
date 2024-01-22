<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Đăng nhập</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="WebProject/asset/css/login_styles.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <title>Đăng nhập test</title>
</head>
<body>
<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<div id="main-content">
    <div class="container" id="container">
        <div class="sign-in-form">
            <form action=loginServlet method="POST" autocomplete="off">
                <h1>ĐĂNG NHẬP</h1>
                <% String errorMessage = (String)request.getAttribute("error"); %>
                <% if (errorMessage != null) { %>
                <div style="color: red;"> <%= errorMessage %> </div>
                <% } %>
                <div class="input-box">
                    <label><span class="icon"><i class="far fa-envelope"></i></span> <strong>Email</strong></label>
                    <label for="email"></label><input type="email" name="email" placeholder="Nhập email..." id="email" required autocomplete="new-email">
                </div>
                <div class="input-box">
                    <label><span class="icon"><i class="fas fa-key"></i></span><strong>Mật khẩu</strong></label>
                    <label for="password"></label><input type="password" name="password" placeholder="Nhập mật khẩu..." id="password" required autocomplete="new-password">
                </div>
                <div class="input-remember-checkbox">
                    <label><input type="checkbox">Ghi nhớ tài khoản</label>
                    <a href="password_reset.jsp">Quên mật khẩu?</a>
                </div>
                <button type="submit" class="btn" id="agreeButton">Đồng ý</button>
                <div class="login-register">
                    <p>Chưa có tài khoản?</p> <a href="register.jsp">Đăng ký</a>
                </div>
            </form>
            <script>
                window.addEventListener('DOMContentLoaded', function() {
                    setTimeout(function() {
                        document.getElementById('password').value = '';
                    }, 10000);
                });
            </script>
            <%--                <script>--%>
            <%--                    document.getElementById('loginForm').addEventListener('submit', function (event) {--%>
            <%--                        event.preventDefault(); // Prevent the default form submission--%>

            <%--                        // Get the values of email and password--%>
            <%--                        var email = document.getElementById('email').value;--%>
            <%--                        var password = document.getElementById('password').value;--%>

            <%--                        // Make a fetch request to the Java backend--%>
            <%--                        fetch('loginServlet', {--%>
            <%--                            method: 'POST',--%>
            <%--                            headers: {--%>
            <%--                                'Content-Type': 'application/json',--%>
            <%--                            },--%>
            <%--                            body: JSON.stringify({ email: email, password: password }),--%>
            <%--                        })--%>
            <%--                            .then(response => {--%>
            <%--                                if (!response.ok) {--%>
            <%--                                    throw new Error('Network response was not ok');--%>
            <%--                                }--%>
            <%--                                return response.json();--%>
            <%--                            })--%>
            <%--                            .then(data => {--%>
            <%--                                // Handle the response from the server--%>
            <%--                                console.log(data);--%>
            <%--                                // Redirect or perform other actions based on the server response--%>
            <%--                            })--%>
            <%--                            .catch(error => {--%>
            <%--                                console.error('Error:', error);--%>
            <%--                            });--%>
            <%--                    });--%>
            <%--                </script>--%>

        </div>
    </div>

</div>
<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
</footer>
</body>
</html>