$(document).ready(function () {
  $('#coupon-submit').on('click',function(e) {
    // e.preventDefault()
    var coupon = $('#couponCode').val();
    console.log(coupon);
    $.getJSON(window.location.href +"/check_coupon_code", {order: params[:order_id], coupon: coupon}, function(data) {
      var newPrice = data.apply_discount($("#orderAmount").val());
      console.log(newPrice);
      $("#orderAmount").text = ("$" + data);
    });
  });
  // var coupon1 = $('.couponCode');
  // console.log(coupon1);
  // $('#couponCode').on('keyup', function(event) {
  //   // console.log($('#couponCode').val());
  //   if(this.value.length < 6) return;
  //   console.log($('#couponCode').val());
  // });
});

