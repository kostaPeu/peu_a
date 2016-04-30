<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="mainContents">
		<div class="contentsName">
			<a id="title">통장계좌리스트</a>
		</div>
		<br>
		<!-- 통장계좌리스트 -->
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped"
					id="Card">
					<thead id="cardList">
						<tr class="mainTable">
							<th>계좌번호</th>
							<th>계좌명</th>
							<th>계정번호</th>
							<th>검색창내용</th>
							<th>사용여부</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody id="cardInfos">
						<c:forEach var="a" items="${list}">
							<tr class="mainTable">
								<td>${a.account_number }</td>
								<td>${a.account_name}</td>
								<td>${a.code }</td>
								<td>${a.account_detail }</td>
								<td>${a.use }</td>
								<td>${a.remarks }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="buttongroup">
				<input type="button" id="newBtn" class="btn btn-default" value="등록"
					onclick="fn_add()"> <input type="button" id="newBtn"
					class="btn btn-default" value="수정"> <input type="button"
					id="newBtn" class="btn btn-default" value="삭제">
			</div>
		</div>
	</div>
</body>
</html>