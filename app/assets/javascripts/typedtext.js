$(function(){
  $(".element").typed({
    strings: ["play soccer.", "make music.", "talk politics.", "go shopping.", "have coffee.", "play games.", "share experiences.",],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000
  });
});

var listItems = document.getElementsByTagName("li");
for (var i = 0; i < listItems.length; i++) {
  listItems[i].onclick = function() {
    this.parentNode.removeChild(this);
  }
}