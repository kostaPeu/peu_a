<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/shopERP/accounting/js/jquery.js"></script>
<script src="/shopERP/accounting/js/main.js" type="text/javascript"></script>
<script src="/shopERP/accounting/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/shopERP/accounting/css/bootstrap.min.css" rel="stylesheet">
<link href="/shopERP/accounting/css/main.css" rel="stylesheet">

<style type="text/css">
ul li {
	list-style: none;
}
</style>
</head>
<body>
	<div class="wrapper-erp-local-nav">
		<div class="erp-local-nav-title">회계관리</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="./accounting/view/money_check.jsp">재무상태표</a></li>
				<li data-toggle="collapse" href="#one" aria-expanded="false" aria-controls="collapseListGroup"><a>회계기초등록</a>
					<ul id="one" class="collapse" aria-expanded="false">
						<li><a href="./mainTest2.jsp?left=/accounting/view/Accounleft.jsp&contents=/accounting/view/moneyCheck.jsp">기초잔액등록</a></li>
						<li><a href="./mainTest2.jsp?left=/accounting/view/Accounleft.jsp&contents=/accounting/view/card.jsp">신용카드등록</a></li>
						<li><a href="./mainTest2.jsp?left=/accounting/view/Accounleft.jsp&contents=/accounting/view/BackBook.jsp">통장계좌등록</a></li>
						<li><a href="./mainTest2.jsp?left=/accounting/view/Accounleft.jsp&contents=/accounting/view/Project.jsp">프로젝트등록</a></li>
					</ul>
				</li>

				<li><a data-target="#two" data-toggle="collapse">현금거래관리</a>
					<ul id="two" class="collapse">
						<li><a href="inoutMoney.jsp">입출금보고서</a></li>
						<li><a href="inoutCompanyMoney.jsp">거래처로 부터</a></li>
					</ul></li>
				<li><a class="" data-target="#three" data-toggle="collapse"
					href="javascript:;">어음원장관리</a>
					<ul id="three" class="collapse">
						<li><a href="#">어음등록</a></li>
						<li><a href="#">어음결제</a></li>
						<li><a href="#">어음 할인/만기</a></li>
					</ul></li>
				<li><a class="" data-target="#four" data-toggle="collapse"
					href="javascript:;">채무채권관리</a>
					<ul id="four" class="collapse">
						<li><a href="#">채권관리</a></li>
						<li><a href="#">채무관리</a></li>
						<li><a href="#">채권채무현황</a></li>
					</ul></li>
				<li data-toggle="collapse" href="#six" aria-expanded="false" aria-controls="collapseListGroup"><a>전표관리</a>
					<ul id="six" class="collapse">
						<li><a href="#">전표이력조회</a>
						<li><a href="#">매출청구서조회</a>
						<li><a href="#">매입청구서조회</a>
					</ul>				
				</li>
				<li><a class="" data-target="#five" data-toggle="collapse"
					href="javascript:;">자금계획관리</a>
					<ul id="five" class="collapse"></ul></li>
			</ul>
		</div>
	</div>
</body>
</html>
