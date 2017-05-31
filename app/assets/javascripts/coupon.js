$(document).ready(function () {
  var coupon1 = $('.couponCode');
  console.log(coupon1);
  $('#couponCode').on('keyup', function(event) {
    // console.log($('#couponCode').val());
    if(this.value.length < 6) return;
    console.log($('#couponCode').val());
  });
  $('#coupon-submit').on('click',function() {
    console.log($('#couponCode').val());
  });
});
