$(document).ready(function () {
  $('#option-submit').on('click', function () {
    var option_selected = $('#option_selected').val();
    console_log(option_selected)
    var option_price = $(('#option_selected').data("price"));
    console_log(option_price);
    $('#option_section').replaceWith("<p>Vous avez choisi : " +  option_selected + "</p>");
  });
});
