$(document).ready(function () {
  $('.card-content').addClass('hidden');
  console.log('hello');
  $('.card').mouseenter(function () {
    $(this).find('.card-content').removeClass('hidden');
  })
  // $('.card').mouseleave(function () {
  //   $(this).find('.card-content').addClass('hidden');
  // });
});

