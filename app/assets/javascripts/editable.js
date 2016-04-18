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

  $('.edit').click(function() {
    var iseditable = $(this).data("editable");
    var content_block = $(this).data("pk");
    var path = window.location.pathname;
    var content = $(this).data("content");
    $.ajax({
      url: path,
      responseTime:200,
      dataType: 'json',
      type: 'put',
      data: JSON.stringify([
        { pk: content_block,
          content: content,
          editable: iseditable
        }
      ]),
      headers: {
        "pk": content_block
      },
      success: function(settings) {
        console.log(settings);
      }
    });
  });
//    if (window.location.pathname === "/work") {
//      $.ajax({
//        url: "/work",
//        responseTime:200,
//        dataType: 'json',
//        type: 'put',
//        success: function(settings) {
//          console.log(settings);
//        }
//      });
//    } else if (window.location.pathname === "/about") {
//      $.ajax({
//        url: "/about",
//        responseTime:200,
//        dataType: 'json',
//        type: 'put',
//        success: function(settings) {
//          console.log(settings);
//        }
//      });
//    } else {
//      return;
//    }
//  });

});
