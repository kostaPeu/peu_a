function fn_add(){
	location.href = "./mainTest2.jsp?left=./purchase/view/purchase.jsp&contents=./purchase/view/purchase_add.jsp";
}
$(function(){
	$('.purchase_date').datepicker({
		showButtonPanel : true,
		dateFormat : "yy-mm-dd",
		changeYear : true,
		changeMonth : true
	});
})