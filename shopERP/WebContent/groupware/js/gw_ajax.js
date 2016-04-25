$(function() {
	$('.row a').on('click', function(e) {
		e.preventDefault();
		$('#contents').empty();

		$(this).each(function(key, value) {
			var thisHref = $(this).attr('href');
			var AjaxHTML = $.ajax({
				url : thisHref,
				type : "POST",
				dataType : "jsp",
				async : false
			}).responseText;
			
			$('#contents').html(AjaxHTML);
		});
	});
	
	$('.td-over a').on('click', function(e) {
	    e.preventDefault();
	      
	      $('#contents').empty();
	      $('#contents').load($(this).attr('href'), function() {
	         alert('hoho')
	      });
	});
	
	
});