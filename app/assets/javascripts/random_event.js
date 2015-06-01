$(document).on('ready page:load', function() {
  $(".swipe-card-wrapper").on('click', (function() {
    $.ajax({
      url: "/",
      type: "GET",
      datatype: 'html',
      success: function() {
        $(".swipe-card-wrapper").html();
      }
    });
  }));
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