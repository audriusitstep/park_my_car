$(function() {
  function poll(){
    $.get("parking_status").done(function(data) {
      var arrayLength = data.length;
      for (var i = 0; i < arrayLength; i++) {
        elem_name = '#parking_car_balance_' + data[i]['id']
        $(elem_name).html(data[i]['round_balance']);
      }
    });
  }
  setInterval(function(){ poll(); }, 1000);
});
