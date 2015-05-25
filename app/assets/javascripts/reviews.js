$(document).ready(function() {
     $(".new-review")
        .on('ajax:beforeSend', function() {alert("loading!");})
        .on('ajax:success', function(data, status, xhr) {alert("success!");})
        .on('ajax:error', function(xhr, status, error) {alert("error!");})
        .on('ajax:complete', function() {alert("complete!");});
  });