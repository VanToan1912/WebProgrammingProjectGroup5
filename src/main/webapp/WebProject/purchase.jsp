<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cây giống Sài Gòn - Mua hàng</title>
    <link rel="icon" href="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="asset/css/purchase.css">
    <link rel="stylesheet" href="asset/css/head-foot.css">
    <link rel="stylesheet" href="asset/fonts/themify-icons/themify-icons.css">
</head>

<body>
<header id="header">
    <div class="nav-bar top-bar ">
        <div class="web-name mg-left" style="font-weight: bold"> Trung Tâm Cây Giống Sài Gòn</div>
        <nav class="list-contact-infor ">
            <ul>
                <li>
                    <div class="contact-infor">
                        <i class="ti-help"></i>
                        <p class="tooltip">Hỗ trợ
                            <span class="tooltiptext">Hỗ trợ</span>
                        </p>

                    </div>
                </li>
                <li>
                    <a href="#" class="tooltip ti-time"> 8:00 - 17:00
                        <span class="tooltiptext">8:00 - 17:00</span></a>
                </li>
                <li>
                    <a href="#" class="tooltip ti-mobile"> 0929729120
                        <span class="tooltiptext">0929729120</span></a>
                </li>
                <li>
                    <a href="#" class="tooltip ti-facebook">
                        <span class="tooltiptext">Theo dõi chúng tôi</span></a>
                </li>
                <li>
                    <a href="mailto:mail@mail.com" class="tooltip ti-email">
                        <span class="tooltiptext">Đóng góp ý kiến</span></a>
                </li>
                <li>
                    <a href="register.jsp">
                        <button class="sign-up-button">
                            Đăng Ký
                        </button>
                    </a>

                    /
                    <a href="login.html">
                        <button class="login-button">
                            Đăng Nhập
                        </button>
                    </a>
                    <a href="user_page.jsp" class="tooltip ti-user" id="userIcon" style="display: none;">
                        <span class="tooltiptext">Tài khoản của tôi</span></a>
                </li>

            </ul>
        </nav>
    </div>

    <div class="nav-bar middle-bar row-head ">
        <div class="col-head mg-left">
            <a href="index.html"><img src="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="logo"
                                      class="logo "></a>
        </div>
        <div class="col-head">
            <form>
                <label>
                    <input placeholder="Tìm kiếm...">
                </label>
                <button type="submit" class="search-button"><i class="ti ti-search"></i></button>
            </form>
        </div>
        <a href="purchase.html">
            <div class="col-head">
                <button class="cart-button">
                    <i class="ti-shopping-cart">0.000đ</i>
                </button>
            </div>
        </a>
    </div>
    <!-- BEGIN NAV -->
    <ul id="nav" class="back-dark-green">
        <li>
            <a href="#" id="toggle-products">
                <i class="nav-menu ti-menu"></i>
                DANH MỤC SẢN PHẨM

            </a>
            <ul class="sub-nav" style="display: none;">
                <li><a href="product.html">
                    <i class="ti-control-play"></i>
                    CÂY ĂN TRÁI
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY CÓ HOA
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY HOA LEO
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY CÂY CẢNH
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY LỚN
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY ĐỘC LẠ - HIẾM
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY BONSAI
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    CÂY GIỐNG
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    HOA LAN
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    HOA LAN CÂY GIỐNG
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    PHÂN BÓN-VẬT TƯ
                </a></li>
                <li><a href="#">
                    <i class="ti-control-play"></i>
                    SẢN PHẨM KHUYẾN MÃI
                </a></li>
            </ul>
        </li>
        <li class=" nav-togethger"><a href="index.html">TRANG CHỦ</a></li>
        <li class="  nav-togethger"><a href="introduce.jsp" class="nav-togethger">GIỚI THIỆU</a></li>
        <li class=" nav-togethger"><a href="product.html">SẢN PHẨM</a></li>
        <li class="nav-togethger"><a href="instruct.html">HƯỚNG DẪN MUA HÀNG</a></li>
        <li class="nav-togethger"><a href="news.html">TIN TỨC</a></li>
    </ul>


    <!-- END NAV -->
    <div class="clear"></div>
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
                        <tr class="woocommerce-cart-form__cart-item cart_item">


                            <td class="product-thumbnail">
                                <img src="asset/img/phan-vo-co/chuyên%20ra%20hoa%20flowermate.jpg" alt=""
                                     width="110" height="110">
                            </td>

                            <td class="product-name" data-title="Sản phẩm">
                                <a href="">Phân Bón Chuyên Ra Hoa Flowermate 240</a>
                                <div class="show-for-small mobile-product-price">
                                    <!--                                        <span class="mobile-product-price__qty"> x </span>-->
                                    <span class="woocommerce-Price-amount amount"><bdi>35.000<span
                                            class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                                </div>
                            </td>

                            <td class="product-price" data-title="Giá">
                                        <span class="woocommerce-Price-amount amount"><bdi>35.000<span
                                                class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                            </td>

                            <td class="product-quantity" data-title="Số lượng">
                                <div class="quantity-buttons_added">
                                    <input type="button" value="-" class="minus button is-form"
                                           cursorshover="true">
                                    <!--                                       <label class="screen-reader-text">Số lượng</label>-->
                                    <input type="number" id="quantity_65421b0e1e046" class="input-text qty text"
                                           step="1" min="0" max=""
                                           name="cart[9a3f263a5e5f63006098a05cd7491997][qty]" value="3" title="SL"
                                           size="4" placeholder="" inputmode="numeric">
                                    <input type="button" value="+" class="plus button is-form"
                                           cursorshover="true">
                                </div>
                            </td>

                            <td class="product-subtotal" data-title="Tạm tính">
                                        <span class="woocommerce-Price-amount amount"><bdi>105.000<span
                                                class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                            </td>
                        </tr>


                        <tr>
                            <td colspan="6" class="actions clear">


                                <div class="continue-shopping pull-left text-left">
                                    <a class="button-continue-shopping button primary is-outline"
                                       href="product.html">
                                        ←&nbsp;Tiếp tục xem sản phẩm </a>
                                </div>

                                <div class="continue-shopping pull-left text-left">
                                    <a class="button-continue-shopping button primary is-outline" href="">
                                        Cập nhật giỏ hàng</a>
                                </div>
                                <!--                                   <button type="submit" class="button primary mt-0 pull-left small" name="update_cart" value="Cập nhật giỏ hàng">-->
                                <!--                                       <a>Cập nhật giỏ hàng</a></button>-->

                                <!--                                   <input type="hidden" id="woocommerce-cart-nonce" name="woocommerce-cart-nonce" value="e09ac9c2ff"><input type="hidden" name="_wp_http_referer" value="/gio-hang/">-->
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
                            <td data-title="Tạm tính"><span
                                    class="woocommerce-Price-amount amount"><bdi>18.000<span
                                    class="woocommerce-Price-currencySymbol">₫</span></bdi></span></td>
                        </tr>
                        <tr class="woocommerce-shipping-totals shipping ">
                            <td class="shipping__inner" colspan="2">
                                <table class="shipping__table ">
                                    <tbody>
                                    <tr>
                                        <th>Giao hàng</th>
                                        <td data-title="Giao hàng">
                                            <ul id="shipping_method"
                                                class="shipping__list woocommerce-shipping-methods">
                                                <li class="shipping__list_item">
                                                    <input type="hidden" name="shipping_method[0]"
                                                           data-index="0" id="shipping_method_0_flat_rate1"
                                                           value="flat_rate:1" class="shipping_method"><label
                                                        class="shipping__list_label"
                                                        for="shipping_method_0_flat_rate1"
                                                        cursorshover="true">Giao tại nhà toàn quốc chỉ:
                                                    <span class="woocommerce-Price-amount amount"><bdi>40.000<span
                                                            class="woocommerce-Price-currencySymbol">₫</span></bdi></span></label>
                                                </li>
                                            </ul>
                                            <p class="woocommerce-shipping-destination">
                                                Tùy chọn giao hàng sẽ được cập nhật trong quá trình thanh
                                                toán.
                                            </p>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr class="order-total">
                            <th>Tổng</th>
                            <td data-title="Tổng"><strong><span
                                    class="woocommerce-Price-amount amount"><bdi>18.000<span
                                    class="woocommerce-Price-currencySymbol">₫</span></bdi></span></strong>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="thanh-toan">
                        <a href="pay-product.html" class="button-thanh-toan">
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
    <div class="row-footer">
        <div class="col-footer">
            <img src="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="" class="logo-footer" width="75%">
        </div>
        <div class="col-footer">
            <h3>Giới Thiệu</h3>
            <p>Điểm đến lý tưởng cho những người yêu đam mê và đang tìm kiếm cây giống nông nghiệp chất lượng
                cao. Với
                mục tiêu hỗ trợ và nâng cao năng suất trong nông nghiệp.</p>
        </div>
        <div class="col-footer">
            <h3>Văn phòng</h3>
            <p>Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</p>
            <p class="email-id">nls@hcmuaf.edu.vn</p>
            <p>028-38974560</p>
        </div>
        <div class="col-footer">
            <h3>Thông Tin</h3>
            <ul>
                <li><a href="index.html">Trang Chủ</a></li>
                <li><a href="introduce.jsp">Giới Thiệu</a></li>
                <li><a href="product.html">Sản Phẩm</a></li>
                <li><a href="instruct.html">Hướng Dẫn Mua Hàng</a></li>
                <li><a href="news.html">Tin Tức</a></li>

            </ul>
        </div>
        <div class="col-footer">
            <h3>Nhận Email Thông Báo</h3>
            <form>
                <i class="ti ti-email"></i>
                <label>
                    <input type="email" placeholder="Nhập email của bạn..." required>
                </label>
                <button type="submit"><i class="ti ti-arrow-right"></i></button>
            </form>
            <nav class="socials">
                <a href="#" class="tooltip ti-facebook">
                    <span class="tooltiptext">Theo Dõi Chúng Tôi</span></a>
                <a href="#" class="tooltip ti-mobile">
                    <span class="tooltiptext">0929729120</span></a>
                <a href="mailto:mail@mail.com" class="tooltip ti-email">
                    <span class="tooltiptext">Đóng Góp Ý Kiến</span></a>
            </nav>
        </div>
    </div>
</footer>
<div class="clear"></div>
</body>

</html>