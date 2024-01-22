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
            <h1 class="page-header">Quản lý giao diện</h1>
        </div>
    </div>

    <div class="panel main-interface">
        <table class="interface-table">
            <tr class="rows">
                <th colspan="5">Quản lý danh mục</th>
            </tr>
            <tr class="rows">
                <th class="column">Tên danh mục</th>
                <th class="column">Hiển thị</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <tr class="rows">
                <td class="column name">DANH MỤC SẢN PHẨM</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">TRANG CHỦ</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">GIỚI THIỆU</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">SẢN PHẨM</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">HƯỚNG DẪN MUA HÀNG</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">TIN TỨC</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY ĂN TRÁI</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY BONSAI</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY CẢNH</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY CÓ HOA</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY ĐỘC LẠ - HIẾM</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY GIA VỊ</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY GIỐNG</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY HOA LEO</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY LỚN</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">CỦ GIỐNG</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">HOA LAN</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">HOA LAN CÂY GIỐNG</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">PHÂN BÓN - VẬT TƯ</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
            <tr class="rows">
                <td class="column name">SẢN PHẨM KHUYẾN MÃI</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
                <td class="column"><a href="edit-interface.jsp" class="fa fa-pencil-square"></a> <a
                        class="fa fa-trash"></a></td>
            </tr>
        </table>
    </div>
</div>
<!--Content-->

<!--Script-->
<script>

</script>
<!--Script-->
</body>
</html>