$(function(){
	$(".item_box").mouseover(function(){
		$(this).find(".item").addClass("mouseover");
	}).mouseout(function(){
		$(this).find(".item").removeClass("mouseover");
	}).on("click",function(e){
		e.preventDefault();

	    var $thischeck = $(this).find("#input_check");
	    var $thisimg = $(this).find("label .item");
	    
	    if($thischeck.is(":checked")){
	    	$thischeck.prop("checked", false);
	    	$thisimg.removeClass("oncheck");
	    } else {
	    	$thischeck.prop("checked", true);
	    	$thisimg.addClass("oncheck");
	    }
	});
	
});