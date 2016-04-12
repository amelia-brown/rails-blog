$(document).ready(function() {
  $('.editable').editable({
    type: "textarea",
    url: "/about",
    name: "content",
    title: "Update content",
    ajaxOptions: {
      type: 'put',
      dataType: 'json'
    }
  });

  $.ajax({
    url: '/about',
    responseTime: 200,
    response: function(settings) {
      console.log(settings);
    }
  });
});
