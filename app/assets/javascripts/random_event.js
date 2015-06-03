$(document).on('ready page:load', function() {
  $(".swipe-card-wrapper").on('click', (function() {
    $.getScript('/');
  }));

  $(".swipe-card-wrapper").on('swipeleft', (function() {
    $.getScript('/');
  }));
});