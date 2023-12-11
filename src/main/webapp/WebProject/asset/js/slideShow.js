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

    // Dexactivate all indicators
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