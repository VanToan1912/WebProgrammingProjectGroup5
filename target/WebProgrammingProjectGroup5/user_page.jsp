<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="UTF-8">
    <title>Cây giống Sài Gòn - Hồ sơ</title>
    <link rel="icon" href="WebProject/asset/img/header/LOGO-CAY-GIONG-SAI-GON.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="WebProject/asset/css/user_info_styles.css">
    <link rel="stylesheet" href="WebProject/asset/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="WebProject/asset/css/head-foot.css">

    <title>Thông tin người dùng</title>
</head>

<body>
<header>
    <jsp:include page="WebProject/header/header-signup-signin.jsp"></jsp:include>
</header>
<!--body section-->
<div class="container">
    <div class="menu-user-page">
        <div class="row">
            <div class="col">
                <img src="WebProject/asset/img/avt.png" alt="" height="750" width="600" alt="avt" class="d-block ui-w-80">
            </div>
            <div class="col">
                <a href="user_page.jsp">
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
            <div class="clear"></div>
            <div class="row content-infor">
                <a href="WebProject/purchase.jsp">
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
                        <p class="text-user-name">Email</p>
                    </div>
                    <div class="col">
                        <p class="user-name">nhom5_laptrinhweb</p>
                    </div>
                </div>
                <div class="clear"></div>

                <div class="row">
                    <div class="col col-title">
                        <p class="text-name">Họ và tên</p>
                    </div>
                    <div class="col input-name">
                        <input type="text" placeholder="Họ tên đầy đủ...">
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

                <a href="./WebProject/change_password.jsp"><button type="submit" class="btn btn-cpw" id="passwordChangeButton" name="ChangePassword">Đổi mật khẩu</button>
                </a>
            </div>
            /////ben phai
            <div class="line-vertical"></div>
            <div class="col-right">
                <div class="card-body">
                    <img src="WebProject/asset/img/avt.png" height="750" width="600" alt="avt" class="d-block ui-w-80">
                    <br>
                    <div class="media-body ml-4">
                        <label class="btn btn-outline-primary">
                            Tải lên ảnh mới
                            <input type="file" class="account-settings-fileinput">
                        </label> &nbsp;
                    </div>
                </div>
            </div>

        </div>
        <div class="confim">
            <button type="button" class="btn btn-primary">Lưu thay đổi</button>&nbsp;
            <a href="index.jsp">
                <button type="button" class="btn btn-default">Hủy</button>
            </a>
        </div>
    </div>

</div>


<footer>
    <jsp:include page="WebProject/footer/footer-level1.jsp"></jsp:include>
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
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var passwordChangeButton = document.getElementById('passwordChangeButton');

        if (passwordChangeButton) {
            passwordChangeButton.addEventListener('click', function () {
                // Add your logic for password change here
                alert('Password change logic goes here!');
            });
        }
    });

</script>
</body>
</html>
