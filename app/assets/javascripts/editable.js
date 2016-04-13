$(document).ready(function() {
  $.fn.editable.defaults.mode = 'inline';
  $('.editable').editable({
    ajaxOptions: {
      type: 'put',
      dataType: 'json'
    }
  });


  if (window.location.pathname === "/work") {
    $.ajax({
      url: '/work',
      responseTime: 200,
      response: function(settings) {
        console.log(settings);
      }
   });
  } else if (window.location.pathname === "/about") {
    $.ajax({
      url: '/about',
      responseTime: 200,
      response: function(settings) {
        console.log(settings);
      }
   });
  } else {
    return;
  }
});
