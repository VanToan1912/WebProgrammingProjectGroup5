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
<header>
    <jsp:include page="/AdminSite/header/header.jsp"></jsp:include>
</header>
<!--Top-Bar and Sidebar-->

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