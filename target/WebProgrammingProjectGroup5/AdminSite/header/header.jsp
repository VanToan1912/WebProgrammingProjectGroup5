<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Site</title>
    <link href="../asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="../asset/css/font-awesome.min.css" rel="stylesheet">
    <link href="../asset/css/datepicker3.css" rel="stylesheet">
    <link href="../asset/css/styles.css" rel="stylesheet">

    <!--Custom Font-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">
</head>
<body>
<!--Top-Bar and Sidebar-->
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><span>CGNL </span>Admin Site</a>
    </div>
</nav>
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
        <div class="profile-userpic">
            <img src="${pageContext.request.contextPath}/AdminSite/asset/images/avatar.png" class="img-responsive"
                 alt="avatar">
        </div>
        <div class="profile-usertitle">
            <div class="profile-usertitle-name">Jun</div>
            <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
        </div>
        <div class="clear"></div>
    </div>
    <ul class="nav menu">
        <li>
            <a href="${pageContext.request.contextPath}/index.jsp">
                <em class="fa fa-tree"></em> Cây Giống Sài Gòn</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/AdminSite/index-admin.jsp">
                <em class="fa fa-dashboard"></em> Thông Tin</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/AdminSite/info/manage-info.jsp"><em
                    class="fa fa-pencil-square-o"></em> Quản lý thông tin chung</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/AdminSite/comment/manage-comment.jsp"><em
                    class="fa fa-comment"></em> Quản lý đánh giá</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/AdminSite/interface/manage-interface.jsp"><em
                    class="fa fa-toggle-off"></em> Quản lý giao diện</a>
        </li>
        <li>
            <a class="" href="${pageContext.request.contextPath}/ADProducts">
                <em class="fa fa-shopping-cart"> </em> Quản lý sản phẩm
            </a>
        </li>
        <li>
            <a class="" href="${pageContext.request.contextPath}/AdminSite/user/manage-user.jsp">
                <em class="fa fa-user"></em> Quản lý người dùng
            </a>
        </li>
        <li>
            <a class="" href="${pageContext.request.contextPath}/AdminSite/post/manage-posts.jsp">
                <em class="fa fa-stack-exchange"></em> Quản lý bài viết
            </a>
        </li>
        <li>
            <a class="" href="${pageContext.request.contextPath}/AdminSite/bill/manage-bill-shipping.jsp">
                <em class="fa fa-money"></em> Quản lý hóa đơn
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/#"><em class="fa fa-power-off"></em> Đăng
                xuất</a>
        </li>
    </ul>
</div>
<!--Sidebar-->

<!--Script-->

<!--Script-->
</body>
</html>