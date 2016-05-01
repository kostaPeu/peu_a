<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
</head>
<body id="body_html" class="font-dotum">
	<!-- 상단 컨텐츠 이름 -->
	<div class="contentsName">
		<a id="title">기초잔액등록</a>
	</div>
	<br>

	<form class="form-horizontal" action="">
		<table class="table table-bordered table-hover new" id="moneyList">

			<thead style="vertical-align: middle; text-align: center;">
				<tr>
					<th><input type="checkbox"></th>
					<th><input type="button"
						class="btn btn-default btn-sm saleListAdd" value="▼"></input></th>
					<th>거래처</th>
					<th>계좌번호</th>
					<th>장부잔액</th>
					<th>실잔액</th>
					<th>차액</th>
					<th>부서명</th>
					<th>프로젝트명</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody style="vertical-align: middle; text-align: center;">
				<tr>
					<td><input type="checkbox"></td>
					<td></td>
					<td><input id="company_number" type="text" disabled="disabled">
						<button id="company_number_search" class="btn btn-default btn-sm">
							<span class="fa fa-search"></span>
						</button></td>

					<td><input type="text" name="" id="account_number"
						disabled="disabled">
						<button id="account_number_search" class="btn btn-default btn-sm">
							<span class="fa fa-search"></span>
						</button></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
					<td><input type="text" name="" id=""></td>
				</tr>

			</tbody>
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

</body>
</html>