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
            <h1 class="page-header">Quản lý bài viết</h1>
        </div>
    </div>

    <div class="panel">
        <table class="interface-table">
            <tr class="rows">
                <th class="column">Tên bài viết</th>
                <th class="column">Hiển thị</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <tr class="rows" id="row-1">
                <td class="column name">PHÂN BIỆT MAI XANH THÁI VÀ MAI XANH ĐÀ LẠT</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column">
                    <a href="edit-post.jsp" class="fa fa-pencil-square"></a>
                    <a class="fa fa-trash" onclick="deleteRow('row-1')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-2">
                <td class="column name">Mua cây chuối tài lộc ở đâu?</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column">
                    <a href="edit-post.jsp" class="fa fa-pencil-square"></a>
                    <a class="fa fa-trash" onclick="deleteRow('row-2')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-3">
                <td class="column name">Cây chuối sen</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column">
                    <a href="edit-post.jsp" class="fa fa-pencil-square"></a>
                    <a class="fa fa-trash" onclick="deleteRow('row-3')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-4">
                <td class="column name">Khám phá bất ngờ cây chuối tài lộc hình dáng độc lạ</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column">
                    <a href="edit-post.jsp" class="fa fa-pencil-square"></a>
                    <a class="fa fa-trash" onclick="deleteRow('row-4')"></a>
                </td>
            </tr>
            <tr class="rows">
                <td class="column" colspan="3">
                    <a href="add-post.jsp"><i class="fa fa-plus"> Thêm bài viết</i></a>
                </td>
            </tr>
        </table>
    </div>
</div>

<!--Content-->

<!--Script-->
<script>
    function deleteRow(rowId) {
        let row = document.getElementById(rowId);
        row.parentNode.removeChild(row);
    }
</script>
<!--Script-->
</body>
</html>