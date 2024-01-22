<%@ page import="bean.Product" %>
<%@ page import="dao.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!-- Other imports and meta tags -->

<body>
<!-- Top-Bar and Sidebar -->
<header>
    <jsp:include page="/AdminSite/header/header.jsp"></jsp:include>
</header>
<!-- Top-Bar and Sidebar -->

<!-- Content -->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Chỉnh sửa sản phẩm</h1>
        </div>
    </div>

    <!-- Form for editing product -->
    <form action="UpdateProductServlet" method="post">
        <!-- Hidden input field for productId -->
        <input type="hidden" name="productId" value="<%= request.getParameter("productId") %>">
        <% Product product;
            product = ProductDAO.getProductByPdID(Integer.parseInt(request.getParameter("productId")));
            assert product != null;%>

        <!-- Other input fields for editing product details -->
        <div class="panel product">
            <h4 class="page-header">Tên sản phẩm</h4>
            <div class="input-component">
                <label for="productName"></label>
                <input type="text" id="productName" name="productName" required="required" value="<%= product.getProductName() %>">
            </div>
        </div>

        <div class="panel product">
            <h4 class="page-header">Danh mục</h4>
            <div class="input-component">
                <label for="categories"></label>
                <input type="text" id="categories" name="categories" required="required" value="<%= product.getCategories() %>">
            </div>
        </div>

        <div class="panel product">
            <h4 class="page-header">Số lượng</h4>
            <div class="input-component">
                <label for="quantity"></label>
                <input type="number" id="quantity" name="quantity" required="required" value="<%= product.getQuanity() %>">
            </div>
        </div>

        <div class="panel product">
            <h4 class="page-header">Giá</h4>
            <div class="input-component">
                <label for="price"></label>
                <input type="text" id="price" name="price" required="required" value="<%= product.getPrice() %>">
            </div>
        </div>

        <!-- Submit button -->
        <div class="panel product">
            <button type="submit" class="post"><i class="fa fa-plus"> Lưu chỉnh sửa</i></button>
        </div>
    </form>
    <!-- End of form -->
</div>
<!-- Content -->
<!-- Other scripts -->
</body>
</html>
