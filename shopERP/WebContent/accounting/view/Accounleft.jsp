<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/shopERP/js/ajax.js"></script>
</head>
<body>
		<div class="erp-local-nav-title">회계관리</div>
		<div class="erp-local-nav">
			<ul class="local">
				<li><a href="#">재무상태표</a></li>
				<li><a data-toggle="collapse" href="./accounting/view/basic/moneyCheck.jsp #one">회계기초등록</a>
					<ul id="one" class="collapse">
						<li><a href="./accounting/view/basic/moneyCheck.jsp">기초잔액등록</a></li>
						<li><a href="cardList.ac">신용카드등록</a></li>
						<li><a href="accountList.ac">통장계좌등록</a></li>
						<li><a href="./accounting/view/basic/Project.jsp">프로젝트등록</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse" href="./accounting/view/MoneyManagement/inoutMoney.jsp #two">현금거래관리</a>
					<ul id="two" class="collapse">
						<li><a href="./accounting/view/MoneyManagement/inoutMoney.jsp">입출금보고서</a></li>
						<li><a href="./accounting/view/MoneyManagement/inoutCompanyMoney.jsp">거래처로부터</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse" href="./accounting/view/Promissory/promissory_note.jsp #three">어음원장관리</a>
					<ul id="three" class="collapse">
						<li><a href="./accounting/view/Promissory/promissory_note.jsp">어음등록</a></li>
						<li><a href="./accounting/view/Promissory/promissory_notePayment.jsp">어음결제</a></li>
						<li><a href="#">어음 할인/만기</a></li>
					</ul></li>
				<li><a data-toggle="collapse" href="#four">채무채권관리</a>
					<ul id="four" class="collapse">
						<li><a href="#">채권관리</a></li>
						<li><a href="#">채무관리</a></li>
						<li><a href="#">채권채무현황</a></li>
					</ul></li>
				<li><a data-toggle="collapse" href="./accounting/view/MoneyPlan/MoneyPlan_Add.jsp #five">자금계획관리</a>
					<ul id="five" class="collapse">
						<li><a href="./accounting/view/MoneyPlan/MoneyPlan_Add.jsp">자금계획등록</a></li>
						<li><a href="listMoneyPlan.ac">자금계획현금조회</a></li>
						<li><a href="./accounting/view/MoneyPlan_promissory_view.jsp">자금계획전표조회</a></li>
						<li><a href="./accounting/view/MoneyPlan_calendar.jsp">자금증감계획일정표</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse" href="./accounting/view/Statement_List.jsp #six">전표관리</a>
					<ul id="six" class="collapse">
						<li><a href="./accounting/view/Statement/Statement_List.jsp">전표이력조회</a>
						<li><a href="./accounting/view/Statement/Statement_salesList.jsp">매출청구서조회</a>
						<li><a href="./accounting/view/Statement/Statement_expenseList.jsp">매입청구서조회</a>
					</ul></li>
			</ul>
		</div>
</body>
</html>
