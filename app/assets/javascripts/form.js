$(document).ready(function(){
  $('#submitBtn').on('click', function(){
  	if (confirm("Do you want to go ahead....")) {
        $('#new_fixed_deposit').submit();
    } else {
       window.location.reload(true);
    }
  })
});