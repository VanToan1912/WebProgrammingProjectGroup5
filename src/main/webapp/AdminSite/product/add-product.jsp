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
            <h1 class="page-header">Thêm sản phẩm</h1>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/AdminSite/product/AddProduct" method="post"
          enctype="multipart/form-data">
        <label for="productName">Tên sản phẩm: </label>
        <input type="text" id="productName" name="productName" required="required"
               placeholder="Tên sản phẩm"> <br>
        <label for="quanity">Số lượng: </label>
        <input type="number" id="quanity" name="quanity" required="required"
               placeholder="Số lượng"> <br>
        <label for="price">Giá: </label>
        <input type="number" name="price" id="price" required="required"
               placeholder="Giá"> <br>


        <!-- Uncomment the sections below if you want to include them -->
        <!--
        <div class="panel product">
            <label for="short-description">Mô tả ngắn:</label>
            <textarea name="shortDescription" id="short-description" rows="7" tabindex="4" required="required" placeholder="Mô tả ngắn gọn"></textarea>
        </div>

        <div class="panel product">
            <label for="description">Mô tả chi tiết:</label>
            <textarea name="description" id="description" rows="20" tabindex="4" required="required" placeholder="Mô tả chi tiết"></textarea>
        </div>
        <--
        <div class="panel product">
            <label for="pictures">Hình ảnh:</label>
            <textarea name="pictures" id="pictures" rows="10" tabindex="4" required="required" placeholder="Thêm ảnh"></textarea>
            <input type="file" id="image-upload" name="imageUpload" accept="image/*" style="display: none;">
            <label for="image-upload" class="upload-button"><i class="fa fa-picture-o"></i></label>
        </div>
        -->

        <div class="panel product">
            <button type="submit" class="post"><i class="fa fa-plus"> Thêm sản phẩm</i></button>
        </div>
    </form>
</div>

<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>