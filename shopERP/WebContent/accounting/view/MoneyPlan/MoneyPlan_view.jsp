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
<link href="/shopERP/css/bootstrap.css" rel="stylesheet">
<link href="/shopERP/accounting/css/card.css" rel="stylesheet">
</head>
<body id="body_html" class="font-dotum">
	<!-- 상단 컨텐츠 이름 -->
	<div class="mainContents">
		<div class="contentsName">
			<a id="title">자금계획조회</a>
		</div>
		<!-- /상단 메뉴이름 -->
		<br>
		<!-- 카드리스트 -->
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped"
					id="Card">
					<thead id="cardList">
						<tr class="mainTable">
							<th>구분</th>
							<th>발생기간</th>
							<th>금액</th>
							<th>계좌명</th>
							<th>거래처</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody id="cardInfos">
						<tr class="mainTable">
							<td>출금</td>
							<td>2016년 3월 22일</td>
							<td>70,000</td>
							<td>신한은행-1113</td>
							<td>Kosta</td>
							<td>마우스 10개</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>