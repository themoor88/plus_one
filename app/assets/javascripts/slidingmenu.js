$(document).ready(function(){
  $('.sliding-panel-button,.sliding-panel-fade-screen,.sliding-panel-close').on('click touchstart',function (e) {
    $('.sliding-panel-content,.sliding-panel-fade-screen').toggleClass('is-visible');
    e.preventDefault();
  });

  var listItems = $('.click-to-remove')

  for (var i = 0; i < listItems.length; i++) {
    listItems[i].onclick = function() {this.parentNode.removeChild(this);}
  }

  $("notification-accept-decline").click(function(e) {
    e.preventDefault();
  });
});