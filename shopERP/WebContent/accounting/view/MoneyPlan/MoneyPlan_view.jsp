<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
</head>
<body>

	<h2 class="page_title">자금계획조회</h2>

	<div class="mainContents">
		<!-- 카드리스트 -->
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped"
					id="Card">
					<thead id="cardList">
						<tr class="mainTable">
							<th>구분</th>
							<th>자금계획번호</th>
							<th>발생기간</th>
							<th>금액</th>
							<th>계좌명</th>
							<th>거래처</th>
							<th>비고</th>
						</tr>
					</thead>
					
					<tbody id="cardInfos">
					<c:forEach var="m" items="${list }">
						<tr class="mainTable">
							
							<td>${m.typelist }</td>
							<td>${m.funds_id }</td>
							<td>${m.repeat_unit }</td>
							<td>${m.sums }</td>
							<td>${m.account_number}</td>
							<td>${m.customer_id }</td>
							<td>${m.remarks }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>