$(document).ready(function() {
  $('.card-button-bottom-left').on('click', function() {
    console.log('.card-button-bottom-left');
    $('html, body').animate({
        scrollTop: $("#detail").offset().top
      }, 2000);
  });
});
