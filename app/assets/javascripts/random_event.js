$(document).on('ready page:load', function() {
  $(".swipe-card-wrapper").on('click', (function() {
    $.getScript('/');

    // ({
    //   url: "/",
    //   type: "GET",
    //   datatype: 'js',
    //   success: function(data) {
    //     $(".swipe-card-wrapper").html(data);
    //   }
    }));
  // }));
  // $(".swipe-card-wrapper").on('click', (function() {
  //   $.ajax({
  //     url: "",
  //     type: "GET",
  //     success: function() {
  //       $(".swipe-card-wrapper").load(location.href);
  //     }
  //   });
  // }));
});