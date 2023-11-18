<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="WebProject/asset/css/product.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="WebProject/asset/js/script.js">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">

</head>

<body>
<div id="main">
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
                        <a href="WebProject/register.html">
                            <button class="sign-up-button">
                                Đăng Ký
                            </button>
                        </a>

                        /
                        <a href="WebProject/login.html">
                            <button class="login-button">
                                Đăng Nhập
                            </button>
                        </a>
                        <a href="WebProject/user_page.html" class="tooltip ti-user" id="userIcon" style="display: none;">
                            <span class="tooltiptext">Tài khoản của tôi</span></a>
                    </li>

                </ul>
            </nav>
        </div>

        <div class="nav-bar middle-bar row-head ">
            <div class="col-head mg-left">
                <a href="WebProject/index.html"><img src="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="logo" class="logo "></a>
            </div>
            <div class="col-head">
                <form>
                    <label>
                        <input placeholder="Tìm kiếm...">
                    </label>
                    <button type="submit" class="search-button"><i class="ti ti-search"></i></button>
                </form>
            </div>
            <a href="WebProject/purchase.html">
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
                <ul class="sub-nav">
                    <li><a href="WebProject/product.html">
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
            <li class="nav-text-product nav-togethger"><a href="WebProject/index.html">TRANG CHỦ</a></li>
            <li class="nav-togethger"><a href="WebProject/introduce.html" class="nav-togethger">GIỚI THIỆU</a></li>
            <li class=" nav-togethger"><a href="WebProject/product.html">SẢN PHẨM</a></li>
            <li class="nav-togethger"><a href="WebProject/instruct.html">HƯỚNG DẪN MUA HÀNG</a></li>
            <li class="nav-togethger"><a href="WebProject/news.html">TIN TỨC</a></li>
        </ul>
        <!-- END NAV -->
        <div class="clear"></div>
    </header>


    <!-- BEGIN SLIDER -->
    <div class="slider-container">
        <!-- Slides -->
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-kim-ngan.jpg" alt="Slide 1">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-lan-hoang-duong.jpg" alt="Slide 2">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-mai-xanh-thai.jpg" alt="Slide 3">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-cop-vang.jpg" alt="Slide 3">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-mong-cop-xanh.jpg" alt="Slide 3">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-moc-huong.jpg" alt="Slide 3">
        </div>
        <div class="slide">
            <img src="WebProject/asset/img/anh-slideshow/hoa-rang-dong.jpg" alt="Slide 3">
        </div>


        <!-- Slideshow Indicators -->
        <div class="indicator-container">
            <span class="indicator"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
        </div>
    </div>


    <!-- END SLIDER -->
    <!-- SERVICE -->
    <div id="service">
        <div class=" sub-service transport">
            <img class="img-service" src="WebProject/asset/img/dich-vu/van-chuyen.png" alt="" width=30%>
            <h5 class="text-head-service">VẬN CHUYỂN TOÀN QUỐC</h5>
            <p class="slogan-service">Ship hàng toàn quốc cho dù bạn ở đâu.</p>
        </div>
        <div class=" sub-service  delivery">
            <img class="img-service" src="WebProject/asset/img/dich-vu/giao-hang.png" alt="" width=30%>
            <h5 class="text-head-service">GIAO HÀNG THU TIỀN TẠI NHÀ</h5>
            <p class="slogan-service">Giao hàng thu tiền tại nhà trên toàn quốc.</p>
        </div>
        <div class=" sub-service support">
            <img class="img-service" src="WebProject/asset/img/dich-vu/ho-tro.png" alt="" width=30%>
            <h5 class="text-head-service">HỖ TRỢ KĨ THUẬT</h5>
            <p class="slogan-service">Hỗ trợ kĩ thuật trong quá trình trồng.</p>
        </div>
    </div>
    <div class="clear"></div>
    <!-- END SERVICE -->
    <div id="content">


        <!-- SALE-PRODUCT -->
        <div id="sale-products">
            <h3 class="text-sale-product">
                SẢN PHẨN KHUYẾN MÃI
            </h3>
            <div class="list-procduct row">
                <div class="  col col-fifth container-product">
                    <img class="size-img" src="WebProject/asset/img/san-pham-khuyen-mai/Phan-vi-sinh.jpg" alt="">
                    <p class="text-sale back-orange">Giảm giá!</p>
                    <p class="text-review review">XEM NHANH</p>

                    <p class="name-product">Phân vi sinh Trichoderma 1kg</p>
                    <div class="price">
                        <p class="price-initial text-gray">89.000đ</p>
                        <span>
                                <p class="price-sale  text-black">79.000đ</p>
                            </span>
                    </div>
                    <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                </div>

                <div class=" col col-fifth container-product">
                    <img class="size-img" src="WebProject/asset/img/san-pham-khuyen-mai/phan-chuyen-ra-hoa.jpg" alt="">
                    <p class="text-sale back-orange">Giảm giá!</p>
                    <p class="text-review review">XEM NHANH</p>

                    <p class="name-product">Phân Bón Chuyên Ra Hoa Flowermate 240</p>
                    <div class="price">
                        <p class="price-initial text-gray">42.000đ</p>
                        <span>
                                <p class="price-sale  text-black">35.000đ</p>
                            </span>
                    </div>
                    <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                </div>

                <div class="  col col-fifth container-product">
                    <img class="size-img" src="WebProject/asset/img/san-pham-khuyen-mai/phan-huu-co-khoang.jpg" alt="">
                    <p class="text-sale back-orange">Giảm giá!</p>
                    <p class="text-review review">XEM NHANH</p>

                    <p class="name-product">Phân bón hữu cơ khoáng túi lưới cho phong lan, bon sai 5-5-5 + TE</p>
                    <div class="clear"></div>
                    <div class="price">
                        <p class="price-initial text-gray">60.000đ</p>
                        <span>
                                <p class="price-sale  text-black">55.000đ</p>
                            </span>
                    </div>
                    <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                </div>

                <div class="col col-fifth container-product">
                    <img class="size-img" src="WebProject/asset/img/san-pham-khuyen-mai/combo-3-lo-kich-re.jpg" alt="">
                    <p class="text-sale back-orange">Giảm giá!</p>
                    <p class="text-review review">XEM NHANH</p>

                    <p class="name-product">Combo 3 lọ Kích Rễ – Kích Chồi – Kích Hoa Seasol – Org Hum – Powerfeed
                    </p>
                    <div class="price">
                        <p class="price-initial text-gray">120.000đ</p>
                        <span>
                                <p class="price-sale  text-black">100.000đ</p>
                            </span>
                    </div>
                    <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                </div>


                <div class=" col col-fifth container-product">
                    <img class="size-img" src="WebProject/asset/img/san-pham-khuyen-mai/combo-3-hop-chuyen-Lan.jpg" alt="">
                    <p class="text-sale back-orange">Giảm giá!</p>
                    <p class="text-review review">XEM NHANH</p>

                    <p class="name-product">Combo 3 hộp Phân bón Chuyên Lan FLOWERMATE 230 -NPK 23-08-08</p>
                    <div class="price">
                        <p class="price-initial text-gray">120.000đ</p>
                        <span>
                                <p class="price-sale  text-black">100.000đ</p>
                            </span>
                    </div>
                    <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>

            </div>
            <div class="clear"></div>

        </div>

        <!-- END-SALE-PRODUCT -->

        <!-- SP-CO-HOA -->

        <div class="product-bar row-bar  back-dark-green ">
            <h3>CÂY CÓ HOA</h3>
            <a href="#" style="text-decoration: none">
                <p class="text-view-more">Xem thêm
                    <span><i class="ti-angle-right icon-view-more"></i></span>
                </p>

            </a>

        </div>

        <!-- CONTENT-SP-CO-HOA -->

        <div class="list-procduct  row">
            <div class="col col-fifth container-product">
                <img class="size-img"
                     src="WebProject/asset/img/cay-co-hoa/moc-huong-1m-1m2/70423934_2486525384912493_2363397696988905472_n (1).jpg"
                     alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">CÂY MỘC HƯƠNG – HOA THƠM NGÁT 1m -1,2m</p>
                <div class="price">
                    <!-- <p class="price-initial text-gray">89.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">380.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img"
                     src="WebProject/asset/img/cay-co-hoa/mai-xanh-thai/274978188_3232889670276057_9171362313830251002_n-510x638.jpg"
                     alt="Full Screen Image">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">CÂY MAI XANH THÁI</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">80.000đ – 520.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-co-hoa/lieu dang tieu/jvbhdvgdhksvgdd-510x341.jpg"
                     alt="Full Screen Image">
                <!-- <img class="size-img size-img1" src="../WebProject/asset/img/cây có hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY HOA LEO ĐĂNG TIÊU</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">200.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product"><img class="size-img"
                                                                src="WebProject/asset/img/cay-co-hoa/mong-cop-xanh-50cm/hoa-mong-cop-510x510.jpg"
                                                                alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY HOA MÓNG CỌP XANH 50cm</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product "><img class="size-img"
                                                                src="WebProject/asset/img/cay-co-hoa/combo-chum-ot-45cm/151589468_271056291092275_6391347861357437891_n-510x680.jpg"
                                                                alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Combo 2 Cây giống hoa chùm ớt 45 – 50cm (Rạng đông)</p>
                <div class="price">
                    <p class="price-initial text-black">200.000đ</p>
                    <span>
                            <p class="price-sale text-black">169.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>

        <div class="list-procduct row">
            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-co-hoa/lan hoang duong/1.jpg" alt="Full Screen Image">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">LAN HOÀNG DƯƠNG</p>
                <div class="price">
                    <p class="price-initial text-gray">180.000đ</p>
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-co-hoa/phuong tim/hfgdfgjdshfgdjsf-510x383.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY PHƯỢNG TÍM</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000₫</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img"
                     src="WebProject/asset/img/cay-co-hoa/linh-sam-sieu-hoa-70cm/201604033667-4ab1-4e47-9112-ddc1412860a9-1-510x683.jpg"
                     alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY LINH SAM SIÊU HOA 70cm</p>
                <div class="price">
                    <p class="price-initial text-black">250.000đ</p>
                    <span>
                            <p class="price-sale text-black">200.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-co-hoa/moc-huong-cao-80cm/cay-moc-huong-2-510x501.jpg"
                     alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY HOA MỘC HƯƠNG CAO 80cm</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">290.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product"><img class="size-img"
                                                               src="WebProject/asset/img/cay-co-hoa/hanh phuc/cay-hoa-hanh-phuc-2-510x293.jpg"
                                                               alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY HOA HẠNH PHÚC</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>
        <!-- END-CONTENT-SP-CO-HOA -->

        <!-- BAR-HOA-LAN -->

        <div class="product-bar  row-bar   back-dark-green ">
            <h3>HOA LAN</h3>
            <a href="#" style="text-decoration: none">
                <p class="text-view-more">Xem thêm
                    <span><i class="ti-angle-right icon-view-more"></i></span>
                </p>

            </a>

        </div>
        <!-- CONTENT-SP-HOA-LAN -->
        <div class="list-procduct  row">
            <div class="col col-fifth container-product">
                <img class="size-img"
                     src="WebProject/asset/img/hoa-lan/lan-ngoc-diem-lon/dddd-510x510.jpg"
                     alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">LAN GIỐNG NGỌC ĐIỂM</p>
                <div class="price">
                    <p class="price-initial text-gray">300.000đ</p>
                    <span>
                            <p class="price-sale text-black">3250.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/hoa-lan/tram/TRAM-510x510.jpg" alt="Full Screen Image">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">TRẦM</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/hoa-lan/lan-ngoc-diem(cay- ho)/IMG20190610092525-510x510.jpg"
                     alt="Full Screen Image">

                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">LAN NGỌC ĐIỂM (CÂY NHỠ)</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">200.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product"><img class="size-img"
                                                                src="WebProject/asset/img/hoa-lan/lan-ngoc-diem-truong-thanh/33fb9c8a39d5c48b9dc4-510x680.jpg"
                                                                alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">LAN NGỌC ĐIỂM TRƯỞNG THÀNH</p>
                <div class="price">
                    <p class="price-initial text-black">350.000đ</p>
                    <span>
                            <p class="price-sale text-black">300.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product "><img class="size-img"
                                                                src="WebProject/asset/img/hoa-lan/lan-ngoc-diem-lon/dddd-510x510.jpg"
                                                                alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">LAN NGỌC ĐIỂM LỚN</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">200.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>
        <!-- END-CONTENT-SP-HOA-LAN -->

        <!-- BAR-CAY-AN-QUA -->


        <div class="product-bar  row-bar  back-dark-green ">
            <h3>CÂY ĂN QUẢ</h3>
            <a href="WebProject/product.html" style="text-decoration: none">
                <p class="text-view-more">Xem thêm
                    <span><i class="ti-angle-right icon-view-more"></i></span>
                </p>

            </a>

        </div>
        <!-- CONTENT-CAY-ĂN-QUẢ -->
        <div class="list-procduct row">
            <div class="col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/chanh-chuc/1.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">Cây Chanh Chúc (Chanh thái)</p>
                <div class="price">
                    <p class="price-initial text-gray">150.000đ</p>
                    <span>
                            <p class="price-sale text-black">120.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/tao thai/1.jpg" alt="Full Screen Image">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">CÂY TÁO THÁI</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">120.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/luu-an-do/1.jpg" alt="Full Screen Image">

                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">LỰU ĐỎ ẤN ĐỘ</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">300.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product"><img class="size-img"
                                                                src="WebProject/asset/img/cay-an-qua/chanh-leo/1.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY CHANH LEO (CHANH DÂY)</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">180.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product ">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/siro-sieu-trai/1.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY SIRO SIÊU TRÁI 1-1.2M</p>
                <div class="price">
                    <p class="price-initial text-black">420.000đ</p>
                    <span>
                            <p class="price-sale text-black">380.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>

        <div class="list-procduct row">
            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/cherry -70-80cm/1.jpg" alt="Full Screen Image">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY CHERRY BRAZIL 70-80cm</p>
                <div class="price">
                    <p class="price-initial text-gray">400.000đ</p>
                    <span>
                            <p class="price-sale text-black">350.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/nho/1.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">NHO THÂN GỖ</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">200.000₫</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/oi-nu-hoang/hjdsgfjdhsgfdhjgfdhsgf-510x383.jpg"
                     alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY ỔI NỮ HOÀNG</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">250.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">200.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/cay-an-qua/coc/1.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY CÓC THÁI</p>
                <div class="price">
                    <p class="price-initial text-black">150.000đ</p>
                    <span>
                            <p class="price-sale text-black">100.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product"><img class="size-img"
                                                               src="WebProject/asset/img/cay-an-qua/oi se la ri/1.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CÂY ỔI SẺ LÁ RÍ</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">150.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>
        <!-- END-CONTENT-SP-CO-HOA -->

        <!-- BAR-PHÂN-BÓN-VẬT-TƯ-->

        <div class="product-bar  row-bar  back-dark-green ">
            <h3>PHÂN BÓN-VẬT TƯ</h3>
            <a href="#" style="text-decoration: none">
                <p class="text-view-more">Xem thêm
                    <span><i class="ti-angle-right icon-view-more"></i></span>
                </p>

            </a>

        </div>
        <!-- CONTENT-PHÂN-BÓN-VẠT-TƯ -->
        <div class="list-procduct row">
            <div class="col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/n3m.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">Kích Ra Rễ Cực Mạnh N3M Pro (20ml)</p>
                <div class="price">
                    <p class="price-initial text-gray">25.000đ</p>
                    <span>
                            <p class="price-sale text-black">20.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/sieu-lan.jpg" alt="Full Screen Image">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review  review">XEM NHANH</p>

                <p class="name-product">Phân Bón Lá Siêu Lân Hà Lan 10-55-10+Te</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">120.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/hung-nguyen.jpg" alt="Full Screen Image">

                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Chế phẩm hùng nguyễn Siêu ra rể, kích keiki, trừ nhiều loại nấm</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">29.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product"><img class="size-img"
                                                                src="WebProject/asset/img/phan-bon-vat-tu/trau-hun.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Trấu hun xay trồng cây giúp cây giữ nước, giữ phân tốt 500gr</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">22.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product ">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/Benkona.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Thuốc Sát Trùng Hoa Lan BENKONA 100ml</p>
                <div class="price">
                    <p class="price-initial text-black">38.000đ</p>
                    <span>
                            <p class="price-sale text-black">30.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>
            <div class="clear"></div>
        </div>

        <div class="list-procduct row">
            <div class="  col col-fifth container-product"><img class="size-img"
                                                                src="WebProject/asset/img/phan-bon-vat-tu/n3m-500g-510x510.jpg"
                                                                alt="Full Screen Image">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Thuốc Kích Ra Rễ Cây N3M 500G</p>
                <div class="price">
                    <!-- <p class="price-initial text-gray">400.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">135.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/Phan-bo-3dm-510x510.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Phân bò hữu cơ đã qua xử lý 3DM3</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">33.000₫</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/ba-tru-kien-510x510.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Bả trừ kiến tận tổ BTK – Gói 5g</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">250.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">18.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-fifth container-product">
                <img class="size-img" src="WebProject/asset/img/phan-bon-vat-tu/Regent-510x510.jpg" alt="">
                <p class="text-sale back-orange">Giảm giá!</p>
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">Thuốc đặc trị Regent</p>
                <div class="price">
                    <p class="price-initial text-black">30.000đ</p>
                    <span>
                            <p class="price-sale text-black">20.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>
            <div class=" col col-fifth container-product"><img class="size-img"
                                                               src="WebProject/asset/img/phan-bon-vat-tu/chau-cay.jpg" alt="">
                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                <p class="text-review review">XEM NHANH</p>

                <p class="name-product">CHẬU TRỒNG LAN GỖ NHÃN</p>
                <div class="price">
                    <!-- <p class="price-initial text-black">120.000đ</p> -->
                    <span>
                            <p class="price-sale text-black">20.000đ</p>
                        </span>
                </div>
                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

            </div>

        </div>
        <!-- END-CONTENT-PHAN-BON-VAT-TU-->
        <div class="clear"></div>
        <!-- NEWS -->
        <div class="news row">
            <div class="line"></div>
            <p class="text-news"><i class="ti-star"></i> TIN MỚI</p>
        </div>
        <!-- CONTENT-NEWS -->
        <div class="list-procduct row">
            <a href="WebProject/stock-news.html">
                <div class="col col-four container-news">
                    <img class="size-img" src="WebProject/asset/img/anh-tin-cay-giong/mai-xanh-thai.jpg" alt="">
                    <p class="title-news">
                        PHÂN BIỆT MAI XANH THÁI VÀ MAI XANH ĐÀ LẠT</p>
                    <div class="line-news"></div>
                    <p class="infor-news">Trên thị trường rất nhiều nơi bán cây mai xanh với giá khách nhau. Bạn [...]
                    </p>
                </div>

            </a>
            <a href="#">
                <div class="col col-four container-news">
                    <img class="size-img" src="WebProject/asset/img/anh-tin-cay-giong/chuoi-tai-loc.jpg" alt="">
                    <p class="title-news">
                        Mua cây chuối tài lộc ở đâu?</p>
                    <div class="line-news"></div>
                    <p class="infor-news">Hiện nay trên thị trường có rất nhiều cây cảnh độc lạ có kích thước [...]</p>
                </div>
            </a>

            <a href="#">
                <div class="col col-four container-news">
                    <img class="size-img" src="WebProject/asset/img/anh-tin-cay-giong/chuoi-sen.jpg" alt="">
                    <p class="title-news">
                        Cây chuối sen</p>
                    <div class="line-news"></div>
                    <p class="infor-news">Cây chuối sen hay còn gọi là cây chuối tài lộc được biết đến bởi hình [...]
                    </p>
                </div>

            </a>

            <a href="#">
                <div class="col col-four container-news">
                    <img class="size-img" src="WebProject/asset/img/anh-tin-cay-giong/kham-pha-chuoi-tai-loc.jpg" alt="">
                    <p class="title-news">
                        Khám phá bất ngờ cây chuối tài lộc hình dáng độc lạ</p>
                    <div class="line-news"></div>
                    <p class="infor-news">Trên thị trường rất nhiều nơi bán cây mai xanh với giá khách nhau. Bạn [...]
                    </p>
                </div>
            </a>

            <div class="clear"></div>
        </div>

        <div class="list-procduct row">
            <div class="col col-four">
                <iframe width="265px" height="212px" src="https://www.youtube.com/embed/qboRdTF_TnI">
                </iframe>
            </div>
            <div class="col col-four ">
                <iframe width="265px" height="212px" src="https://www.youtube.com/embed/DSjPTGbxbbM">
                </iframe>
            </div>

            <div class="col col-four ">
                <iframe width="265px" height="212px" src="https://www.youtube.com/embed/Fct-4N-5hJI">
                </iframe>
            </div>
            <div class="col col-four ">
                <iframe width="265px" height="212px" src="https://www.youtube.com/embed/z8LdPrUfjLc">
                </iframe>
            </div>
            <!-- <div class="clear"></div> -->
        </div>


        <!-- END-CONTENT-NEWS -->


    </div>
    <div class="clear"></div>

    <footer>
        <div class="row-footer">
            <div class="col-footer">
                <img src="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" alt="" class="logo-footer" width="75%">
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
                    <li><a href="WebProject/index.html">Trang Chủ</a></li>
                    <li><a href="WebProject/introduce.html">Giới Thiệu</a></li>
                    <li><a href="WebProject/product.html">Sản Phẩm</a></li>
                    <li><a href="WebProject/instruct.html">Hướng Dẫn Mua Hàng</a></li>
                    <li><a href="WebProject/news.html">Tin Tức</a></li>

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
</div>
<!-- Js-Slider index -->
<script>

    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        const slides = document.getElementsByClassName("slide");
        const indicators = document.getElementsByClassName("indicator");

        // Hide all slidese
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        // Deactivate all indicators
        for (i = 0; i < indicators.length; i++) {
            indicators[i].className = indicators[i].className.replace(" active", "");
        }

        // Display the current slide and activate the corresponding indicator
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }

        slides[slideIndex - 1].style.display = "block";
        indicators[slideIndex - 1].className += " active";

        // Change slide every 2 seconds (2000 milliseconds)
        setTimeout(showSlides, 2000);
    }

    // Handle indicator click to navigate to specific slide
    const indicators = document.getElementsByClassName("indicator");
    for (let i = 0; i < indicators.length; i++) {
        indicators[i].addEventListener("click", function () {
            slideIndex = i;
            showSlides();
        });
    }
</script>
<!-- END-JS-Slider index -->

<!-- ẨN HIỆN LIST-MENU -->
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


<script>
    var subNav = document.querySelector('.sub-nav');
    var lastScrollTop = 0;

    window.addEventListener('scroll', function () {
        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;

        // Kiểm tra hướng cuộn
        if (scrollTop > lastScrollTop) {
            // Cuộn xuống, ẩn sub-nav
            subNav.style.display = 'none';
        } else {
            // Cuộn lên trên, hiển thị sub-nav
            subNav.style.display = 'block';
        }

        // Cập nhật giá trị lastScrollTop
        lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;
    });
</script>

</body>

</html>