$(function() {
  function poll(){
    $.get("parking_status").done(function(data) {
      var arrayLength = data.length;
      for (var i = 0; i < arrayLength; i++) {
        var elem_name = '#parking_car_balance_' + data[i]['id'];
        $(elem_name).html(data[i]['round_balance']);

        var progress_elem = '#progress_park_car_' + data[i]['id'];
        $(progress_elem).attr('aria-valuenow', data[i]['progress']).css('width', data[i]['progress'] + '%');
        $(progress_elem + ' > span').html(data[i]['progress']);
        
        if (data[i]['progress'] > 100) {
          var parking_car_row = '#parking_car_row_' + data[i]['id'];
          $(parking_car_row).hide(500);
        }
      }
    });
  }
  setInterval(function(){ poll(); }, 1000);
});
