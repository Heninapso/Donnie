$(document).ready(function () {
  $('#hrdetail').on('click', function () {
    $('.details').toggleClass('hidden');
    var expand = $(this);
    console.log(expand);
  });
});
