$(function () {
  $('#price-form').change(function () {
    var fee = $('#price-form').val();
    var feenumber = parseInt(fee);

    var result = feenumber / 0.03

    $('#item_price_number').val(result)
  });
});