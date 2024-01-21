<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            <h1 class="page-header">Quản lý sản phẩm</h1>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div class="category">
            <label for="product-category"></label>
            <select id="product-category">
                <option value="0">TẤT CẢ SẢN PHẨM</option>
                <option value="1">CÂY ĂN TRÁI</option>
                <option value="2">CÂY BONSAI</option>
                <option value="3">CÂY CẢNH</option>
                <option value="4">CÂY CÓ HOA</option>
                <option value="5">CÂY ĐỘC LẠ - HIẾM</option>
                <option value="6">CÂY GIA VỊ</option>
                <option value="7">CÂY GIỐNG</option>
                <option value="8">CÂY HOA LEO</option>
                <option value="9">CÂY LỚN</option>
                <option value="10">CỦ GIỐNG</option>
                <option value="11">HOA LAN</option>
                <option value="12">HOA LAN CÂY GIỐNG</option>
                <option value="13">PHÂN BÓN- VẬT TƯ</option>
                <option value="14">SẢN PHẨM KHUYẾN MÃI</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
            <a href="add-product.jsp" class="product-add" style="float: right"><i class="fa fa-plus"></i> Thêm sản phẩm</a>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div>
            <form action="${pageContext.request.contextPath}/ADProducts">
                <table class="product-table">
                    <tr>
                        <th>Tên Sản Phẩm</th>
                        <th>Danh Mục</th>
                        <th>Số Lượng</th>
                        <th>Giá</th>
                        <th>Chỉnh sửa</th>
                    </tr>
                    <c:forEach items="listP" var="o">
                        <tr>
                            <td>${o.productId}</td>
                            <td>${o.productName}</td>
                            <td>${o.quanity}</td>
                            <td>${o.price}</td>
                            <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                                    class="fa fa-trash"></a></td>
                        </tr>
                    </c:forEach>
                    <%--                <tr>--%>
                    <%--                    <td>CÂY CHÀ LÀ</td>--%>
                    <%--                    <td>CÂY ĂN TRÁI, CÂY GIỐNG</td>--%>
                    <%--                    <td>64</td>--%>
                    <%--                    <td>0%</td>--%>
                    <%--                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a--%>
                    <%--                            class="fa fa-trash"></a></td>--%>
                    <%--                </tr>--%>
                </table>
            </form>
        </div>
    </div>
</div>
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>