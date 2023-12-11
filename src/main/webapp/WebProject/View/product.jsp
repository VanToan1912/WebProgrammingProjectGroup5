<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/2/2023
  Time: 11:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Cây giống Sài Gòn - Sản phẩm</title>
  <link rel="icon" href="../asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
  <link rel="stylesheet" href="../asset/css/product.css">
  <link rel="stylesheet" href="../asset/fonts/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="../asset/css/head-foot.css">

</head>

<body>
<div id="product" style="">
  <header>
    <jsp:include page="../header/header-level1.jsp"></jsp:include>
  </header>
  <div id="main">
    <h3 class="text-product text-blue mg-left">CÂY ĂN TRÁI</h3>
    <div class="order-by">
      <p class="text-order-by">Hiển thị 1–12 của 27 kết quả</p>
      <div class="select_st">
        <select name="" class="menu-order-by">
          <option value="">Thứ tự mặc định</option>
          <option value="">Thứ tự theo mức độ phổ biến</option>
          <option value="">Mới nhất</option>
          <option value="">Thứ tự theo giá: thấp đến cao</option>
          <option value="">Thứ tự theo giá: cao đến thấp</option>
        </select>
      </div>
    </div>

    <div class="addr-current mg-left">
      <a href="./index.html" class="link-index text-gray fs-18">
        <p>TRANG CHỦ</p>
      </a>
      <div class="product text-gray fs-18">/ SẢN PHẨM /</div>
      <p class="addr-current-product">CÂY ĂN TRÁI</p>
    </div>
    <div class="content-product">
      <div class="head-product">
        <div class="text-menu-product mg-left">DANH MỤC SẢN PHẨM</div>
        <div class="line mg-left"></div>
        <div class="list-menu-product mg-left">
          <div class="menu-product"><a href="product.html"> <b>CÂY ĂN TRÁI</b></a></div>
          <div class="menu-product"><a href="#">CÂY BONSAI</a></div>
          <div class="menu-product"><a href="#">CÂY CẢNH</a></div>
          <div class="menu-product"><a href="#">CÂY CÓ HOA</a></div>
          <div class="menu-product"><a href="#">CÂY ĐỘC LẠ-HIẾM</a></div>
          <div class="menu-product"><a href="#">CÂY GIA VỊ</a></div>
          <div class="menu-product"><a href="#">CÂY GIỐNG</a></div>
          <div class="menu-product"><a href="#">CÂY HOA LEO</a></div>
          <div class="menu-product"><a href="#">CÂY LỚN</a></div>
          <div class="menu-product"><a href="#">CỦ GIỐNG</a></div>
          <div class="menu-product"><a href="#">HOA LAN</a></div>
          <div class="menu-product"><a href="#">HOA LAN CÂY GIỐNG</a></div>
          <div class="menu-product"><a href="#">PHÂN BÓN-VẬT TƯ</a></div>
          <div class="menu-product"><a href="#">SẢN PHẨM KHUYẾN MÃI</a></div>
        </div>
      </div>
      <div id="page-container">
        <div id="page1Content" class="container-list-product page-content">
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img id="cay-cha-la" class="size-img img-product"
                   src="../asset/img/cay-an-qua/cha-la/015920d03adfc7819ece-510x680.jpg" alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class=" name-product">CÂY CHÀ LÀ</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">180.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product " src="../asset/img/cay-an-qua/chanh-chuc/1.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">Cây CHANH CHÚC ( CHANH THÁI)</p>
              <div class="price">
                <!-- <p class="price-initial text-black">42.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">120.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-third container-product">
              <img class="size-img  img-product" src="../asset/img/cay-an-qua/chanh-leo/1.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY CHANH LEO (CHANH DÂY)</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">150.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product" src="../asset/img/cay-an-qua/chanh-ngon-tay/1-510x510.jpg"
                   alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY CHANH NGÓN TAY</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">100.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product "
                   src="../asset/img/cay-an-qua/cherry%20-1m-1.2/119213104_1185111781889730_3443560138059122151_n-510x680.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">

                CÂY CHERRY BRAZIL 1m – 1,2</p>
              <div class="price">
                <!-- <p class="price-initial text-black">42.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">300.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-third container-product">
              <img class="size-img  img-product" src="../asset/img/cay-an-qua/cherry%20-70-80cm/1.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY CHERRY BRAZIL 70-80cm</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">170.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product" src="../asset/img/cay-an-qua/coc/1.jpg" alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY CÓC THÁI</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">160.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product " src="../asset/img/cay-an-qua/dua-tay/gv56435434.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

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

            <div class="  col col-third container-product">
              <img class="size-img  img-product" src="../asset/img/cay-an-qua/nho/1.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">Cây nho thân gỗ 8 năm tuổi</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">250.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product"
                   src="../asset/img/cay-an-qua/oi-cam-thach/130829531_2926789680883313_3382313326195861344_n-510x733.jpg"
                   alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI CẨM THẠCH</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">230.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product "
                   src="../asset/img/cay-an-qua/oi-duoi-phung/z2499183555897_28239e396aa259213d761e0aebce9dbf-510x680.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

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

            <div class="  col col-third container-product">
              <img class="size-img  img-product"
                   src="../asset/img/cay-an-qua/oi-nu-hoang/1.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI NỮ HOÀNG</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">190.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>

        </div>
        <div id="page2Content" class="container-list-product page-content ">
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product" src="../asset/img/cay-an-qua/oi%20se%20la%20ri/1.jpg" alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI SẺ LÁ RÍ</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">170.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product "
                   src="../asset/img/cay-an-qua/oi-se-la-tim-nho/z2499189776841_23b2103e4dd045d4b9523c4ac188671b.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI SẺ TÍM LÁ NHỎ</p>
              <div class="price">
                <!-- <p class="price-initial text-black">42.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">150.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-third container-product">
              <img class="size-img  img-product"
                   src="../asset/img/cay-an-qua/oi-se-tim/z2156986667121_6b042667f5400d0511576b2755206fd1-510x383.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI SẺ TÍM LÁ NHỎ CAO TRÊN 1M</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">120.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product" src="../asset/img/cay-an-qua/oi-sim/3787801560927986.jpg"
                   alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI SIM</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">180.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product "
                   src="../asset/img/cay-an-qua/oi-se-tim/z2499189776841_23b2103e4dd045d4b9523c4ac188671b-510x680.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY ỔI TÍM</p>
              <div class="price">
                <!-- <p class="price-initial text-black">42.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">170.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-third container-product">
              <img class="size-img  img-product"
                   src="../asset/img/cay-an-qua/si-ro-80cm/2525255-510x381.jpg" alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY SI RÔ 80cm</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">270.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product"
                   src="../asset/img/cay-an-qua/siro-sieu-bui/100872209_900948440318233_6548133321602236416_n-510x680.jpg"
                   alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY SIRO BỤI 80cm</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">270.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product "
                   src="../asset/img/cay-an-qua/siro-sieu-trai/1.jpg"
                   alt="Full Screen Image">
              <p class="text-sale back-orange product-text-sale">Giảm giá!</p>
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CÂY SIRO SIÊU TRÁI 1-1.2M</p>
              <div class="price">
                <p class="price-initial text-black">420.000đ</p>
                <span>
                                        <p class="price-sale text-black">380.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="  col col-third container-product">
              <img class="size-img  img-product" src="../asset/img/cay-an-qua/tao%20thai/1.jpg"
                   alt="Full Screen Image">
              <!-- <img class="size-img size-img1" src="./asset/img/cay co hoa/lieu dang tieu/unnamed-1-510x510.jpg" alt=""> -->
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review review">XEM NHANH</p>

              <p class="name-product">CÂY TÁO THÁI</p>
              <div class="price">
                <!-- <p class="price-initial text-black">60.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">120.000đ</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class="clear"></div>
          </div>
          <div class="list-procduct row ">
            <div class="col col-third container-product">
              <img class="size-img img-product"
                   src="../asset/img/cay-an-qua/chanh-vang/z2836377378985_da849eb4a07bf97cf9bb013cf2395076-510x510.jpg"
                   alt="">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">CHANH VÀNG KHỔNG LỒ LÁ CẨM THẠCH</p>
              <div class="price">
                <!-- <p class="price-initial text-gray">89.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">420.000₫</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>

            <div class=" col col-third container-product">
              <img class="size-img  img-product " src="../asset/img/cay-an-qua/luu-an-do/1.jpg"
                   alt="Full Screen Image">
              <!-- <p class="text-sale back-orange">Giảm giá!</p> -->
              <p class="text-review  review">XEM NHANH</p>

              <p class="name-product">LỰU ĐỎ ẤN ĐỘ</p>
              <div class="price">
                <!-- <p class="price-initial text-black">42.000đ</p> -->
                <span>
                                        <p class="price-sale text-black">300.000</p>
                                    </span>
              </div>
              <button class="btn-add-product back-orange">Thêm vào giỏ hàng</button>
            </div>


            <div class="clear"></div>

          </div>
          <!-- <div class=" list-btn">
                  <a href="#page1" id="previous-btn" class="next round num-btn"> <i class="ti-angle-left"></i></a>
                  <a href="#page1" id="btn-page1" class="num-btn">1</a>
                  <a href="#page2" id="btn-page2" class="num-btn">2</a>
                  <a href="#page3" class="num-btn">3</a>
                  <a href="#page3" id="next-btn" class="next round num-btn "><i class="ti-angle-right"></i></a>
              </div> -->

        </div>

        <div class="list-btn">
          <button id="prevButton" class="next round num-btn"><i class="ti-angle-left"></i></button>
          <button id="page1Button" class="num-btn ">1</button>
          <button id="page2Button" class="num-btn">2</button>
          <!-- <button id="page3Button" class="num-btn">3</button> -->
          <button id="nextButton" class="next round num-btn "><i class="ti-angle-right"></i></button>
        </div>
      </div>

    </div>
  </div>


  <footer>
    <jsp:include page="../footer/footer-level1.jsp"></jsp:include>
  </footer>
