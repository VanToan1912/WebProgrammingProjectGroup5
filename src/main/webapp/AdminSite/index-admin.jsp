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
<header>
    <jsp:include page="header/header.jsp"></jsp:include>
</header>
<!--Top-Bar and Sidebar-->

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
                            <div class="timeline-badge"><em class="fa fa-thumb-tack"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Cải thiện thời gian giao hàng</h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge primary"><em class="fa fa-link"></em></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title">Quảng bá trang web</h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-badge"><em class="fa fa-camera"></em></div>
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