<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Site</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

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
            <img src="asset/images/avatar.png" class="img-responsive" alt="avatar">
        </div>
        <div class="profile-usertitle">
            <div class="profile-usertitle-name">Jun</div>
            <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
        </div>
        <div class="clear"></div>
    </div>
    <ul class="nav menu">
        <li>
            <a href="index-admin.jsp"><em class="fa fa-dashboard"></em> Thông Tin</a>
        </li>
        <li>
            <a href="manage-info.jsp"><em class="fa fa-pencil-square-o"></em> Quản lý thông tin chung</a>
        </li>
        <li>
            <a href="manage-comment.jsp"><em class="fa fa-comment"></em> Quản lý đánh giá</a>
        </li>
        <li>
            <a href="manage-interface.jsp"><em class="fa fa-toggle-off"></em> Quản lý giao diện</a>
        </li>
        <li>
            <a class="" href="manage-product.jsp">
                <span class="fa fa-shopping-cart"> </span> Quản lý sản phẩm
            </a>
        </li>
        <li>
            <a class="" href="manage-user.jsp">
                <span class="fa fa-user"></span> Quản lý người dùng
            </a>
        </li>
        <li>
            <a class="" href="manage-posts.jsp">
                <span class="fa fa-stack-exchange"></span> Quản lý bài viết
            </a>
        </li>
        <li>
            <a class="" href="manage-bill-shipping.jsp">
                <span class="fa fa-money"></span> Quản lý hóa đơn
            </a>
        </li>
        <li><a href="login.jsp"><em class="fa fa-power-off"></em> Đăng xuất</a></li>
    </ul>
</div>
<!--Sidebar-->

<!--Content-->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thêm sản phẩm</h1>
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="heading"></label>
            <input type="text" id="heading" required="required" placeholder="Tên sản phẩm">
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="stock"></label>
            <input type="text" id="stock" required="required" placeholder="Số lượng">
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="product-price"></label>
            <textarea name="comment" id="product-price" rows="3" tabindex="4"
                      placeholder="Giá"></textarea>
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="short-description" class="required"></label>
            <textarea name="comment" id="short-description" rows="7" tabindex="4" required="required"
                      placeholder="Mô tả ngắn gọn"></textarea>
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="description" class="required"></label>
            <textarea name="comment" id="description" rows="20" tabindex="4" required="required"
                      placeholder="Mô tả chi tiết"></textarea>
        </div>
    </div>

    <div class="panel product">
        <div class="input-component">
            <label for="pictures" class="required"></label>
            <textarea name="comment" id="pictures" rows="10" tabindex="4" required="required"
                      placeholder="Thêm ảnh"></textarea>
            <input type="file" id="image-upload" accept="image/*" style="display: none;">
            <label for="image-upload" class="upload-button"><i class="fa fa-picture-o"></i></label>
        </div>
    </div>

    <div class="panel product">
        <button type="submit" class="post"><i class="fa fa-plus"> Thêm sản phẩm</i></button>
    </div>
</div>
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>