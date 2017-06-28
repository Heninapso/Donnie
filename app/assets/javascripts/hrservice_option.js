$(document).ready(function () {
  $('select').change(function () {
    var option_selected = $( "select option:selected" ).val();
    console.log(option_selected)
    var option_price = $( "select option:selected" ).data("price");
    console.log(option_price);
    // $("#option_section").append("<p class=italic>" + option_price + " € </p>")
    var amount = parseInt($("#orderAmount").html());
    console.log(amount);
    var new_amount = option_price + amount;
    console.log(new_amount);
    $("#orderAmount").text(new_amount);
    $(".amount").append("<p class=italic>Option incluse : " + option_selected + " + "+ option_price+" € </p>");
    // $('#option_section').replaceWith("<p>Vous avez choisi : " +  option_selected + "</p>");

  });
});

// ("<p>incluant l'option " + option_selected + " - " + option_price + " €""</p>"
