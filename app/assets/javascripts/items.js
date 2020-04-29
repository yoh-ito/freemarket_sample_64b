$(function () {
  $('#item_price_number').text("ー");
  $('.input-form_price').keyup(function () {
    var number = String($(this).val());
      if ((number >= 300) && (number <= 9999999)) {
        $('#item_price_number').text("¥ " + Math.floor(number * 0.03));
      } else {
        $('#item_price_number').text("ー");
      }
   });
 })