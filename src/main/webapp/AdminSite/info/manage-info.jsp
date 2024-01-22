<%@ page import="bean.General_Info" %>
<%@ page import="dao.General_InfoDAO" %>
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
            <h1 class="page-header">Quản lý thông tin chung</h1>
        </div>
    </div>

    <div class="panel" style="padding-top: 0">
        <table class="interface-table">
            <tr class="rows">
                <th>Tên</th>
                <th colspan="2">Nội dung</th>
                <th>Chỉnh sửa</th>
            </tr>
            <%General_Info g = General_InfoDAO.getAllInfo();%>
            <tr class="rows">
                <td>Email</td>
                <td colspan="2"><%=g.getEmail()%></td>
                <td><a href="edit-info.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <tr class="rows">
                <td>Facebook</td>
                <td colspan="2"><%=g.getFacebook()%></td>
                <td><a href="edit-info.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <tr class="rows">
                <td>Số điện thoại</td>
                <td colspan="2"><%=g.getPhone_number()%></td>
                <td><a href="edit-info.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <tr class="rows">
                <td>Địa Chỉ</td>
                <td colspan="2"><%=g.getAddress()%></td>
                <td><a href="edit-info.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <tr class="rows">
                <td>Giới thiệu</td>
                <td colspan="2"><%=g.getIntroduction()%>                </td>
                <td><a href="edit-info.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <tr class="rows">
                <td colspan="3">Ảnh SlideShow</td>
                <td><a href="edit-slideshow.jsp" class="fa fa-pencil-square"></a></td>
            </tr>
            <%;%>
        </table>
    </div>
</div>

<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>