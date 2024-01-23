<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page import="bean.Product" %>
<%@ page import="dao.ProductDAO" %>
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
                <option value="9">CỦ GIỐNG</option>
                <option value="10">HOA LAN</option>
                <option value="11">HOA LAN CÂY GIỐNG</option>
                <option value="12">GIÁ THỂ</option>
                <option value="13">CHẬU CÂY</option>
                <option value="14">PHÂN VÔ CƠ</option>
                <option value="15">PHÂN HỮU CƠ</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
            <input type="text" placeholder="Search...">
            <button type="submit" class="product-add">Search</button>
            <a href="add-product.jsp" class="product-add" style="float: right"><i class="fa fa-plus"></i> Thêm sản phẩm</a>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div>
            <%--            <form action="ADProducts" method="post">--%>
            <table class="product-table">
                <tr>
                    <th>STT</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Danh Mục</th>
                    <th>Số Lượng</th>
                    <th>Giá</th>
                    <th>Chỉnh sửa</th>
                </tr>

                <%--                    <c:forEach items="${listP}" var="o">--%>
                <%--                        <tr>--%>
                <%--                            <td>${o.getProductId()}</td>--%>
                <%--                            <td>${o.getProductName()}</td>--%>
                <%--                            <td>${o.getCategories()}</td>--%>
                <%--                            <td>${o.getQuanity()}</td>--%>
                <%--                            <td>${o.getPrice()}</td>--%>
                <%--                            <td>--%>
                <%--                                <a href="edit-product.jsp?id=${o.getProductId()}" class="fa fa-pencil-square"></a>--%>
                <%--                                <a class="fa fa-trash"></a>--%>
                <%--                            </td>--%>
                <%--                        </tr>--%>
                <%--                    </c:forEach>--%>

                <% for (Product p : ProductDAO.getAllProduct()) { %>
                <tr>
                    <td><%= p.getProductId() %>
                    </td>
                    <td><%= p.getProductName() %>
                    </td>
                    <td><%= p.getCategories() %>
                    </td>
                    <td><%= p.getQuanity() %>
                    </td>
                    <td><%= p.getPrice() %>
                    </td>
                    <td>
                        <a href="edit-product.jsp?productId=<%= p.getProductId() %>" class="fa fa-pencil-square"></a>
                        <a href="javascript:void(0);" onclick="deleteProduct(<%= p.getProductId() %>)"
                           class="fa fa-trash"></a></td>
                </tr>
                <% } %>

                <%--                <tr>--%>
                <%--                    <td>CÂY CHÀ LÀ</td>--%>
                <%--                    <td>CÂY ĂN TRÁI, CÂY GIỐNG</td>--%>
                <%--                    <td>64</td>--%>
                <%--                    <td>0%</td>--%>
                <%--                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a--%>
                <%--                            class="fa fa-trash"></a></td>--%>
                <%--                </tr>--%>
            </table>
            <%--            </form>--%>
        </div>
    </div>
</div>
<!--Content-->

<!--Script-->
<script>
    // Function to delete the product asynchronously and refresh the page
    function deleteProduct(productId) {
        if (confirm('Are you sure you want to delete this product?')) {
            // Use AJAX to send a request to the DeleteProductServlet
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/AdminSite/product/DeleteProduct-servlet', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            // Set up the callback function to handle the response
            xhr.onload = function () {
                if (xhr.status === 200) {
                    // Reload the page if the deletion was successful
                    location.reload();
                } else {
                    // Handle the case when the deletion failed (optional)
                    alert('Failed to delete the product. Please try again.');
                }
            };

            // Send the productId as a parameter in the request
            var params = 'productId=' + encodeURIComponent(productId);
            xhr.send(params);
        }
    }

    function checkAddSuccess() {
        var urlParams = new URLSearchParams(window.location.search);
        var addSuccess = urlParams.get('addSuccess');

        if (addSuccess === 'true') {
            alert('Product added successfully!');
        } else if (addSuccess === 'false') {
            alert('Failed to add the product. Please try again.');
        }
    }

    window.onload = checkAddSuccess;
</script>
<!--Script-->
</body>
</html>