$(function(){
	$('#collectBtn').on('click', function(){
		$('.success').css("display","block");
		//$('.fail').css("display","block");
	})
	$('.closeBtn').on('click',function(){
		$('.xclose').css("display","none");
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