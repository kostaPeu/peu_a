$(function(){
	$('#newBtn').on('click', function(){
		$('.add').css("display","block")
	})
	$('#updateBtn').on('click', function(){
		
		$("input[name=id_box]:checked").each(function() {
			var upSelect = $(this).val();
			console.log(upSelect);
			var url = "upSelect.ba?upSelect="+upSelect;
			$(location).attr('href',url);
		});
		console.log("aaaa");
		$('.update').css("display","block")
	})
	$('.closeBtn').click(function(){
		$('.xclose').css("display","none")
	})
	
})
$(function(){
	$('input').keyup(function(){
		if($(this).val() != null){
			$(this).next().addClass("glyphicon");
			$(this).next().addClass("glyphicon-ok");
			$(this).next().addClass("form-control-feedback");
		}if($(this).val() == ""){
			$(this).next().removeClass("glyphicon");
			$(this).next().removeClass("glyphicon-ok");
			$(this).next().removeClass("form-control-feedback");
		}
	})
})