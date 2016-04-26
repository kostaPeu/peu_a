$(function(){
	$('#item_search').click(function(){
		$('.item_div').css("display","block")
	})
	$('#item_closeBtn').click(function(){
		$('.item_div').css("display","none")
	})
	$('#customer_search').click(function(){
		$('.customer_div').css("display","block")
	})
	$('#customer_closeBtn').click(function(){
		$('.customer_div').css("display","none")
	})
})
$(function(){
	$('.purchase_date').datepicker();
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
	$('#detail_search').click(function(){
		$('.hide_detail').css("display","block");
	})
	$('#simple_search').click(function(){
		$('.hide_detail').css("display","none");
	})
	/*$('.saleListAdd').on("click",function(){
		var html = "<tr>";
		html += "<td><input type='checkbox'></td>";
		html += "<td></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "<td><input type='text' name='' id='' size='8'></td>";
		html += "</tr>";
		$('#saleList').append(html);
	})*/
})
function fn_add(){	
	window.open("./sale/view/sale_add.jsp","구매입력","width=1000, height=800");
}