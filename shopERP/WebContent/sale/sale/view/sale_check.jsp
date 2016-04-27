<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

 <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!-- Custom CSS -->
   
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="sale/css/sale.css" rel="stylesheet">
    
    <script src="/shopERP/js/jquery.js" type="text/javascript"></script>
    <script src="/shopERP/sale/js/sale.js" type="text/javascript"></script>
</head>
<body>
	<table class="table table-bordered table-hover new">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>판매번호</th>
				<th>거래처</th>
				<th>품목명</th>
				<th>금액</th>
				<th>수금방법</th>
				<th>판매일자</th>
				<th>출고창고</th>
			</tr>
		</thead>
		<tr>
			<td><input type="checkbox"></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<div class="buttongroup">
		<input type="button" id="newBtn" class="btn btn-default" value="등록"" onclick="fn_add()">
		<input type="button" id="newBtn" class="btn btn-default" value="수정">
		<input type="button" id="newBtn" class="btn btn-default" value="삭제">
	</div>
</body>
</html>