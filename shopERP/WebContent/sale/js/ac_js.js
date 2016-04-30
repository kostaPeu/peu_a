$(function(){
	$('li a').click(function(e) {
		e.preventDefault();
	})

   $('.collapse li a').click(function(e) {
      e.preventDefault();
      
      $('#contents').empty();
      $('#contents').load($(this).attr('href'));
   });
});
