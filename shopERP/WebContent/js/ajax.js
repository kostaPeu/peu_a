$(function() {
   $('.local li a').not('#gw_cal').on('click', function(e) {
      e.preventDefault();
      $('#contents').empty();
      $('#contents').load($(this).attr('href'));
   });
});