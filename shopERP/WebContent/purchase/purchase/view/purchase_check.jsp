<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="purchase/css/purchase.css" rel="stylesheet">
    
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="purchase/js/purchase.js" type="text/javascript"></script>
</head>
<body>
	<table class="table table-bordered table-hover new">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>구매번호</th>
				<th>거래처</th>
				<th>품목명</th>
				<th>구매금액</th>
				<th>구매수량</th>
				<th>구매일자</th>
				<th>입고창고</th>
			</tr>
		</thead>
		<c:forEach var="list" items="${list }">
			<tr>
				<td><input type="checkbox" class="upSelect check_id" name="id_box" value="${list.customer_id }"></td>
				<td>${list.buy_id}</td>
				<td>${list.customer_id }</td>
				<td>${list.product_id }</td>
				<td>${list.phone_number }</td>
				<td>${list.customer_address }</td>
				<td>${list.copy_bankbook }</td>
				<td>${list.bankbook_check }</td>
				<td>${list.customer_email }</td>
				<td>${list.customer_fax }</td>
				<td>${list.checkman }</td>
				(pk)	customer_id(fk)	product_id(fk)	buy_date	warehouse_id(fk)	pay_type	buy_price	buy_amount
				
			</tr>
		</c:forEach>
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
		<input type="button" id="newBtn" class="btn btn-default" value="등록" onclick="fn_add()">
		<input type="button" id="newBtn" class="btn btn-default" value="수정">
		<input type="button" id="newBtn" class="btn btn-default" value="삭제">
	</div>
</body>
</html>