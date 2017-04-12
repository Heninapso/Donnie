$(document).ready(function () {
  console.log('coucou');
  // $('#submit-button').tooltip(options);
  $('#submit-button').mouseover(function () {
    $('#submit-button').tooltip("toggle");
  });
  $('#submit-button').mouseleave(function () {
    $('#submit-button').tooltip("hide");
  });
});
