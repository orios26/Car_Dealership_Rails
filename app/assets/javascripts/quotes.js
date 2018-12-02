var carPrice;

carPrice = function () {
  var formatter = new Intl.NumberFormat('en-US', {style: 'currency', currency: 'USD'});
  var selection_id;
  selection_id = $('#quote_vehicle_id').val();
  return $.getJSON('/vehicles/' + selection_id +'/price', {}, function (json, response) {
    var format_price = formatter.format(json['price']);
    return $('#price').text(format_price);
  });
};

$(document).on('turbolinks:load', function () {
  if($('#quote_vehicle_id').length) {
    carPrice;
  }
  $('#quote_vehicle_id').on('change', carPrice);
  $('#quote_vehicle_id').trigger("change");
});
