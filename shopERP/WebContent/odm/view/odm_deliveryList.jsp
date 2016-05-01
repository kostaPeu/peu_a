<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/shopERP/stock/css/stock.css" rel="stylesheet">
</head>
<body>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<!-- <th><input type="checkbox"></th> -->
				<th>배송번호</th>
				<th>주문번호</th>
				<th>송장번호</th>
				<th>수취인</th>
				<th>수취인주소</th>
				<th>배송상태</th>
			</tr>
		</thead>
		<c:forEach var="d" items="${list} ">
			<tr class="tablecenter">
				<!-- <td><input type="checkbox"></td> -->
				<td>${d.delivery_id }</td>
				<td>${d.order_id }</td>
				<td>${d.invoice_number }</td>
				<td>${d.addressee }</td>
				<td>${d.addressee_address }</td>
				<td>${d.delivery_state }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>