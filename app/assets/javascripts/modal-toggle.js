$(document).ready(function() {
  $(".modal__toggle-button").click(function() {
    $(".modal__toggle-container").toggle();
  });

   function photoPreview(input) {
    if(input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('.img-preview').attr({src: e.target.result, class: "show img-preview"});
        $('.modal__picture__span').css("display", "none");
        $('<span class="modal__picture__remove">Remove photo</span>').insertAfter(".modal__picture__label");
      }
      reader.readAsDataURL(input.files[0]);
    }
  };

  function removePhoto() {
    console.log("poop");
    $('.img-preview').attr("src", "#").removeClass("show");
    $('.modal__picture__remove').remove();
    $('.modal__picture__span').css("display", "inline-block")
    $('.modal__field__photo').val(function() {
      return "";
    });
  };

  $('.modal__picture').on('click', ".modal__picture__remove", removePhoto);

  $('.modal__field__photo').change(function(){
    photoPreview(this);
  });


});
