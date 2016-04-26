$(function() {
	$("#insert_emp_btn").on("click", function(e) {
		alert("동작");
		e.preventDefault();
		$(".hr_body").empty();
		
		var thisHref = "insert_emp.jsp";
		
		var AjaxHTML = $.ajax({
			url : thisHref,
			type : "POST",
			dataType : "jsp",
			async : false
		}).responseText;

		$(".hr_body").html(AjaxHTML);
	});
});