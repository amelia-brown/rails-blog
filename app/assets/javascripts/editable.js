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
  };

  $('.edit').click(function( event ) {
    event.preventDefault()
    var iseditable = $(this).data("editable");
    var id = $(this).data("pk");
    var page = $(this).data("page");
    var path = window.location.pathname;
    $.ajax({
      url: path,
      responseTime:200,
      dataType: 'json',
      type: 'put',
      data: JSON.stringify(
        { pk: id,
          page: page,
          editable: iseditable
        }
      ),
      headers: {
        "Content-Type": "application/json"
      },
      success: function(settings) {
        $('#content' + id).editable('toggleDisabled');
        console.log(settings);
      },
    });
  });
});
