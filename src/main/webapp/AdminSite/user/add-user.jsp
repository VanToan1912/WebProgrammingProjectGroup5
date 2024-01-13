<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Site</title>
    <link href="${pageContext.request.contextPath}AdminSite/asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}AdminSite/asset/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}AdminSite/asset/css/datepicker3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}AdminSite/asset/css/styles.css" rel="stylesheet">

    <!--Custom Font-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">
</head>
<body>
<!--Top-Bar and Sidebar-->
<header>
    <jsp:include page="/AdminSite/header/header.jsp"></jsp:include>
</header>
<!--Top-Bar and Sidebar-->

<!--Content-->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm tài khoản</h1>
        </div>
    </div>

    <div class="panel panel-container user">
        <div class="sign-up">
            <label for="name">Tên Tài Khoản:</label><br>
            <input type="text" id="name" name="name"><br>
            <label for="password">Mật Khẩu:</label><br>
            <input type="password" id="password" name="password"><br>
            <label for="password-confirm">Xác Nhận Mật Khẩu</label><br>
            <input type="password" id="password-confirm" name="password"><br>
            <label for="role">Quyền Hạn</label><br>
            <select id="role">
                <option value="0">Quản Trị Viên</option>
                <option value="1">Quản Lí</option>
                <option value="2">Người Dùng</option>
            </select>
            <br>
            <button type="submit"><a href="manage-user.jsp" style="text-decoration: none; color: white">Thêm người
                dùng</a></button>
        </div>
    </div>
</div>
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>