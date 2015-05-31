$(document).on('ready page:load', function(){
  $('.btn-friend').on('click', function(e){
    // e.preventDefault();
    $(this).hide();
    var url = $(this).attr('href');
    $.ajax({
      url: url,
      type: 'POST',
      cache: false,
      dataType: 'script'
    });
  });
});