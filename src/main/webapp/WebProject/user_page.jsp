<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Hồ sơ</title>
    <link rel="icon" href="asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="asset/css/user_info_styles.css">
    <link rel="stylesheet" href="asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="asset/css/head-foot.css">

    <title>Thông tin người dùng</title>
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
                    <a href="login.jsp">
                        <button class="login-button">
                            Đăng Nhập
                        </button>
                    </a>
                    <a href="user_page.html" class="tooltip ti-user" id="userIcon" style="display: none;">
                        <span class="tooltiptext">Quản lý hồ sơ người dùng</span></a>
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
        <a href="purchase.jsp">
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
        <li class=" nav-togethger"><a href="introduce.jsp" class="nav-togethger">GIỚI THIỆU</a></li>
        <li class=" nav-togethger"><a href="product.html">SẢN PHẨM</a></li>
        <li class="nav-togethger"><a href="instruct.html">HƯỚNG DẪN MUA HÀNG</a></li>
        <li class="nav-togethger"><a href="news.html">TIN TỨC</a></li>
    </ul>


    <!-- END NAV -->
    <div class="clear"></div>
</header>
<!--body section-->
<div class="container">
    <div class="menu-user-page">
        <div class="row">
            <div class="col">
                <img src="asset/img/avt.png" alt="" height="750" width="600" alt="avt" class="d-block ui-w-80">
            </div>
            <div class="col">
                <p> lequoc_trung</p>
                <a href="user_page.html">
                    <i class="ti-pencil">Sửa hồ sơ</i>
                </a>
            </div>
        </div>
        <div class="line-user-page"></div>

        <div class="clear"></div>
        <div class="row content-user">
            <div class="col">
                <i class="ti-user"></i>
            </div>
            <div class="col">
                <p class="text-cart">Quản lý tài khoản</p>
            </div>
        </div>

        <div class="clear"></div>
        <div class="list-infor">
            <div class="row content-infor">
                <a href="#">
                    <div class="col">
                        <i class="ti-notepad"></i>
                    </div>
                    <div class="col text-cart" style="color:#fa461e ;">
                        <p>Hồ sơ</p>
                    </div>
                </a>

            </div>
            <div class="clear"></div>
            <div class="row content-infor">
                <a href="#">
                    <div class="col">
                        <i class="ti-home"></i>
                    </div>
                    <div class="col text-cart">
                        <p>Địa chỉ</p>
                    </div>
                </a>

            </div>
            <div class="clear"></div>
            <div class="row content-infor">
                <a href="#">
                    <div class="col">
                        <i class="ti-key"></i>
                    </div>
                    <div class="col text-cart">
                        <p>Đổi mật khẩu</p>
                    </div>
                </a>

            </div>

            <div class="clear"></div>
            <div class="row content-infor">
                <a href="purchase.jsp">
                    <div class="col">
                        <i class="ti-shopping-cart"></i>
                    </div>
                    <div class="col text-cart">
                        <p>Hóa đơn</p>
                    </div>
                </a>

            </div>
        </div>


    </div>
    <div class="card overflow-hidden">
        <h2>Hồ sơ của tôi</h2>
        <p class="text2-page-user">Quản lý thông tin hồ sơ để bảo mật tài khoản</p>
        <div class="line"></div>
        <div class="row content-user-page">
            <div class="col-left">
                <div class="row">
                    <div class="col col-title">
                        <p class="text-user-name">Tên đăng nhập</p>
                    </div>
                    <div class="col">
                        <p class="user-name">nhom5_laptrinhweb</p>
                    </div>
                </div>
                <div class="clear"></div>

                <div class="row">
                    <div class="col col-title">
                        <p class="text-name">Tên</p>
                    </div>
                    <div class="col input-name">
                        <input type="text" placeholder="Nhom 5">
                    </div>
                </div>
                <div class="clear"></div>

                <div class="row">
                    <div class="col col-title">
                        <p class="text-email">Email</p>
                    </div>
                    <div class="col">
                            <span>
                                <p class="name-email">trunghazy12@gmail.com <a href="#" class="avai-change">Thay đổi</a>
                                </p>
                            </span>
                    </div>
                </div>
                <div class="clear"></div>

                <div class="row">
                    <div class="col col-title">
                        <p class="text-num-phone">Số điện thoại</p>
                    </div>
                    <div class="col">
                            <span>
                                <p class="n">0947863262 <a href="#" class="avai-change">Thay đổi</a></p>
                            </span>
                    </div>

                </div>
                <div class="clear"></div>

                <div class="row">
                    <div class="col col-title">
                        <p class="text-sex">Giới tính</p>
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col sub-col">
                                <label class="sex male">
                                    <p>Nam</p>
                                    <input type="radio" checked="checked" name="radio">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="col sub-col">
                                <label class="sex female">
                                    <p>Nữ</p>
                                    <input type="radio" name="radio">
                                    <span class="checkmark"></span>
                                </label>

                            </div>
                            <div class="col sub-col">
                                <label class="sex other">
                                    <p>Khác</p>
                                    <input type="radio" name="radio">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="row">

                    <div class="col col-title">
                        <p class="text-sex">Ngày sinh</p>
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <select name="day" class="day">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                            </div>
                            <div class="col">
                                <label>
                                    <select name="month" class="month">
                                        <option value="Tháng 1">Tháng 1</option>
                                        <option value="Tháng 2">Tháng 2</option>
                                        <option value="Tháng 3">Tháng 3</option>
                                        <option value="Tháng 4">Tháng 4</option>
                                        <option value="Tháng 5">Tháng 5</option>
                                        <option value="Tháng 6">Tháng 6</option>
                                        <option value="Tháng 7">Tháng 7</option>
                                        <option value="Tháng 8">Tháng 8</option>
                                        <option value="Tháng 9">Tháng 9</option>
                                        <option value="Tháng 10">Tháng 10</option>
                                        <option value="Tháng 11">Tháng 11</option>
                                        <option value="Tháng 12">Tháng 12</option>
                                    </select>
                                </label>
                            </div>
                            <div class="col">
                                <label>
                                    <select name="year" class="year">
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2007">2008</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="line-vertical"></div>
            <div class="col-right">
                <div class="card-body">
                    <img src="asset/img/avt.png" height="750" width="600" alt="avt" class="d-block ui-w-80">
                    <br>
                    <div class="media-body ml-4">
                        <label class="btn btn-outline-primary">
                            Tải lên ảnh mới
                            <input type="file" class="account-settings-fileinput">
                        </label> &nbsp;
                        <div class="text-light small mt-1">Chọn ảnh có định dạng JPG, GIF or PNG. Lớn nhất là 800
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="confim">
            <button type="button" class="btn btn-primary">Lưu thay đổi</button>&nbsp;
            <a href="index.html">
                <button type="button" class="btn btn-default">Quay lại</button>
            </a>
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
</body>
</html>
