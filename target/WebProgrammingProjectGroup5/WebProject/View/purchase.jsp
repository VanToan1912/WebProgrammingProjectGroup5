<%@ page import="controller.Cart, controller.CartProduct, bean.Product" %>
<%@ page import="java.util.Map, java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cây giống Sài Gòn - Mua hàng</title>
    <link rel="icon" href="${pageContext.request.contextPath}/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/purchase.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/fonts/themify-icons/themify-icons.css">
</head>

<body>
<header>
    <jsp:include page="../header/header-level2.jsp"></jsp:include>
</header>

<div class="content">
    <div class="row-content">
        <div class="col-content-1">
            <form class="woocommerce-cart-form" action="">
                <div class="cart-wrapper sm-touch-scroll">
                    <table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents">
                        <thead>
                        <tr>
                            <th class="product-name" colspan="2">Sản phẩm</th>
                            <th class="product-price">Giá</th>
                            <th class="product-quantity">Số lượng</th>
                            <th class="product-subtotal">Tạm tính</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            Cart cart = (Cart) session.getAttribute("cart");
                            if (cart != null) {
                                Map<Integer, CartProduct> cartData = cart.getData();

                                if (cartData != null && !cartData.isEmpty()) {
                                    for (CartProduct cartProduct : cartData.values()) {
                                        Product product = cartProduct.getProduct();
                        %>
                        <tr class="woocommerce-cart-form__cart-item cart_item">
                            <td class="product-thumbnail">
                                <img src="<%=product.getImageUrls().get(0)%>" alt="<%=product.getProductName()%>"
                                     width="110" height="110" alt="No Image">
                            </td>
                            <td class="product-name" data-title="Sản phẩm">
                                <a href=""><%=product.getProductName()%></a>
                            </td>
                            <td class="product-price" data-title="Giá">
                                        <span class="woocommerce-Price-amount amount">
                                            <bdi><%=product.getPrice()%><span class="woocommerce-Price-currencySymbol">₫</span></bdi>
                                        </span>
                            </td>
                            <td class="product-quantity" data-title="Số lượng">
                                <div class="quantity-buttons_added">
                                    <input type="number" id="quantity_<%=product.getProductId()%>"
                                           class="input-text qty text" step="1" min="0" max=""
                                           name="cart[<%=product.getProductId()%>][qty]"
                                           value="<%=cartProduct.getQuantity()%>" title="SL" size="4" placeholder=""
                                           inputmode="numeric">
                                </div>
                            </td>
                            <td class="product-subtotal" data-title="Tạm tính">
                                        <span class="woocommerce-Price-amount amount">
                                            <bdi><%=cartProduct.getSubtotal()%><span class="woocommerce-Price-currencySymbol">₫</span></bdi>
                                        </span>
                            </td>
                        </tr>
                        <%
                                    }
                                }
                            }
                        %>
                        <tr>
                            <td colspan="6" class="actions clear">
                                <div class="continue-shopping pull-left text-left">
                                    <a class="button-continue-shopping button primary is-outline"
                                       href="<%=request.getContextPath()%>/products">←&nbsp;Tiếp tục xem sản phẩm </a>
                                </div>
                                <div class="continue-shopping pull-left text-left">
                                    <a class="button-continue-shopping button primary is-outline" href="">
                                        Cập nhật giỏ hàng</a>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
        <div class="cart-collaterals large-5 col pb-0">
            <div class="cart-sidebar col-inner ">
                <div class="cart_totals ">
                    <table cellspacing="1">
                        <thead>
                        <tr>
                            <th class="product-name">Cộng giỏ hàng</th>
                        </tr>
                        </thead>
                    </table>
                    <table cellspacing="0" class="shop_table shop_table_responsive">
                        <tbody>
                        <tr class="cart-subtotal">
                            <th>Tạm tính</th>
                            <td data-title="Tạm tính">
                                        <span class="woocommerce-Price-amount amount">
                                            <bdi><%= cart.getTotal() %><span
                                                    class="woocommerce-Price-currencySymbol">₫</span></bdi>
                                        </span>
                            </td>
                        </tr>
                        <tr class="order-total">
                            <th>Tổng</th>
                            <td data-title="Tổng">
                                <strong><span class="woocommerce-Price-amount amount">
                                                <bdi><%= cart.getTotal() %><span
                                                        class="woocommerce-Price-currencySymbol">₫</span></bdi>
                                            </span></strong>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="thanh-toan">
                        <a href="../pay-product.html" class="button-thanh-toan">
                            Tiến hành thanh toán
                        </a>
                    </div>
                </div>
                <div class="cart-sidebar-content relative"></div>
            </div>
        </div>
    </div>
</div>

<footer>
    <jsp:include page="../footer/footer-level1.jsp"></jsp:include>
</footer>

<div class="clear"></div>
<!-- ẨN HIỆN LIST-MENU -->
<%--<script src="${pageContext.request.contextPath}/WebProject/asset/js/show-hide-menu.js"></script>--%>
<script>
// Lấy phần tử nút kích hoạt
const toggleButton = document.getElementById("toggle-products");
// Lấy danh sách sản phẩm
const productList = document.querySelector(".sub-nav");

// Thêm sự kiện click cho nút kích hoạt
toggleButton.addEventListener("click", function (e) {
e.preventDefault(); // Ngăn chặn chuyển hướng đến "#"

// Kiểm tra nếu danh sách sản phẩm đã ẩn, thì hiển thị, ngược lại, ẩn đi
if (productList.style.display === "none" || productList.style.display === "") {
productList.style.display = "block";
} else {
productList.style.display = "none";
}
});
</script>
<!-- END ẨN HIỆN LIST-MENU -->
</body>

</html>
