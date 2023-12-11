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