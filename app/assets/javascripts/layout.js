$(document).on('ready page:load', function(){
//   $(".home-link").click(function() {
//     $.ajax({
//     url: "",
//     type: "POST",
//       success: function() {
//       $(".main").append(".yield")
//       }
//     });
//   });
// });
  $(".home-link").click(function(e) {
      $(this).ajax("your route to the action");
  }
});