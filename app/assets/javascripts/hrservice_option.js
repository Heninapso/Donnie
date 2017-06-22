$(document).ready(function () {
  $('#option-submit').on('click', function () {
    var option_selected = $('#option_selected').val();
    $('#option_section').replaceWith("<p>Vous avez choisi : " +  option_selected + "</p>");
  });
});

