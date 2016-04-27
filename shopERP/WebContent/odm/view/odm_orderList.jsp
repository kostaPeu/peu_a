<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/shopERP/odm/css/odm.css" rel="stylesheet"> 
</head>
<body>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>주문일</th>
				<th>주문번호</th>
				<th>상품코드</th>
				<th>상품명</th>
				<th>주문자명</th>
				<th>주문수량</th>
				<th>결제금액</th>
			</tr>
		</thead>
		<tr class="tablecenter">
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
		<input type="button" id="checkBtn" class="btn btn-default" value="발주확인">
		<input type="button" id="addBtn" class="btn btn-default" value="송장등록">
		<input type="button" id="sendBtn" class="btn btn-default" value="송장전송">
	</div>
</body>
</html>