</div>


<!-- ẨN HIỆN LIST-MENU -->
<script src="../asset/js/show-hide-menu.js"></script>
<!-- END ẨN HIỆN LIST-MENU -->

<!-- BẮT SỰ KIỆN ẤN NÚT BUTTON-NUMBER-PAGE -->
<script>
  // Biến trạng thái trang
  let currentPage = 1;

  // Lắng nghe sự kiện khi nhấp vào nút trước
  document.getElementById('prevButton').addEventListener('click', () => {
    if (currentPage > 1) {
      currentPage--;
      updatePageButtons();
      scrollToTop(); // Cuộn lên đầu trang
    }
  });

  // Lắng nghe sự kiện khi nhấp vào nút "1"
  document.getElementById('page1Button').addEventListener('click', () => {
    currentPage = 1;
    updatePageButtons();
    scrollToTop(); // Cuộn lên đầu trang
  });

  // Lắng nghe sự kiện khi nhấp vào nút "2"
  document.getElementById('page2Button').addEventListener('click', () => {
    currentPage = 2;
    updatePageButtons();
    scrollToTop(); // Cuộn lên đầu trang
  });


  // Lắng nghe sự kiện khi nhấp vào nút tiếp theo
  document.getElementById('nextButton').addEventListener('click', () => {
    if (currentPage < 2) {
      currentPage++;
      updatePageButtons();
      scrollToTop(); // Cuộn lên đầu trang
    }
  });

  // Hàm cập nhật trạng thái của các nút
  function updatePageButtons() {
    const pageButtons = document.querySelectorAll('.num-btn');

    pageButtons.forEach(button => {
      if (button.id === `page${currentPage}Button`) {
        button.classList.add('active');
      } else {
        button.classList.remove('active');
      }
    });

    showPage(currentPage);
  }

  // Hàm hiển thị trang tương ứng
  function showPage(pageNumber) {
    const pageElements = document.querySelectorAll('.container-list-product');
    pageElements.forEach((page, index) => {
      if (index + 1 === pageNumber) {
        page.style.display = 'block';
      } else {
        page.style.display = 'none';
      }
    });
  }

  // Hàm cuộn lên đầu trang
  function scrollToTop() {
    window.scrollTo(0, 0);
  }

  // Khởi tạo trạng thái ban đầu
  updatePageButtons();

  // Hàm cập nhật trạng thái của các nút
  function updatePageButtons() {
    const pageButtons = document.querySelectorAll('.num-btn');

    pageButtons.forEach(button => {
      if (button.id === `page${currentPage}Button`) {
        button.classList.add('back-orange'); // Thêm lớp active-page
      } else {
        button.classList.remove('back-orange'); // Loại bỏ lớp active-page
      }
    });

    showPage(currentPage);
  }

</script>
<!-- END BẮT SỰ KIỆN ẤN NÚT BUTTON-NUMBER-PAGE -->

<!-- BẮT SỰ KIỆN LINK TỚI CHI TIẾT SẢN PHẨM -->
<script>
  // Lấy các sản phẩm
  var product1 = document.getElementById("cay-cha-la");
  var product2 = document.getElementById("cay-an-trai");
  var product3 = document.getElementById("cay-bonsai");

  // Thêm sự kiện click cho từng sản phẩm
  product1.addEventListener("click", function () {
    window.location.href = "product-description.html?id=cay-cha-la";
  });


</script>
<!--  ENDBẮT SỰ KIỆN LINK TỚI CHI TIẾT SẢN PHẨM -->
</body>
