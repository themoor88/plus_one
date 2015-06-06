$(document).on('ready page:load', function () {

  // $(function() {
  //   $('.front').on('touchstart', function() {
  //       this.classList.toggle('hover');
  //   });
  // });

  $(function() {
    var animationClasses = 'animated alternate iteration zoomOut';
    var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

    $('.animate-trigger').on('click',function() {

      setTimeout(function() {  // Add delay to AJAX so that card load is seamless (50% of animation time)
        $.getScript('/');
      }, 200);

      $('.animate-target').addClass(animationClasses).one(animationEnd,function() {
        $(this).removeClass(animationClasses);
      });
    });
  });
});