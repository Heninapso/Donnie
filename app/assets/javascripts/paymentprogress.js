$(document).ready(function() {
  $(".stripe-button-el").on("click", function () {
    console.log('payment ok');
    $(".avatar-bordered-sml").toggleClass('hidden');
    $(".text-bar").addClass('display');
    $(".design-bar").addClass('active');
  })
})
