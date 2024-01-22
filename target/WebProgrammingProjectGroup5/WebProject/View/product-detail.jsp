<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/2/2023
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="bean.ProductDetail" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Get the image URLs from the request attribute
    ProductDetail productDetail = (ProductDetail) request.getAttribute("productDetail");
    List<String> imageUrls = productDetail.getImageUrls();

    // Print image URLs to console
    System.out.print("Image URLs: ");
    for (String imageUrl : imageUrls) {
        System.out.print(imageUrl + " ");
    }
    System.out.println();
%>



<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Chi tiết sản phẩm</title>
    <link rel="icon" href="/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>

    <!-- <link rel="stylesheet" href="./asset/css/product.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/head-foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/css/product.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WebProject/asset/fonts/themify-icons/themify-icons.css">
</head>

<body>
<div id="product" class="more-infor-product">
    <header>
        <jsp:include page="../header/header-level2.jsp"></jsp:include>
    </header>
    <div id="list-product-description" class="main">
        <div class="main-content-detail">

            <div class="row1 container-infor">
                <div class="col col-half slider-img-detail">
                    <div class="col col-half">
                        <img id="main-image" src="<%= (imageUrls != null && !imageUrls.isEmpty()) ? imageUrls.get(0) : "" %>" alt="Main Image">
                        <div id="image-list">
                            <button id="prev-btn"><i class="ti-angle-left"></i></button>

                            <%
                                // Loop through image URLs and create <img> tags
                                for (String imageUrl : imageUrls) {
                            %>
                            <img class="slider-image" src="<%= imageUrl %>" alt="Product Image">
                            <%
                                }
                            %>
                            <button id="next-btn"><i class="ti-angle-right"></i></button>
                        </div>

                        <div class="modal" id="image-modal">
                            <img class="modal-image" src="${pageContext.request.contextPath}/image1.jpg" alt="Modal Image">
                        </div>
                    </div>

                </div>
                <div class="clear"></div>
                <div class="col col-half infor-product">
                    <div class="addr-current">
                        <!-- Điều chỉnh đường dẫn trang chủ và danh mục sản phẩm -->
                        <a href="${pageContext.request.contextPath}/index.jsp" class="link-index text-gray fs-18">
                            <p>TRANG CHỦ</p>
                        </a>
                        <div class="product text-gray fs-18"> / <a href="${pageContext.request.contextPath}/products">SẢN PHẨM </a> /</div>

                    </div>
                    <p class="name-product">${productDetail.title}</p>
                    <div class="line"></div>
                    <p class="text-infor-product">${productDetail.content}
                        </p>

                    <!-- Hiển thị giá sản phẩm nếu có -->

                    <div class="line-high"></div>
                </div>
                <div class="clear"></div>
            </div>

            <div class="content-describe-product">
                <!-- Hiển thị thông tin chi tiết sản phẩm -->
                <div class="row1">
                    <div class="line-describe"></div>
                    <div class="content-1">
                        <p><b>I/ Đặc điểm hình thái của cây</b></p>
                        <p>${productDetail.morphologyDescription}</p>
                    </div>
                </div>

                <div class="content-3">
                    <p><b>III/ Cách trồng và chăm sóc:</b></p>
                    <p>${productDetail.plantingCareDescription}</p>
                </div>
                <div class="line-describe"></div>
            </div>
        </div>
        <div class="content-same-product">
            <div class="row1">
                <div class="title-similar-product text-blue"> SẢN PHẨM TƯƠNG TỰ</div>
                <div class="container-slider">

                    <div class="container-same-product">
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh chuc/1.jpg" alt="Image 1"> -->
                            <div class=" container-product">
                                <img class="size-img img-product" src="/img/cay-an-qua/luu-an-do/1.jpg" alt="">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">lựu ấn độ</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-gray">89.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">230.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh leo/1.jpg" alt="Image 2"> -->
                            <div class=" container-product">
                                <img class="size-img img-product "
                                     src="/img/cay-an-qua/oi-duoi-phung/z2499183555897_28239e396aa259213d761e0aebce9dbf-510x680.jpg"
                                     alt="Full Screen Image">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">

                                    CÂY ỔI ĐUÔI PHỤNG</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">290.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>

                            </div>

                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh vàng/z2836377350326_92bb672e0eaa5f753c6e36529f06c21f-510x680.jpg" alt="Image 3"> -->
                            <div class=" container-product">
                                <img class="size-img img-product"
                                     src="/img/cay-an-qua/oi-nu-hoang/1.jpg"
                                     alt="Full Screen Image">
                                <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">CÂY ỔI NỮ HOÀNG</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">190.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>

                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/cherry 1m-1.2/119213104_1185111781889730_3443560138059122151_n-510x680.jpg" alt="Image 4"> -->
                            <div class=" container-product">
                                <img class="size-img img-product" src="/img/cay-an-qua/oi%20se%20la%20ri/1.jpg" alt="">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">CÂY ỔI SẺ LÁ RÍ</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-gray">89.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">170.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>
                        </div>

                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh vàng/z2836377350326_92bb672e0eaa5f753c6e36529f06c21f-510x680.jpg" alt="Image 3"> -->
                            <div class=" container-product">
                                <img class="size-img img-product"
                                     src="/img/cay-an-qua/oi-cam-thach/130829531_2926789680883313_3382313326195861344_n-510x733.jpg"
                                     alt="">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">CÂY ỔI CẨM THẠCH</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-gray">89.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">230.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>

                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh leo/1.jpg" alt="Image 2"> -->
                            <div class=" container-product">
                                <img class="size-img img-product "
                                     src="/img/cay-an-qua/si-ro-80cm/5240fc861bc6f298abd7-510x381.jpg"
                                     alt="Full Screen Image">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">

                                    CÂY SI RÔ 80cm</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">290.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/cherry 1m-1.2/119213104_1185111781889730_3443560138059122151_n-510x680.jpg" alt="Image 4"> -->
                            <div class=" container-product">
                                <img class="size-img img-product " src="/img/cay-an-qua/dua-tay/gv56435434.jpg"
                                     alt="Full Screen Image">
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">

                                    CÂY DƯA TÂY, Trái to, vỏ bóng, thịt quả thơm ngọt</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-black">42.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">180.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <div class="same-product">
                            <!-- <img src="asset/img/cay an qua/chanh chuc/1.jpg" alt="Image 1"> -->
                            <div class=" container-product">
                                <img class="size-img img-product" src="/img/cay-an-qua/tao%20thai/1.jpg"
                                     alt="Full Screen Image">
                                <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
                                <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
                                <p class="text-review review text-review-more">XEM NHANH</p>

                                <p class="name-product">CÂY TÁO THÁI</p>
                                <div class="price">
                                    <!-- <p class="price-initial text-black">60.000đ</p> -->
                                    <span>
                <p class="price-sale text-black">120.000đ</p>
                </span>
                                </div>
                                <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
                            </div>
                        </div>

                    </div>
                    <div class="clear"></div>
                    <button class="prev-button" onclick="prevSlide()">&#8249;</button>
                    <button class="next-button" onclick="nextSlide()">&#8250;</button>

                    <div class="clear"></div>


                </div>


                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>

        <div id="comment" class="row1">
            <div class="number-comment">
                <i class="ti-comment-alt"></i>
                <p>Bình luận(2)</p>
            </div>

            <a href="login.html">
                <button class="login-to-comment">
                    Đăng nhập để bình luận
                </button>
            </a>

            <div class="main-comment">
                <div class="container-comment">
                    <div class="col-img">
                        <img src="/img/avt.png" alt="" class="img-user">
                    </div>

                    <div class="col-content-commment">
                        <div class="text-name">
                            <p>Lê Quốc Trung</p>
                        </div>
                        <div class="comment-contennt">
                            <p>Sản phẩm chất lượng</p>
                        </div>
                        <div class="date-comment">
                            <p>2023-16-11</p>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

    <footer>
        <jsp:include page="../footer/footer-level1.jsp"></jsp:include>
    </footer>
