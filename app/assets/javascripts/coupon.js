$(document).ready(function () {
  $('#codePromo').on('click', function () {
    // console.log('OK');
    $('.codePromoForm').toggleClass('hidden');
  });
  $('#couponCode').on('click', function () {
    $(this).val("");
  });
});

