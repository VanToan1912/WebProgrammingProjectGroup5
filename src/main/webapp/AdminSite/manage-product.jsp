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
        <li class="active">
            <a class="" href="manage-product.jsp">
                <span class="fa fa-shopping-cart"> </span> Quản lý sản phẩm
            </a>
        </li>
        <li>
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
            <h1 class="page-header">Quản lý sản phẩm</h1>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div class="category">
            <label for="product-category"></label>
            <select id="product-category">
                <option value="0">TẤT CẢ SẢN PHẨM</option>
                <option value="1">CÂY ĂN TRÁI</option>
                <option value="2">CÂY BONSAI</option>
                <option value="3">CÂY CẢNH</option>
                <option value="4">CÂY CÓ HOA</option>
                <option value="5">CÂY ĐỘC LẠ - HIẾM</option>
                <option value="6">CÂY GIA VỊ</option>
                <option value="7">CÂY GIỐNG</option>
                <option value="8">CÂY HOA LEO</option>
                <option value="9">CÂY LỚN</option>
                <option value="10">CỦ GIỐNG</option>
                <option value="11">HOA LAN</option>
                <option value="12">HOA LAN CÂY GIỐNG</option>
                <option value="13">PHÂN BÓN- VẬT TƯ</option>
                <option value="14">SẢN PHẨM KHUYẾN MÃI</option>
            </select>
            <button type="submit" class="product-categorize">Lọc</button>
            <a href="add-product.jsp" class="product-add" style="float: right"><i class="fa fa-plus"></i> Thêm sản phẩm</a>
        </div>
    </div>

    <div class="panel panel-container" style="padding-top: 0">
        <div>
            <table class="product-table">
                <tr>
                    <th>Tên Sản Phẩm</th>
                    <th>Danh Mục</th>
                    <th>Số Lượng</th>
                    <th>Giảm Giá</th>
                    <th>Chỉnh sửa</th>
                </tr>
                <tr>
                    <td>CÂY CHÀ LÀ</td>
                    <td>CÂY ĂN TRÁI, CÂY GIỐNG</td>
                    <td>64</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HỒNG NGỌC MAI BONSAI</td>
                    <td>CÂY ĂN TRÁI, CÂY BONSAI, CÂY CẢNH, CÂY CÓ HOA</td>
                    <td>115</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY MAI XANH THÁI</td>
                    <td>CÂY BONSAI, CÂY CÓ HOA, CÂY GIỐNG, CÂY HOA LEO</td>
                    <td>49</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>BỤI TRÚC ĐEN</td>
                    <td>CÂY CẢNH, CÂY ĐỘC LẠ - HIẾM</td>
                    <td>178</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY BƯỚM ĐÊM (CÂY ME ĐẤT LÁ TÍM)</td>
                    <td>CÂY CẢNH, CÂY CÓ HOA</td>
                    <td>93</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY CHANH LEO (CHANH DÂY)</td>
                    <td>CÂY ĂN TRÁI, CÂY HOA LEO</td>
                    <td>121</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY CHANH NGÓN TAY</td>
                    <td>CÂY ĂN TRÁI</td>
                    <td>56</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY CÓC THÁI</td>
                    <td>CÂY ĂN TRÁI,</td>
                    <td>167</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA ĐIỆP LÀO</td>
                    <td>CÂY BONSAI, CÂY CẢNH, CÂY CÓ HOA</td>
                    <td>75</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA LAN TỎI TÍM</td>
                    <td>CÂY CÓ HOA, CÂY HOA LEO</td>
                    <td>189</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA HẠNH PHÚC</td>
                    <td>CÂY CẢNH, CÂY CÓ HOA, CÂY LỚN</td>
                    <td>37</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA LEO ĐINH HƯƠNG NHẬT</td>
                    <td>CÂY CẢNH, CÂY CÓ HOA, CÂY ĐỘC LẠ - HIẾM, CÂY HOA LEO</td>
                    <td>104</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA LỘC VỪNG</td>
                    <td>CÂY BONSAI, CÂY CẢNH, CÂY CÓ HOA, CÂY LỚN</td>
                    <td>160</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA MỘC LAN SIÊU NỤ</td>
                    <td>CÂY CẢNH, CÂY CÓ HOA</td>
                    <td>82</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA MÓNG CỌP ĐỎ</td>
                    <td>CÂY CÓ HOA, CÂY ĐỘC LẠ - HIẾM, CÂY HOA LEO</td>
                    <td>133</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA RẠNG ĐÔNG (CHÙM ỚT) 1,2m</td>
                    <td>CÂY CÓ HOA, CÂY HOA LEO</td>
                    <td>43</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HOA SON MÔI</td>
                    <td>CÂY CÓ HOA, CÂY HOA LEO</td>
                    <td>198</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CÂY HỒNG NGỌC MAI BONSAI</td>
                    <td>CÂY ĂN TRÁI, CÂY BONSAI, CÂY CẢNH, CÂY CÓ HOA</td>
                    <td>68</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>50 CHẬU NHỰA ĐEN TRỒNG LAN NUÔI CẤY MÔ</td>
                    <td>PHÂN BÓN- VẬT TƯ</td>
                    <td>75</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>BẢ TRỪ KIẾN TẬN TỔ BTK - GÓI 5G</td>
                    <td>PHÂN BÓN- VẬT TƯ</td>
                    <td>56</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
                <tr>
                    <td>CHẬU TRỒNG LAN GỖ NHÃN</td>
                    <td>PHÂN BÓN- VẬT TƯ</td>
                    <td>37</td>
                    <td>0%</td>
                    <td class="column"><a href="edit-product.jsp" class="fa fa-pencil-square"></a> <a
                            class="fa fa-trash"></a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
<!--Content-->

<!--Script-->

<!--Script-->
</body>
</html>