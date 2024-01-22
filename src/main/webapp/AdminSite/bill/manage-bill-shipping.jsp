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
            <h1 class="page-header">Quản lý hóa đơn</h1>
        </div>
    </div>

    <div class="panel panel-container">
        <div class="row">
            <ul class="nav-bills">
                <li class="chosen">
                    <a href="${pageContext.request.contextPath}/AdminSite/bill/manage-bill-shipping.jsp">Trạng
                        thái đơn hàng</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/AdminSite/bill/manage-bill-order.jsp">Tạo đơn đặt
                        hàng</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div class="category">
            <label for="product-category"></label>
            <select id="product-category">
                <option value="0">Đơn hàng chưa duyệt</option>
                <option value="1">Đơn hàng đã duyệt</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
        </div>
    </div>

    <div class="panel chua-duyet-table" style="padding-top: 0">
        <table class="order-table">
            <tr class="rows">
                <th colspan="8">Đơn hàng chưa duyệt</th>
            </tr>
            <tr class="rows">
                <th class="column">Mã đơn hàng</th>
                <th class="column">Tên người dùng</th>
                <th class="column">Ngày đặt</th>
                <th class="column">Địa chỉ đặt</th>
                <th class="column">Số điện thoại</th>
                <th class="column">Sản phẩm</th>
                <th class="column">Tổng Giá</th>
                <th class="column">Trạng thái</th>
            </tr>
            <tr class="rows">
                <td>MD004</td>
                <td>Đào Ngọc Hân</td>
                <td>4/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD005</td>
                <td>Nguyễn Hoàng Ánh Dương</td>
                <td>12/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD006</td>
                <td>Lê Quốc Trung</td>
                <td>26/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD007</td>
                <td>Phạm Đức Đại</td>
                <td>19/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD008</td>
                <td>Lê Anh Đức</td>
                <td>8/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD009</td>
                <td>Trần Văn Toàn</td>
                <td>29/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
            <tr class="rows">
                <td>MD010</td>
                <td>Lê Anh Đức</td>
                <td>19/11/2023</td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td><a class="fa fa-check approve-button"> Duyệt</a></td>
            </tr>
        </table>
    </div>

    <div class="panel panel-container da-duyet-table " style="padding-top: 0">
        <table class="order-table">
            <tr class="rows">
                <th colspan="9">Đơn hàng đã duyệt</th>
            </tr>
            <tr class="rows">
                <th class="column">Xóa</th>
                <th class="column">Mã đơn hàng</th>
                <th class="column">Tên người dùng</th>
                <th class="column">Ngày đặt</th>
                <th class="column">Địa chỉ đặt</th>
                <th class="column">Số điện thoại</th>
                <th class="column">Sản phẩm</th>
                <th class="column">Tổng Giá</th>
                <th class="column">Trạng thái</th>
            </tr>
            <tr class="rows" id="row-1">
                <td><a class="fa fa-trash" onclick="deleteRow('row-1')"></a></td>
                <td class="column">
                    MD001
                </td>
                <td class="column">
                    Trần Văn Toàn
                </td>
                <td class="column">
                    1/11/2023
                </td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td class="column">
                    Đã giao hàng
                </td>
            </tr>
            <tr class="rows" id="row-2">
                <td></td>
                <td class="column">
                    MD002
                </td>
                <td class="column">
                    Lê Thị Hạnh Duyên
                </td>
                <td class="column">
                    12/11/2023
                </td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td class="column">
                    Đang giao hàng
                </td>
            </tr>
            <tr class="rows" id="row-3">
                <td></td>
                <td class="column">
                    MD003
                </td>
                <td class="column">
                    Lê Quốc Trung
                </td>
                <td class="column">
                    26/11/2023
                </td>
                <td>Khu phố 6, Phường Linh Trung, Thành Phố Thủ Đức</td>
                <td>0123456789</td>
                <td>Sản phẩm 1 x10, Sản phẩm 2 x5, Sản Phẩm 3 x2</td>
                <td>1.000.000đ</td>
                <td class="column">
                    Đang giao hàng
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

    document.addEventListener('DOMContentLoaded', function () {
        console.log('DOMContentLoaded event fired.');

        // Get references to elements
        var categorySelect = document.getElementById('product-category');
        var chuaDuyetTable = document.querySelector('.chua-duyet-table .order-table');
        var daDuyetTable = document.querySelector('.da-duyet-table .order-table');

        // Log the elements to the console
        console.log('categorySelect:', categorySelect);
        console.log('chuaDuyetTable:', chuaDuyetTable);
        console.log('daDuyetTable:', daDuyetTable);

        // Check if elements exist before accessing their properties
        if (categorySelect && chuaDuyetTable && daDuyetTable) {
            // Set initial display based on the selected category
            var selectedCategory = categorySelect.value;
            if (selectedCategory === '0') {
                chuaDuyetTable.style.display = 'table';
                daDuyetTable.style.display = 'none';
            } else if (selectedCategory === '1') {
                chuaDuyetTable.style.display = 'none';
                daDuyetTable.style.display = 'table';
            }

            // Add event listener to the filter button
            document.querySelector('.product-categorize').addEventListener('click', function () {
                // Get the selected value from the category dropdown
                var selectedCategory = categorySelect.value;

                // Show/hide tables based on the selected category
                if (selectedCategory === '0') {
                    chuaDuyetTable.style.display = 'table';
                    daDuyetTable.style.display = 'none';
                } else if (selectedCategory === '1') {
                    chuaDuyetTable.style.display = 'none';
                    daDuyetTable.style.display = 'table';
                }
            });
        } else {
            console.error('One or more elements not found.');
        }
    });
</script>
<!--Script-->
</body>
</html>