$(function() {

   $('.local li a').click(function(e) {
      e.preventDefault();
      $('#contents').empty();
      
      $('#contents').load($(this).attr('href'));
   });
   
   $('.local li a').unbind('click');
   

   $('.local li a').not('#gw_cal').click(function(e) {
      e.preventDefault();
      $('#contents').empty();
      $('#contents').load($(this).attr('href'));
   });

})