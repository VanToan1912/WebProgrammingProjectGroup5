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
        <li class="active">
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
            <h1 class="page-header">Quản lý người dùng</h1>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div class="category">
            <label for="product-category"></label>
            <select id="product-category">
                <option value="0">Quản Trị Viên/Quản Lí</option>
                <option value="1">Người Dùng</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
            <a href="add-user.jsp" class="product-add" style="float: right"><i class="fa fa-plus"></i> Thêm người
                dùng</a>
        </div>
    </div>

    <div class="panel admin-role" style="padding-top: 0">
        <table class="interface-table">
            <tr class="rows">
                <th colspan="3">Quản trị viên/Quản Lí</th>
            </tr>
            <tr class="rows">
                <th class="column">Tên người dùng</th>
                <th class="column">Đặt lại mật khẩu</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <tr class="rows" id="row-1">
                <td class="column">
                    group5@st.hcmuaf.edu.vn
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-1')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-2">
                <td class="column">
                    21130572@st.hcmuaf.edu.vn
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-2')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-3">
                <td class="column">
                    21130335@st.hcmuaf.edu.vn
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-3')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-4">
                <td class="column">
                    21130584@st.hcmuaf.edu.vn
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-4')"></a>
                </td>
            </tr>
        </table>
    </div>

    <div class="panel user-role" style="padding-top: 0">
        <table class="interface-table">
            <tr class="rows">
                <th colspan="3">Người dùng</th>
            </tr>
            <tr class="rows">
                <th class="column">Tên người dùng</th>
                <th class="column">Đặt lại mật khẩu</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <tr class="rows" id="row-01">
                <td class="column">
                    group5@gmail.com
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-01')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-02">
                <td class="column">
                    jun@gmail.com
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-02')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-03">
                <td class="column">
                    eliza@gmail.com
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-03')"></a>
                </td>
            </tr>
            <tr class="rows" id="row-04">
                <td class="column">
                    chunlee@gmail.com
                </td>
                <td class="column">
                    <a class="fa fa-repeat"></a>
                </td>
                <td class="column">
                    <a class="fa fa-trash" onclick="deleteRow('row-04')"></a>
                </td>
            </tr>
        </table>
    </div>
</div>
<!--Content-->

<!--Script-->
<!--Toggle password-->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        console.log('DOMContentLoaded event fired.');

        // Get references to elements
        var categorySelect = document.getElementById('product-category');
        var adminRoleTable = document.querySelector('.admin-role .interface-table');
        var userRoleTable = document.querySelector('.user-role .interface-table');

        // Log the elements to the console
        console.log('categorySelect:', categorySelect);
        console.log('adminRoleTable:', adminRoleTable);
        console.log('userRoleTable:', userRoleTable);

        // Check if elements exist before accessing their properties
        if (categorySelect && adminRoleTable && userRoleTable) {
            // Set initial display based on the selected category
            var selectedCategory = categorySelect.value;
            if (selectedCategory === '0') {
                adminRoleTable.style.display = 'table';
                userRoleTable.style.display = 'none';
            } else if (selectedCategory === '1') {
                adminRoleTable.style.display = 'none';
                userRoleTable.style.display = 'table';
            }

            // Add event listener to the filter button
            document.querySelector('.product-categorize').addEventListener('click', function () {
                // Get the selected value from the category dropdown
                var selectedCategory = categorySelect.value;

                // Show/hide tables based on the selected category
                if (selectedCategory === '0') {
                    adminRoleTable.style.display = 'table';
                    userRoleTable.style.display = 'none';
                } else if (selectedCategory === '1') {
                    adminRoleTable.style.display = 'none';
                    userRoleTable.style.display = 'table';
                }
            });
        } else {
            console.error('One or more elements not found.');
        }
    });

    function deleteRow(rowId) {
        let row = document.getElementById(rowId);
        row.parentNode.removeChild(row);
    }
</script>
<!--Script-->
</body>
</html>