</div>

<script>
    console.log("Image URL: ${productDetail.imageUrls[0]}");
</script>

<script>
    const mainImage = document.getElementById('main-image');
    const sliderImages = document.querySelectorAll('.slider-image');
    const modal = document.getElementById('image-modal');
    const prevBtn = document.getElementById('prev-btn');
    const nextBtn = document.getElementById('next-btn');
    let currentImageIndex = 0;

    function showImage(index) {
        mainImage.src = sliderImages[index].src;
        currentImageIndex = index;
    }

    function nextImage() {
        currentImageIndex++;
        if (currentImageIndex >= sliderImages.length) {
            currentImageIndex = 0;
        }
        showImage(currentImageIndex);
    }

    function previousImage() {
        currentImageIndex--;
        if (currentImageIndex < 0) {
            currentImageIndex = sliderImages.length - 1;
        }
        showImage(currentImageIndex);
    }

    mainImage.addEventListener('click', () => {
        modal.classList.add('active');
        modal.querySelector('.modal-image').src = mainImage.src;
    });

    sliderImages.forEach((image, index) => {
        image.addEventListener('click', () => {
            showImage(index);
            if (modal.classList.contains('active')) {
                modal.classList.remove('active');
            }
        });
    });

    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            modal.classList.remove('active');
        }
    });

    prevBtn.addEventListener('click', previousImage);
    nextBtn.addEventListener('click', nextImage);
</script>
<!-- ẨN HIỆN LIST-MENU -->
<!-- END ẨN HIỆN LIST-MENU -->
<!-- SLIDER-SAME-PRODUCT -->
<!-- ẨN HIỆN SUB-NAV KHI CUỘN -->
<!-- END ẨN HIỆN SUB-NAV KHI CUỘN -->
</body>
