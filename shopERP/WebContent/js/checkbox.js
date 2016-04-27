$(function(){
	$(".item_box").mouseover(function(){
		$(this).css("box-shadow", "0 0 10px #aaa");
	}).mouseout(function(){
		$(this).css("box-shadow", "none");
	}).on('click', function(){

	    var $thischeck = $(this).find("#input_check");
	    
	    alert($thischeck.is(":checked"));

	    if($thischeck.is(":checked")){
	    	$thischeck.attr("checked", false);
	    	$(this).css("background", "none");
	    } else {
	    	$thischeck.attr("checked", true);
	    	$(this).css("background", "#aaa");
	    }
	});
});