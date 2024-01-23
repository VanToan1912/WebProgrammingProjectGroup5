<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
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
            <h1 class="page-header">Quản lý người dùng</h1>
        </div>
    </div>


    <div class="panel" style="padding-top: 0">
        <table class="interface-table">
            <tr class="rows">
                <th class="column">Tài khoản</th>
                <th class="column">Vai trò</th>
                <th class="column">Tên người dùng</th>
                <th class="column">Giới tính</th>
                <th class="column">Địa chỉ</th>
                <th class="column">Số điện thoại</th>
                <th class="column">Chỉnh sửa</th>
            </tr>
            <% for (User u : UserDAO.getAllUser()) { %>
            <tr class="rows">
                <td><%=u.getEmail()%>
                </td>
                <td><%=u.getRole()%>
                </td>
                <td><%=u.getFirstName() + u.getLastName()%>
                </td>
                <td><%=u.getGender()%>
                </td>
                <td><%=u.getAddress()%>
                </td>
                <td><%=u.getPhone()%>
                </td>
                <td><a class="fa fa-trash" onclick="deleteRow('row-1')"></a>
                </td>
            </tr>
            <% } %>
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