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
