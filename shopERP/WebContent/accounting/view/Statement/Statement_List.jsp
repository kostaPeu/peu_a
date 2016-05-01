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
<body>
	<!-- 상단 메뉴이름 -->
	<div class="mainContents">
		<div class="contentsName">
			<a id="title">전표이력조회</a>
		</div>
		<!-- /상단 메뉴이름 -->
		<br>

		<!-- 카드리스트 -->
		<div class="container-fluid">
			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped"
					id="Card">
					<thead id="Statement_List">
						<tr class="mainTable">
							<th><input type="checkbox"></th>
							<th>전표번호</th>
							<th>거래유형</th>
							<th>금액</th>
							<th>거래처명</th>
							<th>전표종류</th>
							<th>상태</th>
							<th>비고</th>
							<th>이력</th>
						</tr>
					</thead>
					<tbody id="cardInfos">
						<tr class="mainTable">
							<td><input type="checkbox"></td>
							<td>16/04/25-6</td>
							<td>지출결의서</td>
							<td>1,000,000</td>
							<td>LG전자</td>
							<td>지출</td>
							<td>신규</td>
							<td>모니터 구매</td>
							<td><input type="button" name="select" value="보기"></td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><input type="button" name="select" value="보기"></td>
						</tr>
					</tbody>
				</table>
				<div class="buttongroup" align="right">
					<input type="button" id="print" class="btn btn-default"
						value="인쇄">
					<input type="button" id="excel" class="btn btn-default"
						value="엑셀저장">
				</div>
			</div>
		</div>
	</div>

</body>
</html>