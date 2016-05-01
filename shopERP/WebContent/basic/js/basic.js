$(function() {
	$('#newBtn').on('click', function() {
		$('.add').css("display", "block");
	})
	$('#updateBtn').click(function(){
		$('.update').css("display","block");
	$('#updateBtn').on('click', function() {
		$('.update').css("display", "block");
		$("input[name=id_box]:checked").each(function() {
			var upSelect = $(this).val();
			console.log(upSelect);
			var url = "upSelect.ba?upSelect=" + upSelect;
			$(location).attr('href', url);
		});
		console.log("aaaa");
		$('.update').css("display", "block")
	})
	$('.closeBtn').click(function() {
		$('.xclose').css("display", "none");
	})
})

$(function() {
	$('input').keyup(function() {
		if ($(this).val() != null) {
			$(this).next().addClass("glyphicon");
			$(this).next().addClass("glyphicon-ok");
			$(this).next().addClass("form-control-feedback");
		}
		if ($(this).val() == "") {
			$(this).next().removeClass("glyphicon");
			$(this).next().removeClass("glyphicon-ok");
			$(this).next().removeClass("form-control-feedback");
		}
	})
})
$(function() {
	$(".productChecked").click(function() {
		//$('#searchTable').empty();
		$("input[name=productRow]:checked").each(function() {
			var checks = $(this).val();
			$(".product_id2").attr("value", checks);
		});
	});
	$("#deleteBtn").on('click', function() {
		$("input[name=productRow]:checked").each(function() {
			var checks = $(this).val();
			$(location).attr("href", "deleteProduct.ba?checks=" + checks);
		});
	});

});
$(function(){
	$('#search_product').keyup(function() {
		var searchKey = $('#search_product').val();
  		$.ajax({
			url : "productCodeJson.ba?searchKey="+searchKey,
			type : "post",
			dataType : "json",
			success : function(data) {
				var html = "<tr><th>품목코드</th><th>품목명</th></tr>";
				$('#searchTable').empty();
				$.each(data, function(index, list) {
					html += "<tr><td>" + list.product_id + "</td><td>" + list.product_name + "</td></tr>";
			});
				if(html == "<tr><th>품목코드</th><th>품목명</th></tr>"){
					html += "<tr><td colspan='2'> 해당코드는 사용가능합니다.</td></tr>";
					$('#useBtn').on('click',function(){
						var searchKey = $('#search_product').val();
						$('#product_id').val(searchKey);
						$('#search_product').val('');
						$('#myModal').modal('hide');
					});
				}; 
				$('#searchTable').append(html);
				},
			error : function(){
				alert("실패!");
			}
		});
	});
 	
});

});