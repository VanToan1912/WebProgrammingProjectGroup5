// Scroll-img
document.addEventListener("scroll", function () {
    const containerNews = document.querySelector(".container-news");
    const scrollPosition = window.scrollY;
  
    if (scrollPosition > 100) { // Điều kiện để chạy hiệu ứng, bạn có thể điều chỉnh giá trị này
      containerNews.style.opacity = 1;
      containerNews.style.transform = "translateY(0)";
      window.removeEventListener("scroll", handleScroll);
    }
  });