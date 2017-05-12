$(document).ready(function () {
  $("#scrollup").on("click", function () {
    console.log("working")
    $('html, body').animate({
        scrollTop: $(".banner-sml").offset().top
      }, 2000);
  });
});
