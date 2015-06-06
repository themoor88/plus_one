// $(function($) {
  // $("#card").flip();
  // var fliped = false;

  // $("#card").click(function(){
  //   if (fliped) {
  //     $(".front").css({transform: "rotateY(0deg)"})
  //     $(".back").css({transform: "rotateY(180deg)"})
  //   } else {
  //     $(".front").css({transform: "rotateY(180deg)"})
  //     $(".back").css({transform: "rotateY(0deg)"})
  //   }

  //   fliped = !fliped;
  // })

// });

////////// RANDOM EVENT BUTTON ///////////

$(function() {
  var animationClasses = 'animated alternate iteration zoomOut';
  var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

  $('.animate-trigger').on('click',function() {
      $.getScript('/');
    $('.animate-target').addClass(animationClasses).one(animationEnd,function() {
      $(this).removeClass(animationClasses);
    });
  });
});