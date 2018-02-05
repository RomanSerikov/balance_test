$(document).on('click', '.edit_item_link', function(e) {
  e.preventDefault();

  var itemId = $(this).data('itemId');
  var form = $('#edit_item_' + itemId);

  if (!$(this).hasClass("cancel")) {
    $(this).html("Close edit");
    $(this).addClass("cancel");
  } else {
    $(this).html("Edit item");
    $(this).removeClass("cancel");
  }

  form.toggle();
});
