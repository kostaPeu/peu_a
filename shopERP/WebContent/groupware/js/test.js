$(function() {
	$('.container-fluid li a').on('click', function(e) {
		e.preventDefault();
		$('.wrapper-erp-local-nav').empty();

		$(this).each(function(key, value) {
			var thisHref = $(this).attr('href') + '.jsp';

			var AjaxHTML = $.ajax({
				url : thisHref,
				type : "POST",
				dataType : "jsp",
				async : false
			}).responseText;
			
			$('.wrapper-erp-local-nav').html(AjaxHTML);
		});
	});
});