<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/responsive.css">    
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="/shopERP/sale/css/sale.css" rel="stylesheet">    
    <script src="/shopERP/sale/js/sale.js" type="text/javascript"></script>
   	<script src="/shopERP/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$('.saleListAdd').on("click",function(){
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
	})
})	
</script>
</head>

<body>
<div class="container">
	<form class="form-horizontal" action="">
		<table class="table table-bordered table-hover new" id="saleList">
				<thead>
				<tr>
					<th><input type="checkbox"></th>
					<td><input type="button" class="btn btn-default btn-sm saleListAdd" value="▼"></input></td>
					<th>판매번호</th>
					<th>거래처</th>
					<th>품목명</th>
					<th>판매금액</th>
					<th>판매수량</th>
					<th>판매일자</th>
					<th>입고창고</th>
					<th>지급방법</th>					
				</tr>
				</thead>
				<tr>
					<td><input type="checkbox"></td>
					<td></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
					<td><input type="text" name="" id="" size="8"></td>
				</tr>	
			</table>
			<table class="table table-bordered table-hover new">
				<tr>
					<td>수량</td>
					<td><input type="text" name="" id=""></td>
					<td>합계금액</td>
					<td><input type="text" name="" id=""></td>
				</tr>
			</table>
		<div class="buttongroup">
			<input type="button" id="save" class="btn btn-default" value="저장">			
		</div>
	</form>
</div>
<script src="./js/bootstrap.min.js"></script>
</body>
</html>