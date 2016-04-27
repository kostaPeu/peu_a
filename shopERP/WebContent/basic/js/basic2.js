$(function(){
	$('#newBtn').on('click', function(){
		$('.add').css("display","block")
	})
	$('#overlap_check2').on('click', function(){
		var id_val = $('#customer_id2').val();
		$('#getCheckId').empty();
		$('#customerIDcheck').val('');
		$('#customerIDcheck').val(id_val);
		$('.customer_id_check').css("display","block");
	})
	$('.check_id').on('click', function(){
		$("input[name=id_box]:checked").each(function() {
			var upSelect = $(this).val();
			$('.view_id').attr('value',upSelect);
		});
	})
	$('#useCustomerId').on('click',function(){
		var use_id = $('#customerIDcheck').val();
		$('#customer_id2').val('');
		$('#customer_id2').val(use_id);
		$('.customer_id_check').css("display","none");
	})
	/*$('#overlap_check').on('click', function(){
		var id = $('#customer_id2').val();
		var url = "";
	})*/
	$('#deleteBtn').on('click', function(){
		var array = [];
		$("input[name=id_box]:checked").each(function() {
			array.push($(this).val());	
		});
		var url = "DeleteAction.ba?array="+array;
		if(array == ""){
			alert("삭제할 목록을 고르시오");
		}else{
			$(location).attr('href',url);
		}		
	})
	$('#updateBtn').on('click',function(){
		var check = "check";
		$("input[name=id_box]:checked").each(function() {
			 check = $(this).val();
		});
		if(check == "check"){
			alert("수정할 목록을 고르시오");
		}else{
			$('.update').css("display","block")
		}		
	})
	$('.closeBtn').click(function(){
		$('.xclose').css("display","none")
	})
	$('.closeBtn_check').click(function(){
		$('.xclose_check').css("display","none")
	})
	$('.checkID').submit(function(){
		$('#getCheckId').empty();
		$.ajax({
			url : './json/customer_check.jsp',
			dataType : 'json',
			data : $(this).serialize(),
			success : handler
		});
		return false;
	});
	function handler(data){		
		$.each(data, function(index, list){
			var html = '<div class="col-sm-9">';
			html += '<table class="table table-bordered table-hover">'
			html += '<tr><th>'+"거래처코드"+'</th>';
			html += '<th>'+"거래처명"+'</th>';
			html += '<th>'+"대표자명"+'</th>';
			html += '<th>'+"전화번호"+'</th></tr>';
			if(list.customer_id == ""){
				html += '<tr><td colspan="4">'+"해당 코드는 사용할 수 있습니다."+'</td></tr>';
			}else{				
				html += '<tr><td>'+list.customer_id+'</td>';
				html += '<td>'+list.customer_name+'</td>';
				html += '<td>'+list.repre_name+'</td>';
				html += '<td>'+list.phone_number+'</td></tr>';				
			}
			html += '</table>';
			html += '</div>';
			$('#getCheckId').append(html);
		});
	}
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