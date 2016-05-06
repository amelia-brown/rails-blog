$(document).ready(function() {
  $(".modal__toggle-button").click(function() {
    $(".modal__toggle-container").toggle();
  });

  function photoPreview(input) {
    if(input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('.img-preview').attr({src: e.target.result, class: "show"});
        $('.modal__picture__span').html("");
        $('<span class="modal__picture__remove">Remove photo</span>').insertAfter(".modal__picture__label");
      }
      reader.readAsDataURL(input.files[0]);
    }
  };

  function removePhoto() {
    $('.img-preview').attr({src: "#"});
    $('.modal__field__photo').val(function() {
      return "";
    });
  };

  $('.modal__picture').on('click', ".modal__picture__remove", removePhoto());

  $('.modal__field__photo').change(function(){
    photoPreview(this);
  });


});
