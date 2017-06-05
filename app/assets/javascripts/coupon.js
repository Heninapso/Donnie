$(document).ready(function () {
  $('#coupon-submit').on('click',function(e) {
    if(("#couponCode")==='TEST' || ("#couponCode")==='test' || ("#couponCode")==='Test');
    // e.preventDefault()
    // var coupon = $('#couponCode').val();
    var order_price = $("#orderAmount").text();
    console.log(order_price);
    var discount = order_price * 10%;
    var new_price = (order_price-discount).toFixed(2);
    console.log(new_price);
    $("#orderAmount").text(new_price);
    console.log(order_price);

  });
  // var coupon1 = $('.couponCode');
  // console.log(coupon1);
  // $('#couponCode').on('keyup', function(event) {
  //   // console.log($('#couponCode').val());
  //   if(this.value.length < 6) return;
  //   console.log($('#couponCode').val());
  // });
});

