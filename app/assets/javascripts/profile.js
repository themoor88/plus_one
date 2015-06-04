$(document).on('ready page:load', function() {
  $(".new-review").submit(function(e) {
    e.preventDefault();

    $.getScript('/review');
  });




});