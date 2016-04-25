<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/shopERP/odm/css/odm_orderCollect.css" rel="stylesheet">
<script src="/shopERP/odm/js/odm_orderCollect.js" type="text/javascript"></script>
</head>
<body>
<div class="success xclose">
		<div class="title">
			<span class=""><strong>주문수집</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="contentsMsg">수집이 완료되었습니다.</div>
	</div>
	<div class="fail xclose">
		<div class="title">
			<span class=""><strong>주문수집</strong></span>
			<button type="button" class="close closeBtn">
				<span>&times;</span>
			</button>
		</div>
		<div class="contentsMsg">에러!</div>
	</div>
	<table class="table table-bordered table-hover">
		<tr>
			<th><input type="checkbox"></th>
			<th>쇼핑몰</th>
			<th>쇼핑몰 로그인ID</th>
			<th>최종주문수집시도일</th>
		</tr>
		<tr>
			<td><input type="checkbox"></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<div class="buttongroup">
		<input type="button" id="collectBtn" class="btn btn-default" value="수집">
	</div>
</body>
</html>