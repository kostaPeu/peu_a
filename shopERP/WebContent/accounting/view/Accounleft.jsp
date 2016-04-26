<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<!-- <script src="/shopERP/accounting/js/ajax.js" type="text/javascript"></script> -->
<script src="/shopERP/accounting/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/main.css" rel="stylesheet">
</head>
<body>

	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">회계관리</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="./accounting/view/money_check.jsp">재무상태표</a></li>
				<li data-target="#one" data-toggle="collapse" class=""><a>회계
						기초등록</a>
					<ul id="one" class="collapse" aria-expanded="false"
						style="height: 0px;">
						<li><a href="./mainTest2.jsp?left=./accounting/view/Accounleft.jsp&contents=./accounting/view/card.jsp">기초잔액등록</a></li>
						<li><a href="./accounting/view/card.jsp">신용카드등록</a></li>
						<li><a href="./accounting/view/BackBook.jsp">통장계좌등록</a></li>
						<li><a href="./accounting/view/Project.jsp">프로젝트등록</a></li>
					</ul></li>

				<li><a class="" data-target="#two" data-toggle="collapse"
					href="javascript:;">현금거래관리</a>
					<ul id="two" class="collapse" aria-expanded="false"
						style="height: 0px;">
						<li><a href="./accounting/view/inoutMoney.jsp">입출금보고서</a></li>
					</ul></li>
				<li><a class="" data-target="#three" data-toggle="collapse"
					href="javascript:;">어음원장관리</a>
					<ul id="three" class="collapse" aria-expanded="false"
						style="height: 0px;">
						<li><a href="#">지급어음결재</a></li>
						<li><a href="#">지급어음등록</a></li>
						<li><a href="#">받을어음결재</a></li>
						<li><a href="#">받음어음등록</a></li>
					</ul></li>
				<li><a class="" data-target="#four" data-toggle="collapse"
					href="javascript:;">채무채권관리</a>
					<ul id="four" class="collapse" aria-expanded="false"
						style="height: 0px;">
						<li><a href="#">채권관리</a></li>
						<li><a href="#">채무관리</a></li>
						<li><a href="#">채권채무현황</a></li>
					</ul></li>
				<li><a class="" data-target="#five" data-toggle="collapse"
					href="javascript:;">자금계획관리</a>
					<ul id="five" class="collapse" aria-expanded="false"
						style="height: 0px;"></ul></li>
			</ul>
		</div>
	</div>


</body>
</html>
