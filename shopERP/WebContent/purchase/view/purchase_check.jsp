<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="purchase/css/purchase.css" rel="stylesheet">
    <script src="purchase/js/purchase.js" type="text/javascript"></script>
</head>
<body>

	<h2 class="page_title">구매조회</h2>

	<table class="table table-bordered table-hover new">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>구매번호</th>
				<th>거래처명</th>
				<th>품목명</th>
				<th>구매금액</th>
				<th>수량</th>
				<th>구매일자</th>
				<th>입고창고</th>
				<th>지급방법</th>
			</tr>			
		</thead>
		<c:forEach var="list" items="${list }">
			<tr>
				<td><input type="checkbox" class="upSelect check_id" name="id_box"></td>
				<td>${list.buy_id}</td>
				<td>${list.customer_name }</td>
				<td>${list.product_name }</td>
				<td>${list.buy_price }</td>
				<td>${list.buy_amount }</td>
				<td>${list.buy_date }</td>
				<td>${list.warehouse_name }</td>
				<td>${list.pay_type }</td>		
			</tr>
		</c:forEach>
	</table>
	<div class="buttongroup">
		<input type="button" id="newBtn" class="btn btn-default" value="등록" onclick="fn_add()">
		<input type="button" id="newBtn" class="btn btn-default" value="수정">
		<input type="button" id="newBtn" class="btn btn-default" value="삭제">
	</div>
</body>
</html>