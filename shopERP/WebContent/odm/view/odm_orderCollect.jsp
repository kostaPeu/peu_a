<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/shopERP/odm/css/odm.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$('#collectBtn').on('click', function(){
		$('.success').css("display","block");
		/* $('.failed').css("display","block"); */
	})
	$('.closeBtn').click(function(){
		$('.xclose').css("display","none")
	})
})
</script>
</head>
<body>
	<div class="success xclose">
		<div class="title">
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<br><br>
		<div class="localcenter"><strong>������ �Ϸ�Ǿ����ϴ�.</strong></div>
	</div>
		<div class="failed xclose">
		<div class="title">
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="localcenter"><strong>����!</strong></div>
	</div>
	<div class="search">
		<div class="searchform">
			<table class="table table-bordered table-hover new">
				<tr>
					<th><input type="checkbox"></th>
					<th>���θ�</th>
					<th>���θ� �α��� ID</th>
					<th>�ֹ�������</th>
				</tr>
				<tr class="localcenter">
					<td><input type="checkbox"></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<div class="localcenter"><input type="button" id="collectBtn" class="btn btn-default" value="����"></div>
			
		</div>
	</div>
</body>
</html>