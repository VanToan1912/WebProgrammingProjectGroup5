<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Site</title>
    <link href="./asset/css/bootstrap.min.css" rel="stylesheet">
    <link href="./asset/css/font-awesome.min.css" rel="stylesheet">
    <link href="./asset/css/datepicker3.css" rel="stylesheet">
    <link href="./asset/css/styles.css" rel="stylesheet">

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
            <h1 class="page-header">Chỉnh sửa slideshow</h1>
        </div>
    </div>

    <table class="interface-table">
        <tr>
            <th>STT</th>
            <th>Xem trước ảnh</th>
            <th>Đổi ảnh</th>
        </tr>
        <tr>
            <td>1</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
        <tr>
            <td>6</td>
            <td></td>
            <td>
                <label class="custom-file-upload">
                    <input type="file" style="display: none"/>
                    <i class="fa fa-upload"></i>
                </label>
            </td>
        </tr>
    </table>
</div>
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>