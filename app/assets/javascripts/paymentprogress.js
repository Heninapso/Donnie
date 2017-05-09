$(document).ready(function() {
  $(".stripe-button-el").on("click", function () {
    console.log('payment ok');
    $(".avatar-bordered-sml").addClass('hidden');
    $(".avatar-bordered-sml-2").toggleClass('hidden');
    $(".design-bar-2").removeClass('inactive');
    $(".design-bar-2").addClass('active');
    $(".text-bar-2").removeClass('pastel');
    $(".text-bar-2").addClass('display');
  })
})
