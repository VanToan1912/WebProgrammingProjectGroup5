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
        <li class="active">
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
            <h1 class="page-header">Quản lý hóa đơn</h1>
        </div>
    </div>

    <div class="panel panel-container">
        <div class="row">
            <ul class="nav-bills">
                <li><a href="manage-bill-shipping.jsp">Trạng thái đơn hàng</a></li>
                <li class="chosen"><a href="manage-bill-order.jsp">Tạo đơn đặt hàng</a></li>
            </ul>
        </div>
    </div>

    <div class="panel panel-container">
        <div class="form-head">
            <h3>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</h3>
            <h4><u>Độc Lập - Tự Do - Hạnh Phúc</u></h4>
            <h4>ĐƠN ĐẶT HÀNG</h4>
            <h4>
                Số:&nbsp;
                <label>
                    <textarea rows="1"></textarea>
                </label>
            </h4>
        </div>

        <div class="form-body">
            <p>Kính gửi: Công ty Cây Giống Đồng Thành Công</p>
            <p>Công ty Cây Giống Sài Gòn có nhu cầu đặt hàng tại quý công ty theo mẫu</p>
            <p>Nội dung đặt hàng như sau:</p>
            <table class="table-order">
                <tr>
                    <th>&nbsp;STT</th>
                    <th>&nbsp;Tên mặt hàng</th>
                    <th>&nbsp;ĐVT</th>
                    <th>&nbsp;Số lượng</th>
                    <th>&nbsp;Đơn giá</th>
                    <th>&nbsp;Thành tiền</th>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>
                <tr>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                    <td><label>
                        <textarea rows="1"></textarea>
                    </label></td>
                </tr>


            </table>
            <p><b>Tổng cộng:</b>
            </p>
            <p>Thời gian đặt hàng:
                <label>
                    <textarea rows="1"></textarea>
                </label>
            </p>
            <p>Địa điểm giao hàng:
                <label>
                    <textarea rows="1"></textarea>
                </label>
            </p>
            <p><b>Phương thức thanh toán:</b></p>
            <p>- Thanh toán bằng tiền mặt hoặc chuyển khoản</p>
            <p>- Thanh toán trước 50% giá trị hợp đồng, 50% còn lại thanh toán sau khi giao hàng</p>
        </div>

        <div class="form-foot">
            <p>Thủ Đức, ngày
                <label>
                    <textarea rows="1"></textarea>
                </label>
                , tháng
                <label>
                    <textarea rows="1"></textarea>
                </label>, năm
                <label>
                    <textarea rows="1"></textarea>
                </label>
            </p>
            <p class="signature"><b>Giám Đốc</b></p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </div>

    <button type="button" class="print-button" onclick="printDocument()">In đơn</button>
</div>
<!--Content-->

<!--Script-->
<script>
    function printDocument() {
        // Lấy nội dung của các textarea
        let content = "";
        let textareas = document.querySelectorAll('textarea');
        textareas.forEach(function (textarea) {
            content += textarea.value + '\n';
        });

        // Tạo một cửa sổ mới để hiển thị nội dung và in
        let printWindow = window.open('', '_blank');
        printWindow.document.open();
        printWindow.document.write('<html lang=""><head><title>Đơn Đặt Hàng</title></head><body><pre>' + content + '</pre></body></html>');
        printWindow.document.close();

        // In trang
        printWindow.print();
    }
</script>
<!--Script-->
</body>
</html>