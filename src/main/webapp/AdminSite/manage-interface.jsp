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
        <li>
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
            <h1 class="page-header">Quản lý giao diện</h1>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div class="category">
            <label for="product-category"></label>
            <select id="product-category">
                <option value="0">Danh mục chính</option>
                <option value="1">Danh mục sản phẩm</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
        </div>
    </div>

    <div class="panel main-interface">
        <table class="interface-table">
            <tr class="rows">
                <th colspan="5">Quản lý danh mục chính</th>
            </tr>
            <tr class="rows">
                <th class="column">Tên danh mục</th>
                <th class="column">Trang chủ</th>
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

    <div class="panel product-interface">
        <table class="interface-table">
            <tr class="rows">
                <th colspan="5">Quản lý danh mục sản phẩm</th>
            </tr>
            <tr class="rows">
                <th class="column">Tên danh mục</th>
                <th class="column">Danh mục</th>
                <th class="column">Hiển thị</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <tr class="rows">
                <td class="column name">CÂY ĂN TRÁI</td>
                <td class="column">
                    <label>
                        <input type="checkbox" checked>
                    </label>
                </td>
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
                        <input type="checkbox">
                    </label>
                </td>
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
                        <input type="checkbox">
                    </label>
                </td>
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
    document.addEventListener('DOMContentLoaded', function () {
        console.log('DOMContentLoaded event fired.');

        // Get references to elements
        let categorySelect = document.getElementById('product-category');
        let mainInterfaceTable = document.querySelector('.main-interface .interface-table');
        let productInterfaceTable = document.querySelector('.product-interface .interface-table');

        // Log the elements to the console
        console.log('categorySelect:', categorySelect);
        console.log('mainInterfaceTable:', mainInterfaceTable);
        console.log('productInterfaceTable:', productInterfaceTable);

        // Check if elements exist before accessing their properties
        if (categorySelect && mainInterfaceTable && productInterfaceTable) {
            // Set initial display based on the selected category
            let selectedCategory = categorySelect.value;
            if (selectedCategory === '0') {
                mainInterfaceTable.style.display = 'table';
                productInterfaceTable.style.display = 'none';
            } else if (selectedCategory === '1') {
                mainInterfaceTable.style.display = 'none';
                productInterfaceTable.style.display = 'table';
            }

            // Add event listener to the filter button
            document.querySelector('.product-categorize').addEventListener('click', function () {
                // Get the selected value from the category dropdown
                let selectedCategory = categorySelect.value;

                // Show/hide tables based on the selected category
                if (selectedCategory === '0') {
                    mainInterfaceTable.style.display = 'table';
                    productInterfaceTable.style.display = 'none';
                } else if (selectedCategory === '1') {
                    mainInterfaceTable.style.display = 'none';
                    productInterfaceTable.style.display = 'table';
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