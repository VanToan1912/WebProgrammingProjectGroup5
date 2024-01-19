<%--
  Created by IntelliJ IDEA.
  User: trung
  Date: 12/4/2023
  Time: 12:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<div class="slider-container">
    <!-- Slides -->
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-kim-ngan.jpg" alt="Slide 1">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-lan-hoang-duong.jpg" alt="Slide 2">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-mai-xanh-thai.jpg" alt="Slide 3">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-cop-vang.jpg" alt="Slide 3">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-mong-cop-xanh.jpg" alt="Slide 3">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-moc-huong.jpg" alt="Slide 3">
    </div>
    <div class="slide">
        <img src="${pageContext.request.contextPath}/WebProject/asset/img/anh-slideshow/hoa-rang-dong.jpg" alt="Slide 3">
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
</body>
</html>
