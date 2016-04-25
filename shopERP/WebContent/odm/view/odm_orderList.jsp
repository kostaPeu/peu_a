<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/shopERP/odm/css/odm_orderCollect.css" rel="stylesheet">
</head>
<body>
<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th><input type="checkbox"></th>
					<th>주문일</th>
					<th>주문번호</th>
					<th>주문자명</th>
					<th>품목번호</th>
					<th>주문수량</th>
					<th>결제금액</th>
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
			<input type="button" id="addBtn" class="btn btn-default" value="송장등록">
			<input type="button" id="addAllBtn" class="btn btn-default" value="송장일괄등록"> 
			<input type="button" id="submitBtn" class="btn btn-default" value="송장전송">
		</div>
		
</body>
</html>