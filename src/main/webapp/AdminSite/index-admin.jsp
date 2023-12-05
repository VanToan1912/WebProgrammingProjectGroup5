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
        <li class="active">
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
            <h1 class="page-header">Thông Tin</h1>
        </div>
    </div>

    <div class="panel panel-container">
        <div class="row">
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-teal panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-shopping-cart color-blue"></em>
                        <div class="large">120</div>
                        <div class="text-muted">Đơn Hàng</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-blue panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-comments color-orange"></em>
                        <div class="large">22</div>
                        <div class="text-muted">Bình Luận</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-orange panel-widget border-right">
                    <div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
                        <div class="large">24</div>
                        <div class="text-muted">Tài Khoản Mới</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                <div class="panel panel-red panel-widget ">
                    <div class="row no-padding"><em class="fa fa-xl fa-search color-red"></em>
                        <div class="large">10.2k</div>
                        <div class="text-muted">Lượt xem</div>
                    </div>
                </div>
            </div>
        </div><!--/.row-->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Thay Đổi Gần Đây
                </div>
                <div class="panel-body timeline-container">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge"><em class="glyphicon glyphicon-pushpin"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Cải thiện thời gian giao hàng</h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge primary"><em class="glyphicon glyphicon-link"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Quảng bá trang web</h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge"><em class="glyphicon glyphicon-camera"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Thêm sản phẩm</h4>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!--/.col-->
    </div><!--/.row-->
</div>    <!--/.main-->
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>