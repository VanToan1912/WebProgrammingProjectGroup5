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
            <h1 class="page-header">Chỉnh sửa bài viết</h1>
        </div>
    </div>

    <div class="panel">
        <div class="input-component">
            <label for="heading"></label>
            <input type="text" id="heading" required="required" placeholder="Nhập tiêu đề">
        </div>
    </div>

    <div class="panel" style="resize: both">
        <div class="input-component">
            <label for="comment" class="required"></label>
            <textarea name="comment" id="comment" rows="30" tabindex="4" required="required"
                      placeholder="Nhập nội dung"></textarea>
            <input type="file" id="image-upload" accept="image/*" style="display: none;">
            <label for="image-upload" class="upload-button"><i class="fa fa-picture-o"></i></label>
        </div>
    </div>

    <div class="panel">
        <button type="submit" class="post"><i class="fa fa-plus"> Lưu thay đổi</i></button>
    </div>
</div>

<!--Script-->

<!--Script-->
</body>
</html>