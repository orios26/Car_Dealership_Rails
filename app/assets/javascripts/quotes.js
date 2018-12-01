var carPrice;

carPrice = function () {
  var selection_id;
  selection_id = $('#quote_vehicle_id').val();
  return $.getJSON('/vehicles/' + selection_id +'/price', {}, function (json, response) {
    return $('#price').text(json['price']);
  });
};

$(document).on('turbolinks:load', function () {
  if($('#quote_vehicle_id').length) {
    carPrice;
  }
  $('#quote_vehicle_id').on('change', carPrice);
  $('#quote_vehicle_id').trigger("change");
});
