// With JQuery
$("#ex6").rangepicker();
$("#ex6").on("slide", function (slideEvt) {
  $("#ex6RangePickerVal").text(slideEvt.value);
});
